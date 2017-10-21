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
library angular2.platform.testing.browser.template.dart;

import 'browser.dart';
import 'package:angular2/src/core/reflection/reflection.dart' as _ngRef;
import 'package:angular2/platform/testing/browser_static.dart' show TEST_BROWSER_STATIC_PLATFORM_PROVIDERS, ADDITIONAL_TEST_BROWSER_PROVIDERS;
import 'package:angular2/platform/browser_static.dart' show BROWSER_APP_PROVIDERS;
import 'package:angular2/platform/testing/browser_static.template.dart' as i0;
import 'package:angular2/platform/browser_static.template.dart' as i1;
import 'package:angular2/src/testing/debug_node.template.dart' as i2;
import 'package:angular2/src/testing/by.template.dart' as i3;
export 'browser.dart';
export 'package:angular2/platform/browser_static.dart' show CACHED_TEMPLATE_PROVIDER;
export 'package:angular2/src/testing/debug_node.dart' show inspectNativeElement, DebugNode, DebugElement;
export 'package:angular2/src/testing/by.dart';

var _visited = false;
void initReflector() {
if (_visited) return; _visited = true;
i0.initReflector();
i1.initReflector();
i2.initReflector();
i3.initReflector();
}
