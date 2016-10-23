import 'package:personal_website/AppComponent/app_component.dart';
import 'package:angular2/router.dart';
import 'package:angular2/platform/browser.dart';
import 'package:angular2/core.dart';
import 'package:angular2/platform/common.dart';

main() {
  bootstrap(AppComponent, [ROUTER_PROVIDERS, const Provider(LocationStrategy, useClass: HashLocationStrategy)]);
}