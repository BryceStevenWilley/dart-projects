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

  String strDepth = '',
      strLength = '',
      strAngle = '',
      strSides = '',
      strScale = '';

  Function activeFractal;

  Map<Function, String> functions;

  LogoComponent() {
    mach = new TurtleMachine();
    functions = {
      mach.drawPolygon: 'Polygon',
      mach.drawStar: 'Star',
      mach.drawKochCurve: 'Koch Curve',
      mach.drawBumpCurve: 'Bump Curve',
      mach.drawBumpSnowflake: 'Snowflake',
      mach.drawPolyGasket: 'Poly-gasket',
      mach.drawCCurve: 'C-Curve',
      mach.drawDragonX: 'Dragon Curve',
      mach.drawDragon: 'Prototype Dragon',
    };
    activeFractal = mach.drawPolygon;
  }

  void ngOnInit() {
    canvas = querySelector("#logoThing");
    stage = new Stage(canvas, width: 800, height: 600);
    var renderLoop = new RenderLoop();
    renderLoop.addStage(stage);
  }

  bool activeFractalMatches(List<Function> fs) => fs.contains(activeFractal);

  void drawFromString() {
    _resetCanvas();
    if (activeFractal == mach.drawCCurve ||
        activeFractal == mach.drawDragonX ||
        activeFractal == mach.drawDragon) {
      activeFractal(
          int.parse(strDepth, onError: (_) => 5),
          num.parse(strLength, (_) => 50.0),
          num.parse(strAngle, (_) => PI / 4));
    } else if (activeFractal == mach.drawKochCurve) {
      activeFractal(int.parse(strDepth, onError: (_) => 5),
          num.parse(strLength, (_) => 50.0));
    } else if (activeFractal == mach.drawBumpCurve ||
        activeFractal == mach.drawBumpSnowflake) {
      activeFractal(
          int.parse(strDepth, onError: (_) => 5),
          int.parse(strSides, onError: (src) => 3),
          num.parse(strLength, (_) => 50.0));
    } else if (activeFractal == mach.drawPolygon ||
        activeFractal == mach.drawStar) {
      activeFractal(int.parse(strSides, onError: (_) => 5),
          num.parse(strLength, (_) => 50.0));
    } else if (activeFractal == mach.drawPolyGasket) {
      activeFractal(
          int.parse(strDepth, onError: (_) => 5),
          int.parse(strSides, onError: (_) => 5),
          num.parse(strLength, (_) => 50),
          num.parse(strScale, (_) => .5));
    }
    _displayLines();
  }

  void _resetCanvas() {
    mach.reset();
    stage.removeChildren();
  }

  void _displayLines() {
    print('${mach.getLines().length} new lines to draw');

    TwoDVector avgP = averagePointLocation(mach.getLines());
    TwoDVector desiredP = new TwoDVector(400, 300);

    TwoDVector offset = desiredP - avgP;

    // We want the average point location to be 400, 300
    var lines = new Sprite();
    for (Line l in mach.getLines()) {
      print('Drawing line from ${l.a.x}, ${l.a.y} to ${l.b.x}, ${l.b.y}');
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
