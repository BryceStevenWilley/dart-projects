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
import 'testability.dart';
import 'package:angular2/src/core/reflection/reflection.dart' as _ngRef;
import 'dart:async';
import 'package:angular2/src/core/di.dart' show Injectable;
import 'package:angular2/src/facade/async.dart' show ObservableWrapper;
import 'package:angular2/src/facade/collection.dart' show MapWrapper;
import 'package:angular2/src/facade/exceptions.dart' show BaseException;
import '../zone/ng_zone.dart' show NgZone;
import 'package:angular2/src/core/di.template.dart' as i0;
import 'package:angular2/src/facade/async.template.dart' as i1;
import 'package:angular2/src/facade/collection.template.dart' as i2;
import 'package:angular2/src/facade/exceptions.template.dart' as i3;
import '../zone/ng_zone.template.dart' as i4;
export 'testability.dart';

var _visited = false;
void initReflector() {
if (_visited) return; _visited = true;
_ngRef.reflector
..registerType(Testability, new _ngRef.ReflectionInfo(
const [const Injectable()],
const [const [NgZone]],
(NgZone _ngZone) => new Testability(_ngZone))
)
..registerType(TestabilityRegistry, new _ngRef.ReflectionInfo(
const [const Injectable()],
const [],
() => new TestabilityRegistry())
)
;
i0.initReflector();
i1.initReflector();
i2.initReflector();
i3.initReflector();
i4.initReflector();
}
