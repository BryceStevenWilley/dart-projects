import 'package:angular2/core.dart';
import 'package:image/image.dart';
import 'package:personal_website/stage_service.dart';
import 'package:stagexl/stagexl.dart';
import 'dart:html';
import 'dart:math';

@Component(
    selector: 'circle-drawer',
    templateUrl: 'circle_drawer_component.html',
    styleUrls: const ['circle_drawer_component.css'])
class CircleDrawerComponent implements OnInit {
  Stage stage;
  CanvasElement canvas;
  CanvasRenderingContext2D ctx;
  var random = new Random();
  var seedGen = new Random();
  int lastSeed = 0;

  int circleCount = 150;
  List<int> maxMins = [0, 255, 0, 255, 0, 255, 0, 255];

  String strcc = '';

  void ngOnInit() {
    canvas = querySelector("#circleDrawer");
    ctx = canvas.getContext('2d');
    stage = new Stage(canvas);
    var renderLoop = new RenderLoop();
    renderLoop.addStage(stage);

    lastSeed = seedGen.nextInt(1000);
    addCircle(lastSeed);
  }

  int parseInt(String numStr, int backUp) =>
      int.parse(numStr, onError: (src) => backUp);

  int _randomNum(int low, int high) => random.nextInt(high - low) + low;

  int _argb(int alpha, int red, int green, int blue) =>
      (alpha % 0x100) * 0x1000000 +
      (red % 0x100) * 0x10000 +
      (green % 0x100) * 0x100 +
      blue % 0x100;

  void updateMaxMin(String possibleVal, int position) {
    maxMins[position] = parseInt(possibleVal, maxMins[position]);
    // Update the pic
    addCircle(lastSeed);
  }

  void addCircle(int seed) {
    random = new Random(seed);
    circleCount = int.parse(strcc, onError: (src) => null) ?? circleCount;

    var rMin = maxMins[0];
    var rMax = maxMins[1];
    var bMin = maxMins[2];
    var bMax = maxMins[3];
    var gMin = maxMins[4];
    var gMax = maxMins[5];
    var aMin = maxMins[6];
    var aMax = maxMins[7];
    stage.removeChildren();
    // draw a bunch of random circles.
    for (var i = 0; i < circleCount; i++) {
      var shape = new Shape();
      shape.graphics.circle(
          random.nextInt(canvas.width), random.nextInt(canvas.height), 60);
      shape.graphics.fillColor(_argb(
          _randomNum(aMin, aMax),
          _randomNum(rMin, rMax),
          _randomNum(gMin, gMax),
          _randomNum(bMin, bMax)));
      stage.addChild(shape);
    }
  }

  void download() {
    CanvasElement canvas = querySelector("#circleDrawer");
    CanvasRenderingContext2D ctx = canvas.getContext('2d');

    var service = new StageService();
    var imageData = ctx.getImageData(0, 0, canvas.width, canvas.height);
    ImageElement elem = service.saveImage(
        new Image.fromBytes(canvas.width, canvas.height, imageData.data));
    window.open('${elem.src}', '_blank');
  }
}
