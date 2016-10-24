import 'dart:math';

TwoDVector averagePointLocation(List<Line> lines) {
  TwoDVector allSummed = lines.fold(new TwoDVector(0, 0), (v, l) {
    return new TwoDVector(v.x + l.a.x + l.b.x, v.y + l.a.y + l.b.y);
  });
  allSummed.x = allSummed.x / (lines.length * 2);
  allSummed.y = allSummed.y / (lines.length * 2);
  return allSummed;
}

class TwoDVector {
  num x;
  num y;

  TwoDVector(this.x, this.y);

  TwoDVector operator +(TwoDVector v) => new TwoDVector(x + v.x, y + v.y);

  TwoDVector operator -(TwoDVector v) => new TwoDVector(x - v.x, y - v.y);
}

class TwoDPoint {
  num x;
  num y;

  TwoDPoint(this.x, this.y);

  TwoDPoint addVec(TwoDVector v) => new TwoDPoint(x + v.x, y + v.y);
  TwoDPoint subVec(TwoDVector v) => new TwoDPoint(x - v.x, y - v.y);
}

class RgbColor {
  int r, g, b;

  RgbColor(this.r, this.g, this.b);

  int toInt() =>
      (0x99 % 0x100) * 0x1000000 +
      (r % 0x100) * 0x10000 +
      (g % 0x100) * 0x100 +
      b % 0x100;
}

class Line {
  TwoDPoint a, b;
  RgbColor c;
  num width;

  Line(this.a, this.b, this.c, this.width);
  Line.simple(this.a, this.b);
}

class TurtleState {
  TwoDPoint _loc;
  num _angle; // radians.

  TurtleState(this._loc, this._angle);

  void turn(num angle) {
    _angle += angle;
  }

  set loc(TwoDPoint n) => _loc = n;

  Line trajectory(num step) {
    return new Line.simple(
        _loc,
        new TwoDPoint(
            _loc.x + cos(_angle) * step, _loc.y + sin(_angle) * step));
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
    _state = new TurtleState(new TwoDPoint(400, 300), 0);
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

  void move(num step) {
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

  void drawPolygon(int sides, num length) {
    for (int i = 0; i < sides; i++) {
      forward(length);
      turn(2 * PI / sides);
    }
  }

  void drawStar(int sides, num length) {
    for (int i = 0; i < sides; i++) {
      forward(length);
      turn(4 * PI / sides);
    }
  }

  void drawKochCurve(int depth, num length) {
    const num magicTurn = 1.047197;
    if (depth == 0) {
      // Draw a polygon.
      forward(length);
      //_mach.forward(length);
    } else {
      scale(1 / 3);
      drawKochCurve(depth - 1, length);
      turn(magicTurn);
      drawKochCurve(depth - 1, length);
      turn(-(magicTurn) * 2);
      drawKochCurve(depth - 1, length);
      turn(magicTurn);
      drawKochCurve(depth - 1, length);
      scale(3);
    }
  }

  void drawBumpCurve(int depth, int sides, num length) {
    if (depth == 0) {
      forward(length);
    } else {
      scale(1 / 3);
      drawBumpCurve(depth - 1, sides, length);
      turn(-PI + (2 * PI / sides));
      for (int i = 1; i < sides; i++) {
        drawBumpCurve(depth - 1, sides, length);
        turn(2 * PI / sides);
      }
      turn(PI);
      drawBumpCurve(depth - 1, sides, length);
      scale(3);
    }
  }

  void drawBumpSnowflake(int depth, int sides, num length) {
    for (int i = 0; i < sides; i++) {
      drawBumpCurve(depth, sides, length);
      turn(2 * PI / sides);
    }
  }

  void drawPolyGasket(int depth, int sides, num length, num scaleRate) {
    if (depth <= 0) {
      drawPolygon(sides, length);
    } else {
      for (int i = 0; i < sides; i++) {
        scale(scaleRate);
        drawPolyGasket(depth - 1, sides, length, scaleRate);
        scale(1 / scaleRate);
        move(length);
        turn(2 * PI / sides);
      }
    }
  }

  void drawDragonX(int depth, num length, num angle) {
    if (depth <= 0) {
      forward(length);
    } else {
      var hypotenuse = 1 / (2 * cos(angle));
      scale(hypotenuse);
      turn(angle);
      drawDragonX(depth - 1, length, angle);
      turn(-2 * angle);
      drawDragonY(depth - 1, length, angle);
      turn(angle);
      scale(1 / hypotenuse);
    }
  }

  void drawDragonY(int depth, num length, num angle) {
    if (depth <= 0) {
      forward(length);
    } else {
      var hypotenuse = 1 / (2 * cos(angle));
      scale(hypotenuse);
      turn(-angle);
      drawDragonX(depth - 1, length, angle);
      turn(2 * angle);
      drawDragonY(depth - 1, length, angle);
      turn(-angle);
      scale(1 / hypotenuse);
    }
  }

  void drawDragon(int depth, num length, num angle) {
    if (depth <= 0) {
      forward(length);
    } else {
      var hypotenuse = 1 / (2 * cos(angle));
      scale(hypotenuse);
      turn(angle);
      drawDragon(depth - 1, length, angle.abs());
      turn(-2 * angle);
      drawDragon(depth - 1, length, -angle.abs());
      turn(angle);
      scale(1 / hypotenuse);
    }
  }

  void drawCCurve(int depth, num length, num angle) {
    if (depth <= 0) {
      forward(length);
    } else {
      var hypotenuse = 1 / (2 * cos(angle));
      turn(angle);
      scale(hypotenuse);
      drawCCurve(depth - 1, length, angle);
      turn(-2 * angle);
      drawCCurve(depth - 1, length, angle);
      scale(1 / hypotenuse);
      turn(angle);
    }
  }
}
