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
import 'reflection_capabilities.dart';
import 'package:angular2/src/core/reflection/reflection.dart' as _ngRef;
import 'dart:mirrors';
import 'package:angular2/src/core/metadata/lifecycle_hooks.dart';
import 'package:angular2/src/facade/lang.dart';
import 'platform_reflection_capabilities.dart';
import 'types.dart';
import 'package:angular2/src/core/metadata/lifecycle_hooks.template.dart' as i0;
import 'package:angular2/src/facade/lang.template.dart' as i1;
import 'platform_reflection_capabilities.template.dart' as i2;
import 'types.template.dart' as i3;
export 'reflection_capabilities.dart';

var _visited = false;
void initReflector() {
if (_visited) return; _visited = true;
i0.initReflector();
i1.initReflector();
i2.initReflector();
i3.initReflector();
}
