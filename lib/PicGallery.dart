import 'dart:math';

class PicGallery {
  int currentImage = 0;
  // A mapping from the image integer to the actual picture name to display.
  final Map<int, String> imageMapping;
  final int imageCount;

  PicGallery(final List<String> imagePaths) :
    imageCount = imagePaths.length,
    imageMapping = imagePaths.asMap() {}

  void leftClick() {
    currentImage = max(0, currentImage - 1);
  }

  void rightClick() {
    currentImage = min(imageCount - 1, currentImage + 1);
  }

  // Returns the path to the currently viewed image in the gallery.
  String getImagePath() => "images/${imageMapping[currentImage]}";

  // Returns whether or not there are more pictures to the left or right in the
  // gallery.
  bool canGoLeft() => currentImage > 0;
  bool canGoRight() => currentImage < imageCount - 1;
}