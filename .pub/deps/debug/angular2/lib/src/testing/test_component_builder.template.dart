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
import 'test_component_builder.dart';
import 'package:angular2/src/core/reflection/reflection.dart' as _ngRef;
import 'dart:async';
import 'package:angular2/compiler.dart' show DirectiveResolver, ViewResolver;
import 'package:angular2/core.dart' show ComponentRef, DynamicComponentLoader, Injector, Injectable, ViewMetadata, ElementRef, ChangeDetectorRef;
import 'package:angular2/src/testing/debug_node.dart' show DebugElement, getDebugNode;
import 'package:angular2/src/core/linker/view_utils.dart';
import 'package:angular2/src/platform/dom/dom_adapter.dart' show DOM;
import 'package:angular2/src/platform/dom/dom_tokens.dart' show DOCUMENT;
import 'fake_async.dart' show tick;
import 'utils.dart' show el;
import 'package:angular2/compiler.template.dart' as i0;
import 'package:angular2/core.template.dart' as i1;
import 'package:angular2/src/testing/debug_node.template.dart' as i2;
import 'package:angular2/src/core/linker/view_utils.template.dart' as i3;
import 'package:angular2/src/platform/dom/dom_adapter.template.dart' as i4;
import 'package:angular2/src/platform/dom/dom_tokens.template.dart' as i5;
import 'fake_async.template.dart' as i6;
import 'utils.template.dart' as i7;
export 'test_component_builder.dart';

var _visited = false;
void initReflector() {
if (_visited) return; _visited = true;
_ngRef.reflector
..registerType(TestComponentBuilder, new _ngRef.ReflectionInfo(
const [const Injectable()],
const [const [Injector]],
(Injector _injector) => new TestComponentBuilder(_injector))
)
;
i0.initReflector();
i1.initReflector();
i2.initReflector();
i3.initReflector();
i4.initReflector();
i5.initReflector();
i6.initReflector();
i7.initReflector();
}
