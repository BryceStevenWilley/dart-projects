import 'dart:typed_data';
import 'package:angular2/core.dart';
import 'dart:html';
import 'package:vector_math/vector_math.dart';
import 'dart:web_gl';
import 'dart:math';
import 'package:personal_website/Webgl/GlProgram.dart';

@Component(selector: 'webgl-component', templateUrl: 'webgl_component.html')
class WebGlComponent implements OnInit {
  CanvasElement canvas;
  RenderingContext rctx;

  Buffer triangleVertexPositionBuffer, squareVertexPositionBuffer;
  Buffer triangleVertexColorBuffer, squareVertexColorBuffer;
  GlProgram program;
  Matrix4 pMatrix, mvMatrix;

  num _scootOffset = 0.0;
  num _rotationTri = 0.0;
  num _rotationSquare = 0.0;
  num _lastTime = 0.0;

  void ngOnInit() {
    mvMatrix = new Matrix4.identity();
    canvas = querySelector("#webgl-demos");
    rctx = canvas.getContext3d();
    _setUpGl();

    animationLoop(0);
  }

  _setUpGl() {
    // Set up the webgl stuff (tutorial from https://github.com/jtmcdole/dart-webgl/, lesson1.dart)
    program = new GlProgram(
        rctx,
        // Vec4 in this frag shader is the rgb color vector
        '''
          precision mediump float;

          varying vec4 vColor;

          void main(void) {
              gl_FragColor = vColor;
          }
        ''',
        '''
          attribute vec3 aVertexPosition;
          attribute vec4 aVertexColor;

          uniform mat4 uMVMatrix;
          uniform mat4 uPMatrix;

          varying vec4 vColor;

          void main(void) {
              gl_Position = uPMatrix * uMVMatrix * vec4(aVertexPosition, 1.0);
              vColor = aVertexColor;
          }
        ''',
        ['aVertexPosition', 'aVertexColor'],
        ['uMVMatrix', 'uPMatrix']);

    rctx.useProgram(program.program);

    // Allocate the buffers we need to draw a triangle and a box.
    triangleVertexPositionBuffer = rctx.createBuffer();
    rctx.bindBuffer(ARRAY_BUFFER, triangleVertexPositionBuffer);
    rctx.bufferData(
        ARRAY_BUFFER,
        new Float32List.fromList(
            [0.0, 1.0, 0.0, -1.0, -1.0, 0.0, 1.0, -1.0, 0.0]),
        STATIC_DRAW);

    triangleVertexColorBuffer = rctx.createBuffer();
    rctx.bindBuffer(ARRAY_BUFFER, triangleVertexColorBuffer);
    rctx.bufferData(
        ARRAY_BUFFER,
        new Float32List.fromList(
            [1.0, 0.0, 0.0, 1.0, 0.0, 1.0, 0.0, 1.0, 0.0, 0.0, 1.0, 1.0]),
        STATIC_DRAW);

    squareVertexPositionBuffer = rctx.createBuffer();
    // Now, the target of calls with ARRAY_BUFFER are the square buffer, not
    // the triangle one above.
    rctx.bindBuffer(ARRAY_BUFFER, squareVertexPositionBuffer);
    rctx.bufferData(
        ARRAY_BUFFER,
        new Float32List.fromList([
          1.0, 1.0, 0.0,
          -1.0, 1.0, 0.0,
          1.0, -1.0, 0.0,
          -1.0, -1.0, 0.0
        ]),
        STATIC_DRAW);

    squareVertexColorBuffer = rctx.createBuffer();
    rctx.bindBuffer(ARRAY_BUFFER, squareVertexColorBuffer);
    rctx.bufferData(
        ARRAY_BUFFER,
        new Float32List.fromList([
          0.5, 0.5, 1.0, 1.0,
          0.1, 0.1, 1.0, 1.0,
          0.9, 0.9, 1.0, 1.0,
          0.5, 0.5, 1.0, 1.0
        ]),
        STATIC_DRAW);

    // The color to clear with, and enable depth testing.
    rctx.clearColor(0.0, 0.0, 0.0, 1.0);
  }

  animationLoop(num time) {
    window.animationFrame.then(animationLoop);
    drawScene(canvas.width, canvas.height, canvas.width / canvas.height);

    // Actually move by adjusting params.
    if (_lastTime != 0) {
      var elapsed = time - _lastTime;
      _scootOffset = 3 * sin((time) / 3000.0);
      _rotationTri = (_rotationTri + ((90 * elapsed) / 1000.0)) % 360;
      _rotationSquare = (_rotationSquare + ((75 * elapsed) / 1000.0)) % 360;
    }
    _lastTime = time;
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

    mvPushMatrix();
    mvMatrix.rotateY(radians(_rotationTri));

    rctx.bindBuffer(ARRAY_BUFFER, triangleVertexPositionBuffer);
    rctx.vertexAttribPointer(
        program.attributes['aVertexPosition'], 3, FLOAT, false, 0, 0);

    rctx.bindBuffer(ARRAY_BUFFER, triangleVertexColorBuffer);
    rctx.vertexAttribPointer(
        program.attributes['aVertexColor'], 4, FLOAT, false, 0, 0);
    setMatrixUniforms();
    rctx.drawArrays(TRIANGLES, 0, 3);

    mvPopMatrix();

    mvMatrix.translate(3.0 + _scootOffset, 0.0, 0.0);
    mvMatrix.rotateX(radians(_rotationSquare));

    rctx.bindBuffer(ARRAY_BUFFER, squareVertexPositionBuffer);
    rctx.vertexAttribPointer(
        program.attributes['aVertexPosition'], 3, FLOAT, false, 0, 0);
    rctx.bindBuffer(ARRAY_BUFFER, squareVertexColorBuffer);
    rctx.vertexAttribPointer(
        program.attributes['aVertexColor'], 4, FLOAT, false, 0, 0);
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
    rctx.uniformMatrix4fv(
        program.uniforms['uMVMatrix'], false, mvMatrix.storage);
  }
}
