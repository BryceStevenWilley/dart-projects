import 'package:angular2/core.dart';
import 'package:angular2/router.dart';
import 'package:personal_website/home_component.dart';
import 'package:personal_website/circle_drawer_component.dart';

@Component(
    selector: 'my-app',
    templateUrl: 'app_component.html',
    directives: const [ROUTER_DIRECTIVES])
@RouteConfig(const [
  const Route(
      path: '/home',
      name: 'Home',
      component: HomeComponent,
      useAsDefault: true
  ),
  const Route(
      path: '/web-apps',
      name: "WebApps",
      component: CircleDrawerComponent
  )
])
class AppComponent {}

