import 'dart:html' as html;
import 'package:stagexl/stagexl.dart';

import 'package:personal_website/app_component.dart';
import 'package:angular2/router.dart';
import 'package:angular2/platform/browser.dart';
import 'package:angular2/core.dart';
import 'package:angular2/platform/common.dart';

void main() {
  bootstrap(AppComponent, [ROUTER_PROVIDERS, provide(LocationStrategy, useClass: HashLocationStrategy)]);

}

