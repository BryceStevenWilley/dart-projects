import 'dart:typed_data';
import 'package:angular2/core.dart';
import 'dart:html';
import 'package:vector_math/vector_math.dart';
import 'dart:web_gl';
import 'package:personal_website/Webgl/GlProgram.dart';

@Component(
    selector: 'webgl-component',
    templateUrl: 'webgl_component.html'
)
class WebGlComponent implements OnInit {
  CanvasElement canvas;
  RenderingContext rctx;

  Buffer triangleVertexPositionBuffer, squareVertexPositionBuffer;
  GlProgram program;
  Matrix4 pMatrix, mvMatrix;

  void ngOnInit() {
    mvMatrix = new Matrix4.identity();
    canvas = querySelector("#webgl-demos");
    rctx = canvas.getContext3d();

    // Set up the webgl stuff (tutorial from https://github.com/jtmcdole/dart-webgl/, lesson1.dart)
    program = new GlProgram(
        rctx,
        // Vec4 in this frag shader is the rgb color vector
        '''
          precision mediump float;

          void main(void) {
              gl_FragColor = vec4(1.0, 1.0, 1.0, 1.0);
          }
        ''',
        '''
          attribute vec3 aVertexPosition;

          uniform mat4 uMVMatrix;
          uniform mat4 uPMatrix;

          void main(void) {
              gl_Position = uPMatrix * uMVMatrix * vec4(aVertexPosition, 1.0);
          }
        ''',
        ['aVertexPosition'],
        ['uMVMatrix', 'uPMatrix']);

    rctx.useProgram(program.program);

    // Allocate the buffers we need to draw a triangle and a box.
    triangleVertexPositionBuffer = rctx.createBuffer();
    rctx.bindBuffer(ARRAY_BUFFER, triangleVertexPositionBuffer);
    rctx.bufferData(ARRAY_BUFFER, new Float32List.fromList([
      0.0, 1.0, 0.0,
      -1.0, -1.0, 0.0,
      1.0, -1.0, 0.0
    ]), STATIC_DRAW);

    squareVertexPositionBuffer = rctx.createBuffer();
    // Now, the target of calls with ARRAY_BUFFER are the square buffer, not
    // the triangle one above.
    rctx.bindBuffer(ARRAY_BUFFER, squareVertexPositionBuffer);
    rctx.bufferData(ARRAY_BUFFER, new Float32List.fromList([
      1.0, 1.0, 0.0,
      -1.0, 1.0, 0.0,
      1.0, -1.0, 0.0,
      -1.0, -1.0, 0.0]), STATIC_DRAW);

    // The color to clear with, and enable depth testing.
    rctx.clearColor(0.0, 0.0, 0.0, 1.0);
    animationLoop(0);
  }

  animationLoop(num time) {
    window.animationFrame.then(animationLoop);
    drawScene(canvas.width, canvas.height, canvas.width / canvas.height);
  }

  drawScene(num viewWidth, num viewHeight, num viewAspect) {
    // Basic Viewport setup and clearing of the screen.
    rctx.viewport(0, 0, viewWidth, viewHeight);
    rctx.clear(COLOR_BUFFER_BIT | DEPTH_BUFFER_BIT);
    rctx.enable(DEPTH_TEST);
    rctx.disable(BLEND); // TODO: figure out what the above just did

    // Setup perspective.
    pMatrix = makePerspectiveMatrix(45.0, viewAspect, 0.1, 100.0);

    // TODO: stash the current model view matrix
    mvPushMatrix();

    mvMatrix.translate(-1.0, 0.0, -7.0);

    rctx.bindBuffer(ARRAY_BUFFER, triangleVertexPositionBuffer);
    rctx.vertexAttribPointer(program.attributes['aVertexPosition'], 3, FLOAT,
        false, 0, 0);
    setMatrixUniforms();
    rctx.drawArrays(TRIANGLES, 0, 3);

    mvMatrix.translate(3.0, 0.0, 0.0);

    rctx.bindBuffer(ARRAY_BUFFER, squareVertexPositionBuffer);
    rctx.vertexAttribPointer(program.attributes['aVertexPosition'], 3, FLOAT,
        false, 0, 0);
    setMatrixUniforms();
    rctx.drawArrays(TRIANGLE_STRIP, 0, 4);

    // Reset matrix;
    mvPopMatrix();
  }

  List<Matrix4> _mvStack = new List();

  mvPushMatrix() => _mvStack.add(new Matrix4.copy(mvMatrix));

  mvPopMatrix() => mvMatrix = _mvStack.removeLast();

  setMatrixUniforms() {
    rctx.uniformMatrix4fv(program.uniforms['uPMatrix'], false, pMatrix.storage);
    rctx.uniformMatrix4fv(program.uniforms['uMVMatrix'], false, mvMatrix.storage);
  }

}