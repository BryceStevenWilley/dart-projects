// @ignoreProblemForFile always_declare_return_types
// @ignoreProblemForFile annotate_overrides
// @ignoreProblemForFile avoid_init_to_null
// @ignoreProblemForFile camel_case_types
// @ignoreProblemForFile cancel_subscriptions
// @ignoreProblemForFile constant_identifier_names
// @ignoreProblemForFile non_constant_identifier_names
// @ignoreProblemForFile empty_constructor_bodies
// @ignoreProblemForFile implementation_imports
// @ignoreProblemForFile library_prefixes
// @ignoreProblemForFile prefer_is_not_empty
// @ignoreProblemForFile type_annotate_public_apis
// @ignoreProblemForFile DEPRECATED_MEMBER_USE
// @ignoreProblemForFile STRONG_MODE_DOWN_CAST_COMPOSITE
// @ignoreProblemForFile UNUSED_IMPORT
// @ignoreProblemForFile UNUSED_SHOWN_NAME
// @ignoreProblemForFile UNUSED_LOCAL_VARIABLE
library browser_adapter.template.dart;

import 'browser_adapter.dart';
import 'package:angular2/src/core/reflection/reflection.dart' as _ngRef;
import 'dart:html';
import 'package:angular2/platform/common_dom.dart' show setRootDomAdapter;
import 'generic_browser_adapter.dart' show GenericBrowserDomAdapter;
import 'package:angular2/src/facade/browser.dart';
import 'package:js/js.dart';
import 'package:angular2/platform/common_dom.template.dart' as i0;
import 'generic_browser_adapter.template.dart' as i1;
import 'package:angular2/src/facade/browser.template.dart' as i2;
export 'browser_adapter.dart';

var _visited = false;
void initReflector() {
if (_visited) return; _visited = true;
i0.initReflector();
i1.initReflector();
i2.initReflector();
}
