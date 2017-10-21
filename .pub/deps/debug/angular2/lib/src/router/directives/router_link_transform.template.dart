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
import 'router_link_transform.dart';
import 'package:angular2/src/core/reflection/reflection.dart' as _ngRef;
import 'package:angular2/compiler.dart' show TemplateAstVisitor, ElementAst, BoundDirectivePropertyAst, BoundElementPropertyAst, DirectiveAst, TemplateAst;
import 'package:angular2/core.dart' show Injectable;
import 'package:angular2/src/compiler/expression_parser/ast.dart' show AstTransformer, Quote, AST, LiteralArray, LiteralPrimitive;
import 'package:angular2/src/compiler/expression_parser/parser.dart' show Parser;
import 'package:angular2/src/facade/exceptions.dart' show BaseException;
import 'package:angular2/compiler.template.dart' as i0;
import 'package:angular2/core.template.dart' as i1;
import 'package:angular2/src/compiler/expression_parser/ast.template.dart' as i2;
import 'package:angular2/src/compiler/expression_parser/parser.template.dart' as i3;
import 'package:angular2/src/facade/exceptions.template.dart' as i4;
export 'router_link_transform.dart';

var _visited = false;
void initReflector() {
if (_visited) return; _visited = true;
_ngRef.reflector
..registerType(RouterLinkTransform, new _ngRef.ReflectionInfo(
const [const Injectable()],
const [const [Parser]],
(Parser parser) => new RouterLinkTransform(parser),
const [TemplateAstVisitor])
)
;
i0.initReflector();
i1.initReflector();
i2.initReflector();
i3.initReflector();
i4.initReflector();
}
