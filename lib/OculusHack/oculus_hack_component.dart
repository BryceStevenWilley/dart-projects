import 'dart:math';
import 'package:angular2/core.dart';

@Component(
    selector: 'oculus-hack',
    templateUrl: 'oculus_hack_component.html',
    styleUrls: const ['oculus_hack_component.css'])
class OculusHackComponent {
  int currentImage = 0;

  // A mapping from the image integer to the actual picture name to display.
  Map<int, String> imageMapping = {
    0: "Capture",
    1: "Capture2",
    2: "Capture3",
    3: "Capture5",
  };

  void leftClick() {
    currentImage = max(0, currentImage - 1);
  }

  void rightClick() {
    currentImage = min(3, currentImage + 1);
  }

  // Returns the path to the currently viewed image in the gallery.
  String getImagePath() => "images/${imageMapping[currentImage]}.PNG";

  // Returns whether or not there are more pictures to the left or right in the
  // gallery.
  bool canGoLeft() => currentImage > 0;
  bool canGoRight() => currentImage < 3;
}
