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
import 'select_control_value_accessor.dart';
import 'package:angular2/src/core/reflection/reflection.dart' as _ngRef;
import 'package:angular2/core.dart' show Directive, Renderer, Provider, ElementRef, Input, Host, OnDestroy, Optional;
import 'package:angular2/src/facade/collection.dart' show MapWrapper;
import 'package:angular2/src/facade/lang.dart' show StringWrapper, isPrimitive, isPresent, isBlank, looseIdentical;
import 'control_value_accessor.dart' show NG_VALUE_ACCESSOR, ControlValueAccessor;
import 'package:angular2/core.template.dart' as i0;
import 'package:angular2/src/facade/collection.template.dart' as i1;
import 'package:angular2/src/facade/lang.template.dart' as i2;
import 'control_value_accessor.template.dart' as i3;
export 'select_control_value_accessor.dart';

var _visited = false;
void initReflector() {
if (_visited) return; _visited = true;
_ngRef.reflector
..registerType(SelectControlValueAccessor, new _ngRef.ReflectionInfo(
const [],
const [const [Renderer], const [ElementRef]],
(Renderer _renderer, ElementRef _elementRef) => new SelectControlValueAccessor(_renderer, _elementRef),
const [ControlValueAccessor])
)
..registerType(NgSelectOption, new _ngRef.ReflectionInfo(
const [],
const [const [ElementRef], const [Renderer], const [SelectControlValueAccessor, const Optional(), const Host()]],
(ElementRef _element, Renderer _renderer, SelectControlValueAccessor _select) => new NgSelectOption(_element, _renderer, _select),
const [OnDestroy])
)
;
i0.initReflector();
i1.initReflector();
i2.initReflector();
i3.initReflector();
}
