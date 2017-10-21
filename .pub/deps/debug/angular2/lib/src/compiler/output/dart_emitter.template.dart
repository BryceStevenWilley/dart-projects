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
import 'dart_emitter.dart';
import 'package:angular2/src/core/reflection/reflection.dart' as _ngRef;
import 'package:angular2/src/facade/collection.dart' show ListWrapper;
import 'package:angular2/src/facade/exceptions.dart' show BaseException;
import 'package:angular2/src/facade/lang.dart' show isPresent, isBlank, isArray;
import '../compile_metadata.dart' show CompileIdentifierMetadata;
import 'abstract_emitter.dart' show OutputEmitter, EmitterVisitorContext, AbstractEmitterVisitor, CATCH_ERROR_VAR, CATCH_STACK_VAR;
import 'output_ast.dart' as o;
import 'path_util.dart' show getImportModulePath, ImportEnv;
import 'package:angular2/src/facade/collection.template.dart' as i0;
import 'package:angular2/src/facade/exceptions.template.dart' as i1;
import 'package:angular2/src/facade/lang.template.dart' as i2;
import '../compile_metadata.template.dart' as i3;
import 'abstract_emitter.template.dart' as i4;
import 'output_ast.template.dart' as i5;
import 'path_util.template.dart' as i6;
export 'dart_emitter.dart';

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
}
