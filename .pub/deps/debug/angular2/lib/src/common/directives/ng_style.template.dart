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
import 'ng_style.dart';
import 'package:angular2/src/core/reflection/reflection.dart' as _ngRef;
import 'package:angular2/core.dart' show DoCheck, KeyValueDiffer, KeyValueDiffers, ElementRef, Directive, Renderer;
import 'package:angular2/src/facade/lang.dart' show isPresent, isBlank;
import '../../core/change_detection/differs/default_keyvalue_differ.dart' show KeyValueChangeRecord;
import 'package:angular2/core.template.dart' as i0;
import 'package:angular2/src/facade/lang.template.dart' as i1;
import '../../core/change_detection/differs/default_keyvalue_differ.template.dart' as i2;
export 'ng_style.dart';

var _visited = false;
void initReflector() {
if (_visited) return; _visited = true;
_ngRef.reflector
..registerType(NgStyle, new _ngRef.ReflectionInfo(
const [],
const [const [KeyValueDiffers], const [ElementRef], const [Renderer]],
(KeyValueDiffers _differs, ElementRef _ngEl, Renderer _renderer) => new NgStyle(_differs, _ngEl, _renderer),
const [DoCheck])
)
;
i0.initReflector();
i1.initReflector();
i2.initReflector();
}
