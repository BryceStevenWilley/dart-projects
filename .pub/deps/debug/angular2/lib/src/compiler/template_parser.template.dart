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
import 'template_parser.dart';
import 'package:angular2/src/core/reflection/reflection.dart' as _ngRef;
import 'package:angular2/core.dart' show Injectable, Inject, OpaqueToken, Optional;
import 'package:angular2/src/compiler/schema/element_schema_registry.dart' show ElementSchemaRegistry;
import 'package:angular2/src/compiler/selector.dart' show CssSelector, SelectorMatcher;
import 'package:angular2/src/core/console.dart' show Console;
import 'package:angular2/src/core/linker/view_utils.dart' show MAX_INTERPOLATION_VALUES;
import 'package:angular2/src/facade/collection.dart' show ListWrapper, StringMapWrapper, SetWrapper;
import 'package:angular2/src/facade/exceptions.dart' show BaseException;
import 'package:angular2/src/facade/lang.dart' show RegExpWrapper, StringWrapper;
import 'compile_metadata.dart' show CompileDirectiveMetadata, CompilePipeMetadata;
import 'expression_parser/ast.dart' show AST, Interpolation, ASTWithSource, TemplateBinding, RecursiveAstVisitor, BindingPipe;
import 'expression_parser/parser.dart' show Parser;
import 'html_ast.dart' show HtmlAstVisitor, HtmlElementAst, HtmlAttrAst, HtmlTextAst, HtmlCommentAst, HtmlExpansionAst, HtmlExpansionCaseAst, htmlVisitAll;
import 'html_parser.dart' show HtmlParser;
import 'html_tags.dart' show splitNsName, mergeNsAndName;
import 'identifiers.dart' show identifierToken, Identifiers;
import 'parse_util.dart' show ParseSourceSpan, ParseError, ParseErrorLevel;
import 'provider_parser.dart' show ProviderElementContext, ProviderViewContext;
import 'style_url_resolver.dart' show isStyleUrlResolvable;
import 'template_ast.dart' show ElementAst, BoundElementPropertyAst, BoundEventAst, ReferenceAst, TemplateAst, TemplateAstVisitor, templateVisitAll, TextAst, BoundTextAst, EmbeddedTemplateAst, AttrAst, NgContentAst, PropertyBindingType, DirectiveAst, BoundDirectivePropertyAst, VariableAst;
import 'template_preparser.dart' show preparseElement, PreparsedElementType;
import '../core/security.dart';
import 'package:angular2/core.template.dart' as i0;
import 'package:angular2/src/compiler/schema/element_schema_registry.template.dart' as i1;
import 'package:angular2/src/compiler/selector.template.dart' as i2;
import 'package:angular2/src/core/console.template.dart' as i3;
import 'package:angular2/src/core/linker/view_utils.template.dart' as i4;
import 'package:angular2/src/facade/collection.template.dart' as i5;
import 'package:angular2/src/facade/exceptions.template.dart' as i6;
import 'package:angular2/src/facade/lang.template.dart' as i7;
import 'compile_metadata.template.dart' as i8;
import 'expression_parser/ast.template.dart' as i9;
import 'expression_parser/parser.template.dart' as i10;
import 'html_ast.template.dart' as i11;
import 'html_parser.template.dart' as i12;
import 'html_tags.template.dart' as i13;
import 'identifiers.template.dart' as i14;
import 'parse_util.template.dart' as i15;
import 'provider_parser.template.dart' as i16;
import 'style_url_resolver.template.dart' as i17;
import 'template_ast.template.dart' as i18;
import 'template_preparser.template.dart' as i19;
import '../core/security.template.dart' as i20;
export 'template_parser.dart';

var _visited = false;
void initReflector() {
if (_visited) return; _visited = true;
_ngRef.reflector
..registerType(TemplateParser, new _ngRef.ReflectionInfo(
const [const Injectable()],
const [const [Parser], const [ElementSchemaRegistry], const [HtmlParser], const [Console], const [List, const Optional(), const Inject(TEMPLATE_TRANSFORMS)]],
(Parser _exprParser, ElementSchemaRegistry _schemaRegistry, HtmlParser _htmlParser, Console _console, List<TemplateAstVisitor> transforms) => new TemplateParser(_exprParser, _schemaRegistry, _htmlParser, _console, transforms))
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
i10.initReflector();
i11.initReflector();
i12.initReflector();
i13.initReflector();
i14.initReflector();
i15.initReflector();
i16.initReflector();
i17.initReflector();
i18.initReflector();
i19.initReflector();
i20.initReflector();
}
