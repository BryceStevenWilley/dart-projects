import 'package:angular2/core.dart';
import 'package:image/image.dart';
import 'package:personal_website/stage_service.dart';
import 'package:stagexl/stagexl.dart';
import 'dart:html';
import 'dart:math';

@Component(
    selector: 'circle-drawer',
    templateUrl: 'circle_drawer_component.html'
)
/// TODO: Clean up this implementation.
class CircleDrawerComponent implements OnInit {
  Stage stage;
  CanvasElement canvas;
  CanvasRenderingContext2D ctx;
  var random = new Random();

  int circleCount = 150,
      rMin = 0,
      rMax = 255,
      bMin = 0,
      bMax = 255,
      gMin = 0,
      gMax = 255,
      aMin = 0,
      aMax = 255;

  String strcc = '', strrmin = '', strrmax = '', strbmin = '', strbmax = '', strgmin = '', strgmax = '', stramin = '', stramax = '';

  void ngOnInit() {
    canvas = querySelector("#circleDrawer");
    ctx = canvas.getContext('2d');
    stage = new Stage(canvas);
    var renderLoop = new RenderLoop();
    renderLoop.addStage(stage);

    addCircle();
  }

  get parser => int.parse;

  int _randomNum(int low, int high) => random.nextInt(high - low) + low;

  int _argb(int alpha, int red, int blue, int green) =>
      (alpha % 0x100) * 0x1000000 + (red % 0x100) * 0x10000
          + (green % 0x100) * 0x100 + blue % 0x100;

  void addCircle() {
    circleCount = int.parse(strcc, onError: (src) => null) ?? circleCount;
    rMin = int.parse(strrmin, onError: (src) => null) ?? rMin;
    rMax = int.parse(strrmax, onError: (src) => null) ?? rMax;
    bMin = int.parse(strbmin, onError: (src) => null) ?? bMin;
    bMax = int.parse(strbmax, onError: (src) => null) ?? bMax;
    gMin = int.parse(strgmin, onError: (src) => null) ?? gMin;
    gMax = int.parse(strgmax, onError: (src) => null) ?? gMax;
    aMin = int.parse(stramin, onError: (src) => null) ?? aMin;
    aMax = int.parse(stramax, onError: (src) => null) ?? aMax;

    print('Red: $rMin, $rMax.\nBlue: $bMin, $bMax\nAlpha: $aMin, $aMax');
    stage.removeChildren();
    // draw a bunch of random circles.
    for (var i = 0; i < circleCount; i++) {
      var shape = new Shape();
      shape.graphics.circle(random.nextInt(canvas.width), random.nextInt(canvas.height), 60);
      shape.graphics.fillColor(_argb(
          _randomNum(aMin, aMax), _randomNum(rMin, rMax),
          _randomNum(gMin, gMax),
          _randomNum(bMin, bMax)));
      stage.addChild(shape);
    }
  }

  void download() {
    CanvasElement canvas = querySelector("#circleDrawer");
    CanvasRenderingContext2D ctx = canvas.getContext('2d');

    var serv = new StageService();
    var imageData= ctx.getImageData(0, 0, canvas.width, canvas.height);
    ImageElement elem = serv.saveImage(new Image.fromBytes(canvas.width, canvas.height, imageData.data));
    window.open('${elem.src}', '_blank');
  }

}
