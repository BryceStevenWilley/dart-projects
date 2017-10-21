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
import 'injector_compiler.dart';
import 'package:angular2/src/core/reflection/reflection.dart' as _ngRef;
import 'package:angular2/core.dart' show Injectable;
import 'package:angular2/src/facade/lang.dart' show isPresent, isBlank;
import '../compile_metadata.dart' show CompileInjectorModuleMetadata, CompileDiDependencyMetadata, CompileTokenMap, CompileProviderMetadata;
import '../identifiers.dart' show Identifiers, identifierToken;
import '../output/output_ast.dart' as o;
import '../parse_util.dart' show ParseSourceSpan, ParseLocation, ParseSourceFile;
import '../provider_parser.dart' show AppProviderParser;
import '../template_ast.dart' show ProviderAst;
import 'constants.dart' show InjectMethodVars;
import 'util.dart' show createDiTokenExpression, convertValueToOutputAst;
import 'package:angular2/core.template.dart' as i0;
import 'package:angular2/src/facade/lang.template.dart' as i1;
import '../compile_metadata.template.dart' as i2;
import '../identifiers.template.dart' as i3;
import '../output/output_ast.template.dart' as i4;
import '../parse_util.template.dart' as i5;
import '../provider_parser.template.dart' as i6;
import '../template_ast.template.dart' as i7;
import 'constants.template.dart' as i8;
import 'util.template.dart' as i9;
export 'injector_compiler.dart';

var _visited = false;
void initReflector() {
if (_visited) return; _visited = true;
_ngRef.reflector
..registerType(InjectorCompiler, new _ngRef.ReflectionInfo(
const [const Injectable()],
const [],
() => new InjectorCompiler())
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
i9.initReflector();
}
