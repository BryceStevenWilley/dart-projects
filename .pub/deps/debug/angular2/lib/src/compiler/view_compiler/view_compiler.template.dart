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
import 'view_compiler.dart';
import 'package:angular2/src/core/reflection/reflection.dart' as _ngRef;
import 'package:angular2/src/core/di.dart' show Injectable;
import '../compile_metadata.dart' show CompileDirectiveMetadata, CompilePipeMetadata;
import '../config.dart' show CompilerConfig;
import '../output/output_ast.dart' as o;
import '../template_ast.dart' show TemplateAst;
import 'compile_element.dart' show CompileElement;
import 'compile_view.dart' show CompileView;
import 'view_binder.dart' show bindView;
import 'view_builder.dart' show buildView, finishView, ViewCompileDependency;
import 'package:angular2/src/core/di.template.dart' as i0;
import '../compile_metadata.template.dart' as i1;
import '../config.template.dart' as i2;
import '../output/output_ast.template.dart' as i3;
import '../template_ast.template.dart' as i4;
import 'compile_element.template.dart' as i5;
import 'compile_view.template.dart' as i6;
import 'view_binder.template.dart' as i7;
import 'view_builder.template.dart' as i8;
export 'view_compiler.dart';

var _visited = false;
void initReflector() {
if (_visited) return; _visited = true;
_ngRef.reflector
..registerType(ViewCompiler, new _ngRef.ReflectionInfo(
const [const Injectable()],
const [const [CompilerConfig]],
(CompilerConfig _genConfig) => new ViewCompiler(_genConfig))
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
i8.initReflector();
}
