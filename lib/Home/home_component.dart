import 'package:angular2/core.dart';
import 'package:personal_website/PicGallery/pic_gallery_component.dart';

@Component(
    selector: 'home-component',
    templateUrl: 'home_component.html',
    styleUrls: const ["home_component.css"],
    directives: const [PicGalleryComponent])
class HomeComponent {
  List<PicMetadata>  picList =
      [new PicMetadata("Headshot.jpg", ""),
       new PicMetadata("family.jpg", "My signficant other and I, and our two dogs"),
       new PicMetadata("cool_in_NY.jpg", ""),
       new PicMetadata("pandora_pantry_check.jpg", "Winning 2nd place in the 2015 Owl Open Competition"),
       new PicMetadata("cool_dudes.jpg", ""),
       new PicMetadata("little_shop.jpg", "Myself as Seymour in 'Little Shop of Horrors', Rice VADA")];
}
