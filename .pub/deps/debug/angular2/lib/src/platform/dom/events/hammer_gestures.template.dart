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
import 'hammer_gestures.dart';
import 'package:angular2/src/core/reflection/reflection.dart' as _ngRef;
import 'dart:html';
import 'dart:js' as js;
import 'package:angular2/src/core/di.dart' show Injectable, Inject, OpaqueToken;
import 'package:angular2/src/facade/exceptions.dart' show BaseException;
import './hammer_common.dart';
import 'package:angular2/src/core/di.template.dart' as i0;
import 'package:angular2/src/facade/exceptions.template.dart' as i1;
import './hammer_common.template.dart' as i2;
export 'hammer_gestures.dart';

var _visited = false;
void initReflector() {
if (_visited) return; _visited = true;
_ngRef.reflector
..registerType(HammerGestureConfig, new _ngRef.ReflectionInfo(
const [const Injectable()],
const [],
() => new HammerGestureConfig())
)
..registerType(HammerGesturesPlugin, new _ngRef.ReflectionInfo(
const [const Injectable()],
const [const [HammerGestureConfig, const Inject(HAMMER_GESTURE_CONFIG)]],
(HammerGestureConfig _config) => new HammerGesturesPlugin(_config))
)
;
i0.initReflector();
i1.initReflector();
i2.initReflector();
}
