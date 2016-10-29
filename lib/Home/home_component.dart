import 'package:angular2/core.dart';
import 'package:personal_website/PicGallery.dart';

@Component(
    selector: 'home-component',
    templateUrl: 'home_component.html',
    styleUrls: const ["home_component.css"])
class HomeComponent {
  PicGallery gallery = new PicGallery(["Headshot.jpg", "family.jpg", "cool_in_NY.jpg", "pandora_pantry_check.jpg", "cool_dudes.jpg", "little_shop.jpg"]);
}
