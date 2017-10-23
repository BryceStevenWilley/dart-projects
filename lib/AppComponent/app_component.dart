import 'package:angular2/core.dart';
import 'package:angular2/router.dart';
import 'package:personal_website/CircleDrawer/circle_drawer_component.dart';
import 'package:personal_website/Logo/logo_component.dart';

@Component(
    selector: 'my-app',
    templateUrl: 'app_component.html',
    styleUrls: const ['app_component.css'],
    directives: const [ROUTER_DIRECTIVES])
@RouteConfig(const [
  const Route(
      path: '/circles', name: 'Circles', component: CircleDrawerComponent, useAsDefault: true),
  const Route(path: '/logo', name: 'Logo', component: LogoComponent),
])
class AppComponent {
  Router router;
  AppComponent(this.router);
}
