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
import 'ng_form.dart';
import 'package:angular2/src/core/reflection/reflection.dart' as _ngRef;
import 'dart:async';
import 'package:angular2/core.dart' show Directive, Provider, Optional, Inject, Self;
import 'package:angular2/src/facade/async.dart' show EventEmitter;
import 'package:angular2/src/facade/collection.dart' show ListWrapper;
import 'package:angular2/src/facade/lang.dart' show isPresent;
import '../model.dart' show AbstractControl, ControlGroup, Control;
import '../validators.dart' show NG_VALIDATORS, NG_ASYNC_VALIDATORS;
import 'control_container.dart' show ControlContainer;
import 'form_interface.dart' show Form;
import 'ng_control.dart' show NgControl;
import 'ng_control_group.dart' show NgControlGroup;
import 'shared.dart' show setUpControl, setUpControlGroup, composeValidators, composeAsyncValidators;
import 'package:angular2/core.template.dart' as i0;
import 'package:angular2/src/facade/async.template.dart' as i1;
import 'package:angular2/src/facade/collection.template.dart' as i2;
import 'package:angular2/src/facade/lang.template.dart' as i3;
import '../model.template.dart' as i4;
import '../validators.template.dart' as i5;
import 'control_container.template.dart' as i6;
import 'form_interface.template.dart' as i7;
import 'ng_control.template.dart' as i8;
import 'ng_control_group.template.dart' as i9;
import 'shared.template.dart' as i10;
export 'ng_form.dart';

var _visited = false;
void initReflector() {
if (_visited) return; _visited = true;
_ngRef.reflector
..registerType(NgForm, new _ngRef.ReflectionInfo(
const [],
const [const [List, const Optional(), const Self(), const Inject(NG_VALIDATORS)], const [List, const Optional(), const Self(), const Inject(NG_ASYNC_VALIDATORS)]],
(List<dynamic> validators, List<dynamic> asyncValidators) => new NgForm(validators, asyncValidators),
const [Form])
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
}
