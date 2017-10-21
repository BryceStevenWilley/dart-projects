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
import 'xmb_serializer.dart';
import 'package:angular2/src/core/reflection/reflection.dart' as _ngRef;
import 'package:angular2/src/compiler/html_ast.dart' show HtmlAst, HtmlElementAst;
import 'package:angular2/src/compiler/html_parser.dart' show HtmlParser;
import 'package:angular2/src/compiler/parse_util.dart' show ParseSourceSpan, ParseError;
import 'package:angular2/src/facade/lang.dart' show isPresent, isBlank, RegExpWrapper;
import 'message.dart' show Message, id;
import 'package:angular2/src/compiler/html_ast.template.dart' as i0;
import 'package:angular2/src/compiler/html_parser.template.dart' as i1;
import 'package:angular2/src/compiler/parse_util.template.dart' as i2;
import 'package:angular2/src/facade/lang.template.dart' as i3;
import 'message.template.dart' as i4;
export 'xmb_serializer.dart';

var _visited = false;
void initReflector() {
if (_visited) return; _visited = true;
i0.initReflector();
i1.initReflector();
i2.initReflector();
i3.initReflector();
i4.initReflector();
}
