import 'package:angular2/core.dart';
import 'package:personal_website/site_header.dart';

@Component(
    selector: 'my-app',
    templateUrl: 'app_component.html',
    directives: const [SiteHeader])
class AppComponent {}

