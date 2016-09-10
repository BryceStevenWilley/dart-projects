import 'package:angular2/core.dart';
import 'dart:html';
import 'dart:math';
import 'package:stagexl/stagexl.dart';


Vector averagePointLocation(List<Line> lines) {
  Vector allSummed = lines.fold(new Vector(0, 0), (v, l) {
    return new Vector(v.x + l.a.x + l.b.x, v.y + l.a.y + l.b.y);
  });
  allSummed.x = allSummed.x / (lines.length * 2);
  allSummed.y = allSummed.y / (lines.length * 2);
  return allSummed;
}

// TODO: make a coordinate converter so things make sense on the canvas.

@Component(
    selector: 'logo-app',
    templateUrl: 'logo_component.html'
)
class LogoComponent implements OnInit {
  CanvasElement canvas;
  Stage stage;
  TurtleMachine _mach;

  String strsides, strlen;

  void ngOnInit() {
    canvas = querySelector("#logoThing");
    stage = new Stage(canvas, width: 800, height: 600);
    var renderLoop = new RenderLoop();
    renderLoop.addStage(stage);
    _mach = new TurtleMachine();
  }

  void drawFromString() {
    //drawPolygon(int.parse(strsides, onError: (src) => 0), 50);
    _resetCanvas();
    drawPolyGasket(int.parse(strsides, onError: (src) => 1), 3,
        int.parse(strlen, onError: (src) => 50), 1/2);
    _displayLines();
  }

  void _resetCanvas() {
    _mach.reset();
    stage.removeChildren();
  }

  void _displayLines() {
    print('${_mach.getLines().length} new lines to draw');

    Vector avgP = averagePointLocation(_mach.getLines());
    Vector desiredP = new Vector(400, 300);

    Vector offset = desiredP - avgP;

    // We want the average point location to be 400, 300
    var lines = new Sprite();
    for (Line l in _mach.getLines()) {
      print('Drawing line from ${l.a.x}, ${l.a.y} to ${l.b.x}, ${l.b.y}');
      lines.graphics.beginPath();
      Point a = l.a.addVec(offset);
      Point b = l.b.addVec(offset);
      lines.graphics.moveTo(a.x, a.y);
      lines.graphics.lineTo(b.x, b.y);
      lines.graphics.strokeColor(l.c.toInt(), l.width);
    }
    stage.addChild(lines);
  }

  void drawPolygon(int sides, num width) {
    //print('Drawing polygon with $sides sides and $width side length');
    // Draw a polygon.
    for (int i = 0; i < sides; i++) {
      _mach.forward(width);
      _mach.turn(2 * PI / sides);
    }
  }

  void drawStar(int sides, num width) {
    for (int i = 0; i < sides; i++) {
      _mach.forward(width);
      _mach.turn(4 * PI / sides);
    }
  }

  void drawKochCurve(int depth, num length) {
    const num magicTurn = 1.047197;
    if (depth == 0) {
      // Draw a polygon.
      _mach.forward(length);
      //_mach.forward(length);
    } else {
      _mach.scale(1/3);
      drawKochCurve(depth - 1, length);
      _mach.turn(magicTurn);
      drawKochCurve(depth - 1, length);
      _mach.turn(-(magicTurn) * 2);
      drawKochCurve(depth - 1, length);
      _mach.turn(magicTurn);
      drawKochCurve(depth - 1, length);
      _mach.scale(3);
    }
  }

  void drawBumpCurve(int depth, int sides, num length) {
    const num magicTurn = 1.047197;
    if (depth == 0) {
      _mach.forward(length);
      //_mach.forward(length);
    } else {
      _mach.scale(1/3);
      drawBumpCurve(depth - 1, sides, length);
      _mach.turn(-PI + (2 * PI / sides));
      for (int i = 1; i < sides; i++) {
        drawBumpCurve(depth - 1, sides, length);
        _mach.turn(2 * PI / sides);
      }
      _mach.turn(PI);
      drawBumpCurve(depth - 1, sides, length);
      _mach.scale(3);
    }
  }

  void drawBumpSnowflake(int depth, int sides, num length) {
    for (int i = 0; i < sides; i++) {
      drawBumpCurve(depth, sides, length);
      _mach.turn(2 * PI / sides);
    }
  }

  void drawPolyGasket(int depth, int sides, num length, num scale) {
    if (depth <= 0) {
      drawPolygon(sides, length);
    } else {
      for (int i = 0; i < sides; i++) {
        _mach.scale(scale);
        drawPolyGasket(depth - 1, sides, length, scale);
        _mach.scale(1 / scale);
        _mach.forward(length);
        _mach.turn(2 * PI / sides);
      }
    }
  }
}

class Vector {
  num x;
  num y;

  Vector(this.x, this.y);

  Vector operator+(Vector v) =>
      new Vector(x + v.x, y + v.y);

  Vector operator-(Vector v) =>
      new Vector(x - v.x, y - v.y);
}

class Point {
  num x;
  num y;

  Point(this.x, this.y);

  Point addVec(Vector v) =>
      new Point(x + v.x, y + v.y);
  Point subVec(Vector v) =>
      new Point(x - v.x, y - v.y);
}

class RgbColor {
  int r, g, b;

  RgbColor(this.r, this.g, this.b);

  int toInt() =>
      (0x99 % 0x100) * 0x1000000 + (r  % 0x100) * 0x10000
      + (g % 0x100) * 0x100 + b % 0x100;
}

class Line {
  Point a, b;
  RgbColor c;
  num width;

  Line(this.a, this.b, this.c, this.width);
  Line.simple(this.a, this.b);
}

class TurtleState {
  Point _loc;
  num _angle; // radians.

  TurtleState(this._loc, this._angle);

  void turn(num angle) {
    _angle += angle;
  }

  set loc(Point n) =>
      _loc = n;

  Line trajectory(num step) {
    return new Line.simple(_loc,
        new Point(
        _loc.x + cos(_angle) * step,
        _loc.y + sin(_angle) * step
    ));
  }
}

class TurtleMachine {
  TurtleState _state;
  List<Line> _trails;
  RgbColor _curColor;
  num _width;
  num _scale;

  TurtleMachine() {
    this.reset();
  }

  List<Line> getLines() {
    return _trails;
  }

  void reset() {
    _state = new TurtleState(new Point(400, 300), 0);
    _trails = [];
    _curColor = new RgbColor(0, 0, 0);
    _width = 1;
    _scale = 1;
  }

  void forward(num step) {
    Line l = _state.trajectory(step * _scale);
    l.c = _curColor;
    l.width = _width;
    _trails.add(l);
    _state.loc = l.b;
  }

  void move(num step){
    _state.loc = _state.trajectory(step * _scale).b;
  }

  void turn(num angle) {
    _state.turn(angle);
  }

  void color(RgbColor c) {
    _curColor = c;
  }

  void lineWidth(num width) {
    _width = width;
  }

  void scale(num newScale) {
    _scale *= newScale;
  }

}