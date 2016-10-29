import 'package:angular2/core.dart';
import 'dart:html';
import 'dart:math';
import 'package:stagexl/stagexl.dart';
import 'package:personal_website/Logo/turtle.dart';

// TODO: make a coordinate converter so things make sense on the canvas.

@Component(
    selector: 'logo-app',
    templateUrl: 'logo_component.html',
    styleUrls: const ['logo_component.css'])
class LogoComponent implements OnInit {
  CanvasElement canvas;
  Stage stage;
  TurtleMachine mach;

  String strAngle = '',
      strSides = '',
      strScale = '';

  num length = 50, scale = .5, angleInDegrees = 45;
  int currentDepth = 1;
  int sides = 5;

  Function activeFractal;
  String activeName;

  Map<String, FractalInfo> functions;

  List<int> allowedSides = new List<int>.generate(12, (i) => i + 1);
  List<int> allowedDepth = new List<int>.generate(18, (i) => i + 1);

  LogoComponent() {
    mach = new TurtleMachine();
    functions = {
      'Polygon': new FractalInfo('Polygon', 1, mach.polygon),
      'Star': new FractalInfo('Star', 1, mach.star),
      'Koch Curve': new FractalInfo('Koch Curve', 4, mach.kochCurve),
      'Bump Curve': new FractalInfo('Bump Curve', -1, mach.bumpCurve),
      'Snowflake': new FractalInfo('Snowflake', -1, mach.bumpSnowflake),
      'Poly-gasket': new FractalInfo('Poly-gasket', -1, mach.polyGasket),
      'C-Curve': new FractalInfo('C-Curve', 2, mach.cCurve),
      'Dragon Curve': new FractalInfo('Dragon Curve', 2, mach.drawDragonX),
      'Prototype Dragon': new FractalInfo('Prototype Dragon', 2, mach.dragon),
    };
    activeFractal = mach.polygon;
    activeName = 'Polygon';
  }

  void ngOnInit() {
    canvas = querySelector("#logoThing");
    stage = new Stage(canvas, width: 800, height: 600);
    var renderLoop = new RenderLoop();
    renderLoop.addStage(stage);
    drawFromString();
  }

  bool activeFractalMatches(List<Function> fs) => fs.contains(activeFractal);

  void updateDepth(int newDepth) {
    currentDepth = newDepth;
    drawFromString();
  }

  void updateCurve(String newCurve) {
    activeName = newCurve;
    activeFractal = functions[activeName].toCall;
    allowedDepth = new List<int>.generate(functions[activeName].maxDepth(sides), (i) => i + 1);
    drawFromString();
  }

  void updateSides(int newSides) {
    sides = newSides;
    allowedDepth = new List<int>.generate(functions[activeName].maxDepth(sides), (i) => i + 1);
    drawFromString();
  }

  void updateLength(String newLength) {
    length = num.parse(newLength, (_) => length);
    drawFromString();
  }

  void updateAngle(String newAngle) {
    angleInDegrees = num.parse(newAngle, (_) => angleInDegrees);
    drawFromString();
  }

  void updateScale(String newScale) {
    scale = num.parse(newScale, (_) => scale);
    drawFromString();
  }

  void drawFromString() {
    _resetCanvas();
    if (activeFractalMatches([mach.cCurve, mach.drawDragonX ,mach.dragon])) {
      activeFractal(currentDepth, length,
          PI / 180 * angleInDegrees);
    } else if (activeFractal == mach.kochCurve) {
      activeFractal(currentDepth, length);
    } else if (activeFractal == mach.bumpCurve ||
        activeFractal == mach.bumpSnowflake) {
      activeFractal(currentDepth, sides, length);
    } else if (activeFractal == mach.polygon ||
        activeFractal == mach.star) {
      activeFractal(sides, length);
    } else if (activeFractal == mach.polyGasket) {
      activeFractal(currentDepth, sides, length, scale);
    }
    _displayLines();
  }

  void _resetCanvas() {
    mach.reset();
    stage.removeChildren();
  }

  void _displayLines() {
    TwoDVector avgP = averagePointLocation(mach.getLines());
    TwoDVector desiredP = new TwoDVector(400, 300);

    TwoDVector offset = desiredP - avgP;

    // We want the average point location to be 400, 300
    var lines = new Sprite();
    for (Line l in mach.getLines()) {
      lines.graphics.beginPath();
      TwoDPoint a = l.a.addVec(offset);
      TwoDPoint b = l.b.addVec(offset);
      lines.graphics.moveTo(a.x, a.y);
      lines.graphics.lineTo(b.x, b.y);
      lines.graphics.strokeColor(l.c.toInt(), l.width);
    }
    stage.addChild(lines);
  }
}
