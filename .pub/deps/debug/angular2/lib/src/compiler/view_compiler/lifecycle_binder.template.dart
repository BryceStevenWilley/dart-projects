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
import 'lifecycle_binder.dart';
import 'package:angular2/src/core/reflection/reflection.dart' as _ngRef;
import 'package:angular2/src/core/metadata/lifecycle_hooks.dart' show LifecycleHooks;
import '../compile_metadata.dart' show CompileDirectiveMetadata, CompilePipeMetadata;
import '../output/output_ast.dart' as o;
import '../template_ast.dart' show DirectiveAst;
import '../identifiers.dart';
import 'compile_element.dart' show CompileElement;
import 'compile_view.dart' show CompileView;
import 'constants.dart' show DetectChangesVars, ChangeDetectorStateEnum;
import 'package:angular2/src/core/metadata/lifecycle_hooks.template.dart' as i0;
import '../compile_metadata.template.dart' as i1;
import '../output/output_ast.template.dart' as i2;
import '../template_ast.template.dart' as i3;
import '../identifiers.template.dart' as i4;
import 'compile_element.template.dart' as i5;
import 'compile_view.template.dart' as i6;
import 'constants.template.dart' as i7;
export 'lifecycle_binder.dart';

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
}
