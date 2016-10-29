import 'dart:math';
import 'package:angular2/core.dart';

@Component(
    selector: 'pic-gallery',
    templateUrl: 'pic_gallery_component.html',
    styleUrls: const ['pic_gallery_component.css']
)
class PicGalleryComponent {
  int currentImage = 0;
  /// A mapping from the image integer to the actual picture name to display.
  @Input()
  Map<int, PicMetadata> imageMapping;

  @Input()
  int imageCount;

  void leftClick() {
    currentImage = max(0, currentImage - 1);
  }

  void rightClick() {
    currentImage = min(imageCount - 1, currentImage + 1);
  }

  /// Returns the path to the currently viewed image in the gallery.
  String getImagePath() => "images/${imageMapping[currentImage].filePath}";

  String getImageAlt() => imageMapping[currentImage].altText;

  /// Returns whether or not there are more pictures to the left or right in the
  /// gallery.
  bool canGoLeft() => currentImage > 0;
  bool canGoRight() => currentImage < imageCount - 1;
}

class PicMetadata {
  final String filePath;
  final String altText;

  const PicMetadata(this.filePath, this.altText);
}