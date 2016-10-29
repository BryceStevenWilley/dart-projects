import 'dart:math';
import 'package:angular2/core.dart';
import 'package:personal_website/PicGallery.dart';

@Component(
    selector: 'oculus-hack',
    templateUrl: 'oculus_hack_component.html',
    styleUrls: const ['oculus_hack_component.css'])
class OculusHackComponent {

  PicGallery gallery = new PicGallery(["Capture.PNG", "Capture2.PNG", "Capture3.PNG", "Capture5.PNG"]);
}
