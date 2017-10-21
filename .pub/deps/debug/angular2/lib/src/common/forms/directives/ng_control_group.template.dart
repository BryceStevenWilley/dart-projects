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
import 'ng_control_group.dart';
import 'package:angular2/src/core/reflection/reflection.dart' as _ngRef;
import 'package:angular2/core.dart' show OnInit, OnDestroy, Directive, Optional, Inject, Host, SkipSelf, Provider, Self;
import '../model.dart' show ControlGroup;
import '../validators.dart' show NG_VALIDATORS, NG_ASYNC_VALIDATORS;
import 'control_container.dart' show ControlContainer;
import 'form_interface.dart' show Form;
import 'shared.dart' show controlPath, composeValidators, composeAsyncValidators;
import 'validators.dart' show AsyncValidatorFn, ValidatorFn;
import 'package:angular2/core.template.dart' as i0;
import '../model.template.dart' as i1;
import '../validators.template.dart' as i2;
import 'control_container.template.dart' as i3;
import 'form_interface.template.dart' as i4;
import 'shared.template.dart' as i5;
import 'validators.template.dart' as i6;
export 'ng_control_group.dart';

var _visited = false;
void initReflector() {
if (_visited) return; _visited = true;
_ngRef.reflector
..registerType(NgControlGroup, new _ngRef.ReflectionInfo(
const [],
const [const [ControlContainer, const Host(), const SkipSelf()], const [List, const Optional(), const Self(), const Inject(NG_VALIDATORS)], const [List, const Optional(), const Self(), const Inject(NG_ASYNC_VALIDATORS)]],
(ControlContainer parent, List<dynamic> _validators, List<dynamic> _asyncValidators) => new NgControlGroup(parent, _validators, _asyncValidators),
const [OnInit, OnDestroy])
)
;
i0.initReflector();
i1.initReflector();
i2.initReflector();
i3.initReflector();
i4.initReflector();
i5.initReflector();
i6.initReflector();
}
