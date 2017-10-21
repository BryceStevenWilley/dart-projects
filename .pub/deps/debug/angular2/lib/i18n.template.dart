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
library angular2.i18n.template.dart;

import 'i18n.dart';
import 'package:angular2/src/core/reflection/reflection.dart' as _ngRef;
import 'src/i18n/i18n_html_parser.template.dart' as i0;
import 'src/i18n/message.template.dart' as i1;
import 'src/i18n/message_extractor.template.dart' as i2;
import 'src/i18n/xmb_serializer.template.dart' as i3;
export 'i18n.dart';
export 'src/i18n/i18n_html_parser.dart';
export 'src/i18n/message.dart';
export 'src/i18n/message_extractor.dart';
export 'src/i18n/xmb_serializer.dart';

var _visited = false;
void initReflector() {
if (_visited) return; _visited = true;
i0.initReflector();
i1.initReflector();
i2.initReflector();
i3.initReflector();
}
