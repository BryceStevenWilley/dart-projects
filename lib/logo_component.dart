import 'package:angular2/core.dart';
import 'dart:html';
import 'dart:math';
import 'package:stagexl/stagexl.dart';
import 'package:personal_website/turtle.dart';

// TODO: make a coordinate converter so things make sense on the canvas.

@Component(
    selector: 'logo-app',
    templateUrl: 'logo_component.html'
)
class LogoComponent implements OnInit {
  CanvasElement canvas;
  Stage stage;
  TurtleMachine mach;

  String strDepth ='',
      strLength = '',
      strAngle = '',
      strSides = '',
      strScale = '';

  Function selectedFunction;

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
    };
    selectedFunction = mach.drawPolygon;
  }

  void ngOnInit() {
    canvas = querySelector("#logoThing");
    stage = new Stage(canvas, width: 800, height: 600);
    var renderLoop = new RenderLoop();
    renderLoop.addStage(stage);
  }

  void drawFromString() {
    _resetCanvas();
    if (selectedFunction == mach.drawCCurve
        || selectedFunction == mach.drawDragonX) {
      selectedFunction(int.parse(strDepth, onError: (_) => 5),
          num.parse(strLength, (_) => 50.0),
          num.parse(strAngle, (_) => PI / 4));
    } else if (selectedFunction == mach.drawKochCurve) {
      selectedFunction(int.parse(strDepth, onError: (_) => 5),
          num.parse(strLength, (_) => 50.0));
    } else if (selectedFunction == mach.drawBumpCurve
        || selectedFunction == mach.drawBumpSnowflake) {
      selectedFunction(int.parse(strDepth, onError: (_) => 5),
          int.parse(strSides, onError: (src) => 3),
          num.parse(strLength, (_) => 50.0));
    } else if (selectedFunction == mach.drawPolygon
        || selectedFunction == mach.drawStar) {
      selectedFunction(int.parse(strSides, onError: (_) => 5),
          num.parse(strLength, (_) => 50.0));
    } else if (selectedFunction == mach.drawPolyGasket) {
      selectedFunction(int.parse(strDepth, onError: (_) => 5),
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
