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
import 'internal.dart';
import 'package:angular2/src/core/reflection/reflection.dart' as _ngRef;
import 'dart:async';
import 'package:angular2/core.dart' show PLATFORM_INITIALIZER;
import 'package:angular2/platform/testing/browser.dart';
import 'package:angular2/src/core/di/provider.dart' show provide, Provider;
import 'package:angular2/src/core/reflection/reflection.dart';
import 'package:angular2/src/core/zone/ng_zone.dart' show NgZone;
import 'package:angular2/src/platform/dom/dom_adapter.dart' show DOM;
import 'package:test/test.dart';
import 'internal_injector.dart';
import 'package:angular2/core.template.dart' as i0;
import 'package:angular2/platform/testing/browser.template.dart' as i1;
import 'package:angular2/src/core/di/provider.template.dart' as i2;
import 'package:angular2/src/core/reflection/reflection.template.dart' as i3;
import 'package:angular2/src/core/zone/ng_zone.template.dart' as i4;
import 'package:angular2/src/platform/dom/dom_adapter.template.dart' as i5;
import 'internal_injector.template.dart' as i6;
import 'fake_async.template.dart' as i7;
import 'test_component_builder.template.dart' as i8;
import 'utils.template.dart' as i9;
import 'by.template.dart' as i10;
import 'debug_node.template.dart' as i11;
export 'internal.dart';
export 'fake_async.dart';
export 'internal_injector.dart';
export 'test_component_builder.dart';
export 'utils.dart';
export 'by.dart';
export 'debug_node.dart';

var _visited = false;
void initReflector() {
if (_visited) return; _visited = true;
i0.initReflector();
i1.initReflector();
i2.initReflector();
i3.initReflector();
i4.initReflector();
i5.initReflector();
i6.initReflector();
i7.initReflector();
i8.initReflector();
i9.initReflector();
i10.initReflector();
i11.initReflector();
}
