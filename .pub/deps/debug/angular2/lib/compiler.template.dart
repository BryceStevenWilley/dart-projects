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
library angular2.compiler.template.dart;

import 'compiler.dart';
import 'package:angular2/src/core/reflection/reflection.dart' as _ngRef;
import 'package:angular2/src/compiler/compiler.template.dart' as i0;
import 'package:angular2/src/compiler/template_ast.template.dart' as i1;
export 'compiler.dart';
export 'package:angular2/src/compiler/compiler.dart' show PLATFORM_DIRECTIVES, PLATFORM_PIPES, COMPILER_PROVIDERS, TEMPLATE_TRANSFORMS, CompilerConfig, RenderTypes, UrlResolver, DEFAULT_PACKAGE_URL_PROVIDER, createOfflineCompileUrlResolver, XHR, ViewResolver, DirectiveResolver, PipeResolver, SourceModule, NormalizedComponentWithViewDirectives, OfflineCompiler, CompileMetadataWithIdentifier, CompileMetadataWithType, CompileIdentifierMetadata, CompileDiDependencyMetadata, CompileProviderMetadata, CompileFactoryMetadata, CompileTokenMetadata, CompileTypeMetadata, CompileQueryMetadata, CompileTemplateMetadata, CompileDirectiveMetadata, CompileInjectorModuleMetadata, CompilePipeMetadata;
export 'package:angular2/src/compiler/template_ast.dart';

var _visited = false;
void initReflector() {
if (_visited) return; _visited = true;
i0.initReflector();
i1.initReflector();
}
