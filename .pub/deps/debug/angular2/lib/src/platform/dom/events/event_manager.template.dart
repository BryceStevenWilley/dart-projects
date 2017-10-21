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
import 'event_manager.dart';
import 'package:angular2/src/core/reflection/reflection.dart' as _ngRef;
import 'package:angular2/src/core/di.dart' show Injectable, Inject, OpaqueToken;
import 'package:angular2/src/core/zone/ng_zone.dart' show NgZone;
import 'package:angular2/src/facade/collection.dart' show ListWrapper;
import 'package:angular2/src/facade/exceptions.dart' show BaseException;
import 'package:angular2/src/core/di.template.dart' as i0;
import 'package:angular2/src/core/zone/ng_zone.template.dart' as i1;
import 'package:angular2/src/facade/collection.template.dart' as i2;
import 'package:angular2/src/facade/exceptions.template.dart' as i3;
export 'event_manager.dart';

var _visited = false;
void initReflector() {
if (_visited) return; _visited = true;
_ngRef.reflector
..registerType(EventManager, new _ngRef.ReflectionInfo(
const [const Injectable()],
const [const [List, const Inject(EVENT_MANAGER_PLUGINS)], const [NgZone]],
(List<EventManagerPlugin> plugins, NgZone _zone) => new EventManager(plugins, _zone))
)
;
i0.initReflector();
i1.initReflector();
i2.initReflector();
i3.initReflector();
}
