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
library angular2.platform.common_dom.template.dart;

import 'common_dom.dart';
import 'package:angular2/src/core/reflection/reflection.dart' as _ngRef;
import 'package:angular2/src/platform/dom/dom_adapter.template.dart' as i0;
import 'package:angular2/src/platform/dom/dom_renderer.template.dart' as i1;
import 'package:angular2/src/platform/dom/dom_tokens.template.dart' as i2;
import 'package:angular2/src/platform/dom/events/dom_events.template.dart' as i3;
import 'package:angular2/src/platform/dom/events/event_manager.template.dart' as i4;
import 'package:angular2/src/platform/dom/shared_styles_host.template.dart' as i5;
export 'common_dom.dart';
export 'package:angular2/src/platform/dom/dom_adapter.dart' show DOM, setRootDomAdapter, DomAdapter;
export 'package:angular2/src/platform/dom/dom_renderer.dart' show DomRenderer;
export 'package:angular2/src/platform/dom/dom_tokens.dart' show DOCUMENT;
export 'package:angular2/src/platform/dom/events/dom_events.dart' show DomEventsPlugin;
export 'package:angular2/src/platform/dom/events/event_manager.dart' show EVENT_MANAGER_PLUGINS, EventManager, EventManagerPlugin;
export 'package:angular2/src/platform/dom/shared_styles_host.dart' show SharedStylesHost, DomSharedStylesHost;

var _visited = false;
void initReflector() {
if (_visited) return; _visited = true;
i0.initReflector();
i1.initReflector();
i2.initReflector();
i3.initReflector();
i4.initReflector();
i5.initReflector();
}
