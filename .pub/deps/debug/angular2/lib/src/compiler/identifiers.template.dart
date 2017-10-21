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
import 'identifiers.dart';
import 'package:angular2/src/core/reflection/reflection.dart' as _ngRef;
import 'package:angular2/src/core/change_detection/change_detection.dart' show uninitialized, devModeEqual, SimpleChange, ValueUnwrapper, ChangeDetectorRef, ChangeDetectorState, ChangeDetectionStrategy;
import 'package:angular2/src/core/di/injector.dart' show Injector;
import 'package:angular2/src/core/linker.dart' show QueryList;
import 'package:angular2/src/core/linker/debug_context.dart' show StaticNodeDebugInfo, DebugContext;
import 'package:angular2/src/core/linker/element.dart' show AppElement;
import 'package:angular2/src/core/linker/element_ref.dart' show ElementRef;
import 'package:angular2/src/core/linker/injector_factory.dart' show CodegenInjector, CodegenInjectorFactory;
import 'package:angular2/src/core/linker/template_ref.dart' show TemplateRef, TemplateRef_;
import 'package:angular2/src/core/linker/view.dart' show AppView, DebugAppView;
import 'package:angular2/src/core/linker/view_container_ref.dart' show ViewContainerRef;
import 'package:angular2/src/core/linker/view_type.dart' show ViewType;
import 'package:angular2/src/core/linker/view_utils.dart' show ViewUtils, flattenNestedViewRenderNodes, interpolate, interpolate0, checkBinding, castByValue, EMPTY_ARRAY, EMPTY_MAP, pureProxy1, pureProxy2, pureProxy3, pureProxy4, pureProxy5, pureProxy6, pureProxy7, pureProxy8, pureProxy9, pureProxy10;
import 'package:angular2/src/core/metadata/view.dart' show ViewEncapsulation;
import 'package:angular2/src/core/render/api.dart' show Renderer, RenderComponentType;
import 'package:angular2/src/core/security.dart' show TemplateSecurityContext;
import 'compile_metadata.dart' show CompileIdentifierMetadata, CompileTokenMetadata;
import 'util.dart' show MODULE_SUFFIX;
import 'package:angular2/src/core/change_detection/change_detection.template.dart' as i0;
import 'package:angular2/src/core/di/injector.template.dart' as i1;
import 'package:angular2/src/core/linker.template.dart' as i2;
import 'package:angular2/src/core/linker/debug_context.template.dart' as i3;
import 'package:angular2/src/core/linker/element.template.dart' as i4;
import 'package:angular2/src/core/linker/element_ref.template.dart' as i5;
import 'package:angular2/src/core/linker/injector_factory.template.dart' as i6;
import 'package:angular2/src/core/linker/template_ref.template.dart' as i7;
import 'package:angular2/src/core/linker/view.template.dart' as i8;
import 'package:angular2/src/core/linker/view_container_ref.template.dart' as i9;
import 'package:angular2/src/core/linker/view_type.template.dart' as i10;
import 'package:angular2/src/core/linker/view_utils.template.dart' as i11;
import 'package:angular2/src/core/metadata/view.template.dart' as i12;
import 'package:angular2/src/core/render/api.template.dart' as i13;
import 'package:angular2/src/core/security.template.dart' as i14;
import 'compile_metadata.template.dart' as i15;
import 'util.template.dart' as i16;
export 'identifiers.dart';

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
}
