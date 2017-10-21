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
import 'dom_renderer.dart';
import 'package:angular2/src/core/reflection/reflection.dart' as _ngRef;
import 'package:angular2/src/animate/animation_builder.dart' show AnimationBuilder;
import 'package:angular2/src/core/di.dart' show Inject, Injectable;
import 'package:angular2/src/core/metadata.dart' show ViewEncapsulation;
import 'package:angular2/src/core/render/api.dart' show Renderer, RootRenderer, RenderComponentType, RenderDebugInfo;
import 'package:angular2/src/facade/exceptions.dart' show BaseException;
import 'package:angular2/src/facade/lang.dart' show Json;
import 'package:angular2/src/platform/dom/dom_adapter.dart' show DOM;
import 'dom_tokens.dart' show DOCUMENT;
import 'events/event_manager.dart' show EventManager;
import 'shared_styles_host.dart' show DomSharedStylesHost;
import 'util.dart' show camelCaseToDashCase;
import 'package:angular2/src/animate/animation_builder.template.dart' as i0;
import 'package:angular2/src/core/di.template.dart' as i1;
import 'package:angular2/src/core/metadata.template.dart' as i2;
import 'package:angular2/src/core/render/api.template.dart' as i3;
import 'package:angular2/src/facade/exceptions.template.dart' as i4;
import 'package:angular2/src/facade/lang.template.dart' as i5;
import 'package:angular2/src/platform/dom/dom_adapter.template.dart' as i6;
import 'dom_tokens.template.dart' as i7;
import 'events/event_manager.template.dart' as i8;
import 'shared_styles_host.template.dart' as i9;
import 'util.template.dart' as i10;
export 'dom_renderer.dart';

var _visited = false;
void initReflector() {
if (_visited) return; _visited = true;
_ngRef.reflector
..registerType(DomRootRenderer, new _ngRef.ReflectionInfo(
const [const Injectable()],
const [const [dynamic, const Inject(DOCUMENT)], const [EventManager], const [DomSharedStylesHost], const [AnimationBuilder]],
(dynamic document, EventManager eventManager, DomSharedStylesHost sharedStylesHost, AnimationBuilder animate) => new DomRootRenderer(document, eventManager, sharedStylesHost, animate),
const [RootRenderer])
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
