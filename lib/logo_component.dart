import 'package:angular2/core.dart';
import 'dart:html';
import 'dart:math';
import 'package:stagexl/stagexl.dart';


// TODO: make a coordinate converter so things make sense on the canvas.


@Component(
    selector: 'logo-app',
    templateUrl: 'logo_component.html'
)
class LogoComponent implements OnInit {

  CanvasElement canvas;
  Stage stage;
  TurtleMachine _mach;

  String strsides;

  void ngOnInit() {
    canvas = querySelector("#logoThing");
    stage = new Stage(canvas, width: 800, height: 600);
    var renderLoop = new RenderLoop();
    renderLoop.addStage(stage);
    _mach = new TurtleMachine();
  }

  void drawFromString() {
    drawPolygon(int.parse(strsides, onError: (src) => 0), 50);
  }

  void drawPolygon(int sides, num width) {
    print('Drawing polygon with $sides sides and $width side length');
    // Reset the canvas.
    _mach.reset();
    stage.removeChildren();

    // Draw a polygon.
    for (int i = 0; i < sides; i++) {
      _mach.forward(width);
      _mach.turn(2 * PI / sides);
    }

    print('${_mach.getLines().length} new lines to draw');

    var lines = new Sprite();
    for (Line l in _mach.getLines()) {
      print('Drawing line from ${l.a.x}, ${l.a.y} to ${l.b.x}, ${l.b.y}');
      lines.graphics.beginPath();
      lines.graphics.moveTo(l.a.x, l.a.y);
      lines.graphics.lineTo(l.b.x, l.b.y);
      lines.graphics.strokeColor(l.c.toInt(), l.width);
    }
    stage.addChild(lines);
  }

  void drawStar(int sides, num width) {

  }
}

class Point {
  num x;
  num y;

  Point(this.x, this.y);
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

}