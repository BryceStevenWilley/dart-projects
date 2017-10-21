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
import 'ng_form_control.dart';
import 'package:angular2/src/core/reflection/reflection.dart' as _ngRef;
import 'package:angular2/core.dart' show OnChanges, SimpleChange, Directive, Provider, Inject, Optional, Self;
import 'package:angular2/src/facade/async.dart' show EventEmitter, ObservableWrapper;
import 'package:angular2/src/facade/collection.dart' show StringMapWrapper;
import '../model.dart' show Control;
import '../validators.dart' show NG_VALIDATORS, NG_ASYNC_VALIDATORS;
import 'control_value_accessor.dart' show ControlValueAccessor, NG_VALUE_ACCESSOR;
import 'ng_control.dart' show NgControl;
import 'shared.dart' show setUpControl, composeValidators, composeAsyncValidators, isPropertyUpdated, selectValueAccessor;
import 'validators.dart' show ValidatorFn, AsyncValidatorFn;
import 'package:angular2/core.template.dart' as i0;
import 'package:angular2/src/facade/async.template.dart' as i1;
import 'package:angular2/src/facade/collection.template.dart' as i2;
import '../model.template.dart' as i3;
import '../validators.template.dart' as i4;
import 'control_value_accessor.template.dart' as i5;
import 'ng_control.template.dart' as i6;
import 'shared.template.dart' as i7;
import 'validators.template.dart' as i8;
export 'ng_form_control.dart';

var _visited = false;
void initReflector() {
if (_visited) return; _visited = true;
_ngRef.reflector
..registerType(NgFormControl, new _ngRef.ReflectionInfo(
const [],
const [const [List, const Optional(), const Self(), const Inject(NG_VALIDATORS)], const [List, const Optional(), const Self(), const Inject(NG_ASYNC_VALIDATORS)], const [List, const Optional(), const Self(), const Inject(NG_VALUE_ACCESSOR)]],
(List<dynamic> _validators, List<dynamic> _asyncValidators, List<ControlValueAccessor> valueAccessors) => new NgFormControl(_validators, _asyncValidators, valueAccessors),
const [OnChanges])
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
}
