import 'dart:html';
import 'package:cryptoutils/cryptoutils.dart';
import 'package:angular2/core.dart';
import 'package:image/image.dart';


class StageService {

  // Stage has to be on the app level.
  StageService() {

  }

  ImageElement saveImage(Image image) {
    // Generate a PNG.
    //List<int> png = encodePng(image);
    //new File('test.png')
    //  ..writeAsBytesSync(png);
    var elem = querySelector("#right-here");
    var png = encodePng(image);
    var png64 = CryptoUtils.bytesToBase64(png);
    return new ImageElement(src: 'data:image/png;base64,${png64}', width: image.width, height: image.height);
  }

}
