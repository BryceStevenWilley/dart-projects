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
import 'style_compiler.dart';
import 'package:angular2/src/core/reflection/reflection.dart' as _ngRef;
import 'package:angular2/src/compiler/shadow_css.dart' show ShadowCss;
import 'package:angular2/src/compiler/url_resolver.dart' show UrlResolver;
import 'package:angular2/src/core/di.dart' show Injectable;
import 'package:angular2/src/core/metadata/view.dart' show ViewEncapsulation;
import 'package:angular2/src/facade/lang.dart' show isPresent;
import 'compile_metadata.dart' show CompileIdentifierMetadata, CompileDirectiveMetadata;
import 'output/output_ast.dart' as o;
import 'style_url_resolver.dart' show extractStyleUrls;
import 'package:angular2/src/compiler/shadow_css.template.dart' as i0;
import 'package:angular2/src/compiler/url_resolver.template.dart' as i1;
import 'package:angular2/src/core/di.template.dart' as i2;
import 'package:angular2/src/core/metadata/view.template.dart' as i3;
import 'package:angular2/src/facade/lang.template.dart' as i4;
import 'compile_metadata.template.dart' as i5;
import 'output/output_ast.template.dart' as i6;
import 'style_url_resolver.template.dart' as i7;
export 'style_compiler.dart';

var _visited = false;
void initReflector() {
if (_visited) return; _visited = true;
_ngRef.reflector
..registerType(StyleCompiler, new _ngRef.ReflectionInfo(
const [const Injectable()],
const [const [UrlResolver]],
(UrlResolver _urlResolver) => new StyleCompiler(_urlResolver))
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
