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
import 'async_pipe.dart';
import 'package:angular2/src/core/reflection/reflection.dart' as _ngRef;
import 'dart:async';
import 'package:angular2/core.dart' show Pipe, Injectable, ChangeDetectorRef, OnDestroy, WrappedValue;
import 'package:angular2/src/facade/async.dart' show ObservableWrapper;
import 'package:angular2/src/facade/lang.dart' show isBlank, isPresent, isPromise;
import 'invalid_pipe_argument_exception.dart' show InvalidPipeArgumentException;
import 'package:angular2/core.template.dart' as i0;
import 'package:angular2/src/facade/async.template.dart' as i1;
import 'package:angular2/src/facade/lang.template.dart' as i2;
import 'invalid_pipe_argument_exception.template.dart' as i3;
export 'async_pipe.dart';

var _visited = false;
void initReflector() {
if (_visited) return; _visited = true;
_ngRef.reflector
..registerType(AsyncPipe, new _ngRef.ReflectionInfo(
const [const Pipe(name: "async", pure: false), const Injectable()],
const [const [ChangeDetectorRef]],
(ChangeDetectorRef _ref) => new AsyncPipe(_ref),
const [OnDestroy])
)
;
i0.initReflector();
i1.initReflector();
i2.initReflector();
i3.initReflector();
}
