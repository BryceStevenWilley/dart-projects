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
library angular2.transform.reflection_remover.dart.template.dart;

import 'reflection_remover.dart';
import 'package:angular2/src/core/reflection/reflection.dart' as _ngRef;
import 'dart:async';
import 'package:angular2/src/transform/common/options.dart';
import 'package:angular2/src/transform/common/options_reader.dart';
import 'package:angular2/src/transform/reflection_remover/transformer.dart' as base show ReflectionRemover;
import 'package:barback/barback.dart';
import 'package:angular2/src/transform/common/options.template.dart' as i0;
import 'package:angular2/src/transform/common/options_reader.template.dart' as i1;
import 'package:angular2/src/transform/reflection_remover/transformer.template.dart' as i2;
export 'reflection_remover.dart';

var _visited = false;
void initReflector() {
if (_visited) return; _visited = true;
i0.initReflector();
i1.initReflector();
i2.initReflector();
}
