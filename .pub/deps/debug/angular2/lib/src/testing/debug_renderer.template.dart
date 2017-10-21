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
import 'debug_renderer.dart';
import 'package:angular2/src/core/reflection/reflection.dart' as _ngRef;
import 'package:angular2/src/testing/debug_node.dart' show DebugNode, DebugElement, EventListener, getDebugNode, indexDebugNode, inspectNativeElement, removeDebugNodeFromIndex;
import 'package:angular2/src/animate/animation_builder.dart' show AnimationBuilder;
import 'package:angular2/src/core/di.dart' show Inject, Injectable;
import 'package:angular2/src/core/render/api.dart' show Renderer, RootRenderer, RenderComponentType, RenderDebugInfo;
import '../platform/dom/dom_tokens.dart' show DOCUMENT;
import '../platform/dom/dom_renderer.dart' show DomRenderer, DomRootRenderer;
import '../platform/dom/events/event_manager.dart' show EventManager;
import '../platform/dom/shared_styles_host.dart' show DomSharedStylesHost;
import 'package:angular2/src/platform/dom/dom_adapter.dart' show DOM;
import 'package:angular2/src/testing/debug_node.template.dart' as i0;
import 'package:angular2/src/animate/animation_builder.template.dart' as i1;
import 'package:angular2/src/core/di.template.dart' as i2;
import 'package:angular2/src/core/render/api.template.dart' as i3;
import '../platform/dom/dom_tokens.template.dart' as i4;
import '../platform/dom/dom_renderer.template.dart' as i5;
import '../platform/dom/events/event_manager.template.dart' as i6;
import '../platform/dom/shared_styles_host.template.dart' as i7;
import 'package:angular2/src/platform/dom/dom_adapter.template.dart' as i8;
export 'debug_renderer.dart';

var _visited = false;
void initReflector() {
if (_visited) return; _visited = true;
_ngRef.reflector
..registerType(DebugDomRootRenderer, new _ngRef.ReflectionInfo(
const [const Injectable()],
const [const [dynamic, const Inject(DOCUMENT)], const [EventManager], const [DomSharedStylesHost], const [AnimationBuilder]],
(dynamic document, EventManager eventManager, DomSharedStylesHost sharedStylesHost, AnimationBuilder animate) => new DebugDomRootRenderer(document, eventManager, sharedStylesHost, animate),
const [DomRootRenderer])
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
