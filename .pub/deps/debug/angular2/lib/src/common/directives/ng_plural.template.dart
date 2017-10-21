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
import 'ng_plural.dart';
import 'package:angular2/src/core/reflection/reflection.dart' as _ngRef;
import 'package:angular2/core.dart' show Directive, ViewContainerRef, TemplateRef, ContentChildren, QueryList, Attribute, AfterContentInit, Input;
import 'package:angular2/src/facade/collection.dart' show Map;
import 'package:angular2/src/facade/lang.dart' show isPresent, NumberWrapper;
import 'ng_switch.dart' show SwitchView;
import 'package:angular2/core.template.dart' as i0;
import 'package:angular2/src/facade/collection.template.dart' as i1;
import 'package:angular2/src/facade/lang.template.dart' as i2;
import 'ng_switch.template.dart' as i3;
export 'ng_plural.dart';

var _visited = false;
void initReflector() {
if (_visited) return; _visited = true;
_ngRef.reflector
..registerType(NgPluralCase, new _ngRef.ReflectionInfo(
const [],
const [const [String, const Attribute("ngPluralCase")], const [TemplateRef], const [ViewContainerRef]],
(String value, TemplateRef template, ViewContainerRef viewContainer) => new NgPluralCase(value, template, viewContainer))
)
..registerType(NgPlural, new _ngRef.ReflectionInfo(
const [],
const [const [NgLocalization]],
(NgLocalization _localization) => new NgPlural(_localization),
const [AfterContentInit])
)
;
i0.initReflector();
i1.initReflector();
i2.initReflector();
i3.initReflector();
}
