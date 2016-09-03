import 'dart:html' as html;
import 'package:stagexl/stagexl.dart';

import 'package:angular2/platform/browser.dart';

import 'package:personal_website/app_component.dart';
import 'dart:math' as math;

void main() {
  bootstrap(AppComponent);

  var random = new math.Random();

  // setup the Stage and RenderLoop.
  var canvas = html.querySelector('#stage');
  var stage = new Stage(canvas);
  var renderLoop = new RenderLoop();
  renderLoop.addStage(stage);

  var ranges = [stage.bounds.right - stage.bounds.left,
    stage.bounds.top - stage.bounds.bottom];

  // draw a bunch of random circles.
  for (var i = 0; i < 150; i++) {
    var shape = new Shape();
    shape.graphics.circle(random.nextInt(600), random.nextInt(800), 60);
    shape.graphics.fillColor((new ArgbColor(random.nextInt(0xFF), random.nextInt(0xFF), random.nextInt(0xFF), random.nextInt(0xFF)))());
    stage.addChild(shape);
  }
}

/// Made because I don't want to handle raw integers.
/// Note: each given value will be divided by Modulo 0x100 (256) before being
/// turned into a color.
class ArgbColor {
   int alpha, red, green, blue;

   ArgbColor(this.alpha, this.red, this.green, this.blue);

  call() => (alpha % 0x100) * 0x1000000 + (red % 0x100) * 0x10000
      + (green % 0x100) * 0x100 + blue % 0x100;
}
