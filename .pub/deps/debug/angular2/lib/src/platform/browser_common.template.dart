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
import 'browser_common.dart';
import 'package:angular2/src/core/reflection/reflection.dart' as _ngRef;
import 'package:angular2/src/compiler/xhr.dart' show XHR;
import 'package:angular2/src/security/dom_sanitization_service.dart';
import 'package:angular2/common.dart' show COMMON_DIRECTIVES, COMMON_PIPES, FORM_PROVIDERS;
import 'package:angular2/core.dart' show PLATFORM_INITIALIZER, PLATFORM_DIRECTIVES, PLATFORM_PIPES, ExceptionHandler, RootRenderer, APPLICATION_COMMON_PROVIDERS, PLATFORM_COMMON_PROVIDERS, TestabilityRegistry;
import 'package:angular2/src/animate/animation_builder.dart' show AnimationBuilder;
import 'package:angular2/src/animate/browser_details.dart' show BrowserDetails;
import 'package:angular2/src/core/di.dart' show Provider, OpaqueToken;
import 'package:angular2/src/core/profile/wtf_init.dart' show wtfInit;
import 'package:angular2/src/core/testability/testability.dart' show Testability;
import 'package:angular2/src/platform/browser/testability.dart' show BrowserGetTestability;
import 'package:angular2/src/platform/browser/xhr_cache.dart' show CachedXHR;
import 'package:angular2/src/platform/dom/dom_adapter.dart' show DOM;
import 'package:angular2/src/platform/dom/dom_renderer.dart' show DomRootRenderer;
import 'package:angular2/src/platform/dom/dom_tokens.dart' show DOCUMENT;
import 'package:angular2/src/platform/dom/events/dom_events.dart' show DomEventsPlugin;
import 'package:angular2/src/platform/dom/events/event_manager.dart' show EventManager, EVENT_MANAGER_PLUGINS;
import 'package:angular2/src/platform/dom/events/hammer_gestures.dart' show HammerGesturesPlugin;
import 'package:angular2/src/platform/dom/events/hammer_gestures.dart' show HAMMER_GESTURE_CONFIG, HammerGestureConfig;
import 'package:angular2/src/platform/dom/events/key_events.dart' show KeyEventsPlugin;
import 'package:angular2/src/platform/dom/shared_styles_host.dart' show DomSharedStylesHost;
import 'package:angular2/src/platform/dom/shared_styles_host.dart' show SharedStylesHost;
import 'browser/browser_adapter.dart' show BrowserDomAdapter;
import 'package:angular2/src/compiler/xhr.template.dart' as i0;
import 'package:angular2/src/security/dom_sanitization_service.template.dart' as i1;
import 'package:angular2/common.template.dart' as i2;
import 'package:angular2/core.template.dart' as i3;
import 'package:angular2/src/animate/animation_builder.template.dart' as i4;
import 'package:angular2/src/animate/browser_details.template.dart' as i5;
import 'package:angular2/src/core/di.template.dart' as i6;
import 'package:angular2/src/core/profile/wtf_init.template.dart' as i7;
import 'package:angular2/src/core/testability/testability.template.dart' as i8;
import 'package:angular2/src/platform/browser/testability.template.dart' as i9;
import 'package:angular2/src/platform/browser/xhr_cache.template.dart' as i10;
import 'package:angular2/src/platform/dom/dom_adapter.template.dart' as i11;
import 'package:angular2/src/platform/dom/dom_renderer.template.dart' as i12;
import 'package:angular2/src/platform/dom/dom_tokens.template.dart' as i13;
import 'package:angular2/src/platform/dom/events/dom_events.template.dart' as i14;
import 'package:angular2/src/platform/dom/events/event_manager.template.dart' as i15;
import 'package:angular2/src/platform/dom/events/hammer_gestures.template.dart' as i16;
import 'package:angular2/src/platform/dom/events/key_events.template.dart' as i17;
import 'package:angular2/src/platform/dom/shared_styles_host.template.dart' as i18;
import 'browser/browser_adapter.template.dart' as i19;
import 'package:angular2/src/platform/browser/title.template.dart' as i20;
import 'package:angular2/src/platform/browser/tools/tools.template.dart' as i21;
import 'dom/events/hammer_gestures.template.dart' as i22;
export 'browser_common.dart';
export 'package:angular2/src/platform/browser/title.dart' show Title;
export 'package:angular2/src/platform/browser/tools/tools.dart' show enableDebugTools, disableDebugTools;
export 'package:angular2/src/platform/dom/dom_tokens.dart' show DOCUMENT;
export 'browser/browser_adapter.dart' show BrowserDomAdapter;
export 'dom/events/hammer_gestures.dart' show HAMMER_GESTURE_CONFIG, HammerGestureConfig;

var _visited = false;
void initReflector() {
if (_visited) return; _visited = true;
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
i11.initReflector();
i12.initReflector();
i13.initReflector();
i14.initReflector();
i15.initReflector();
i16.initReflector();
i17.initReflector();
i18.initReflector();
i19.initReflector();
i20.initReflector();
i21.initReflector();
i22.initReflector();
}
