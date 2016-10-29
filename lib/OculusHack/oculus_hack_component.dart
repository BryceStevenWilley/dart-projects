import 'package:angular2/core.dart';
import 'package:personal_website/PicGallery/pic_gallery_component.dart';

@Component(
    selector: 'oculus-hack',
    templateUrl: 'oculus_hack_component.html',
    styleUrls: const ['oculus_hack_component.css'],
    directives: const [PicGalleryComponent])
class OculusHackComponent {

  List<PicMetadata> picList =
    [new PicMetadata("Capture.PNG", "Different varities of trees"),
     new PicMetadata("Capture2.PNG", "Fractal-based rocks (black portions were glitches)"),
     new PicMetadata("Capture3.PNG", "A starry night background"),
     new PicMetadata("Capture5.PNG", "Nice view of the treeline (and better rocks)")];
}
