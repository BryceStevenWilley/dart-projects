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
import 'i18n_html_parser.dart';
import 'package:angular2/src/core/reflection/reflection.dart' as _ngRef;
import 'package:angular2/src/compiler/expression_parser/parser.dart' show Parser;
import 'package:angular2/src/compiler/html_ast.dart' show HtmlAst, HtmlAstVisitor, HtmlElementAst, HtmlAttrAst, HtmlTextAst, HtmlCommentAst, HtmlExpansionAst, HtmlExpansionCaseAst, htmlVisitAll;
import 'package:angular2/src/compiler/html_parser.dart' show HtmlParser, HtmlParseTreeResult;
import 'package:angular2/src/compiler/parse_util.dart' show ParseSourceSpan, ParseError;
import 'package:angular2/src/facade/collection.dart' show ListWrapper, StringMapWrapper;
import 'package:angular2/src/facade/exceptions.dart' show BaseException;
import 'package:angular2/src/facade/lang.dart' show RegExpWrapper, NumberWrapper, isPresent;
import 'expander.dart' show expandNodes;
import 'message.dart' show id;
import 'shared.dart' show messageFromAttribute, I18nError, I18N_ATTR_PREFIX, I18N_ATTR, partition, Part, getPhNameFromBinding, dedupePhName;
import 'package:angular2/src/compiler/expression_parser/parser.template.dart' as i0;
import 'package:angular2/src/compiler/html_ast.template.dart' as i1;
import 'package:angular2/src/compiler/html_parser.template.dart' as i2;
import 'package:angular2/src/compiler/parse_util.template.dart' as i3;
import 'package:angular2/src/facade/collection.template.dart' as i4;
import 'package:angular2/src/facade/exceptions.template.dart' as i5;
import 'package:angular2/src/facade/lang.template.dart' as i6;
import 'expander.template.dart' as i7;
import 'message.template.dart' as i8;
import 'shared.template.dart' as i9;
export 'i18n_html_parser.dart';

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
i8.initReflector();
i9.initReflector();
}
