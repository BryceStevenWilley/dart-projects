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
import 'hash_location_strategy.dart';
import 'package:angular2/src/core/reflection/reflection.dart' as _ngRef;
import 'dart:html' as html;
import 'package:angular2/core.dart' show Injectable, Inject, Optional;
import 'package:angular2/src/facade/lang.dart' show isPresent;
import 'location.dart' show Location;
import 'location_strategy.dart' show LocationStrategy, APP_BASE_HREF;
import 'platform_location.dart' show PlatformLocation;
import 'package:angular2/core.template.dart' as i0;
import 'package:angular2/src/facade/lang.template.dart' as i1;
import 'location.template.dart' as i2;
import 'location_strategy.template.dart' as i3;
import 'platform_location.template.dart' as i4;
export 'hash_location_strategy.dart';

var _visited = false;
void initReflector() {
if (_visited) return; _visited = true;
_ngRef.reflector
..registerType(HashLocationStrategy, new _ngRef.ReflectionInfo(
const [const Injectable()],
const [const [PlatformLocation], const [String, const Optional(), const Inject(APP_BASE_HREF)]],
(PlatformLocation _platformLocation, String _baseHref) => new HashLocationStrategy(_platformLocation, _baseHref))
)
;
i0.initReflector();
i1.initReflector();
i2.initReflector();
i3.initReflector();
i4.initReflector();
}
