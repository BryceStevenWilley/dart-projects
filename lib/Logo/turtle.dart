import 'dart:math';

TwoDVector averagePointLocation(List<Line> lines) {
  TwoDVector allSummed = lines.fold(new TwoDVector(0, 0), (v, l) {
    return new TwoDVector(v.x + l.a.x + l.b.x, v.y + l.a.y + l.b.y);
  });
  return new TwoDVector(allSummed.x / (lines.length * 2),
      allSummed.y / (lines.length * 2));
}

class TwoDVector {
  final num x;
  final num y;

  const TwoDVector(this.x, this.y);

  TwoDVector operator +(TwoDVector v) => new TwoDVector(x + v.x, y + v.y);

  TwoDVector operator -(TwoDVector v) => new TwoDVector(x - v.x, y - v.y);
}

class TwoDPoint {
  final num x;
  final num y;

  const TwoDPoint(this.x, this.y);

  TwoDPoint addVec(TwoDVector v) => new TwoDPoint(x + v.x, y + v.y);
  TwoDPoint subVec(TwoDVector v) => new TwoDPoint(x - v.x, y - v.y);
}

class RgbColor {
  final int r, g, b;

  const RgbColor(this.r, this.g, this.b);

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

class FractalInfo {
  final String name;
  final int recursiveCalls;
  final Function toCall;

  const FractalInfo(this.name, this.recursiveCalls, this.toCall);

  int maxDepth([int variantRecursive]) {
    print('Given Recursive: $recursiveCalls');
    print('Variant: $variantRecursive');
    if (recursiveCalls > 1) {
      return (log(150000) / log(recursiveCalls)).floor();
    } else if (recursiveCalls == 1 || variantRecursive == 1) {
      return 18;
    } else {
      return (log(150000) / log(variantRecursive)).floor();
    }
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

  void polygon(int sides, num length) {
    for (int i = 0; i < sides; i++) {
      forward(length);
      turn(2 * PI / sides);
    }
  }

  void star(int sides, num length) {
    for (int i = 0; i < sides; i++) {
      forward(length);
      turn(4 * PI / sides);
    }
  }

  void kochCurve(int depth, num length) {
    const num magicTurn = 1.047197;
    if (depth == 0) {
      // Draw a polygon.
      forward(length);
    } else {
      scale(1 / 3);
      kochCurve(depth - 1, length);
      turn(magicTurn);
      kochCurve(depth - 1, length);
      turn(-(magicTurn) * 2);
      kochCurve(depth - 1, length);
      turn(magicTurn);
      kochCurve(depth - 1, length);
      scale(3);
    }
  }

  void bumpCurve(int depth, int sides, num length) {
    if (depth == 0) {
      forward(length);
    } else {
      scale(1 / 3);
      bumpCurve(depth - 1, sides, length);
      turn(-PI + (2 * PI / sides));
      for (int i = 1; i < sides; i++) {
        bumpCurve(depth - 1, sides, length);
        turn(2 * PI / sides);
      }
      turn(PI);
      bumpCurve(depth - 1, sides, length);
      scale(3);
    }
  }

  void bumpSnowflake(int depth, int sides, num length) {
    for (int i = 0; i < sides; i++) {
      bumpCurve(depth, sides, length);
      turn(2 * PI / sides);
    }
  }

  void polyGasket(int depth, int sides, num length, num scaleRate) {
    if (depth <= 0) {
      polygon(sides, length);
    } else {
      for (int i = 0; i < sides; i++) {
        scale(scaleRate);
        polyGasket(depth - 1, sides, length, scaleRate);
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

  void dragon(int depth, num length, num angle) {
    if (depth <= 0) {
      forward(length);
    } else {
      var hypotenuse = 1 / (2 * cos(angle));
      scale(hypotenuse);
      turn(angle);
      dragon(depth - 1, length, angle.abs());
      turn(-2 * angle);
      dragon(depth - 1, length, -angle.abs());
      turn(angle);
      scale(1 / hypotenuse);
    }
  }

  void cCurve(int depth, num length, num angle) {
    if (depth <= 0) {
      forward(length);
    } else {
      var hypotenuse = 1 / (2 * cos(angle));
      turn(angle);
      scale(hypotenuse);
      cCurve(depth - 1, length, angle);
      turn(-2 * angle);
      cCurve(depth - 1, length, angle);
      scale(1 / hypotenuse);
      turn(angle);
    }
  }
}
