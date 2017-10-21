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
import 'view.dart';
import 'package:angular2/src/core/reflection/reflection.dart' as _ngRef;
import 'package:angular2/src/core/change_detection/change_detection.dart' show ChangeDetectorRef, ChangeDetectionStrategy, ChangeDetectorState;
import 'package:angular2/src/core/di.dart' show Injector;
import 'package:angular2/src/core/render/api.dart' show Renderer, RenderComponentType;
import 'package:angular2/src/facade/async.dart' show ObservableWrapper;
import 'package:angular2/src/facade/collection.dart' show Map, StringMapWrapper;
import '../profile/profile.dart' show wtfCreateScope, wtfLeave, WtfScopeFn;
import 'debug_context.dart' show StaticNodeDebugInfo, DebugContext;
import 'element.dart' show AppElement;
import 'element_injector.dart' show ElementInjector;
import 'exceptions.dart' show ExpressionChangedAfterItHasBeenCheckedException, ViewDestroyedException, ViewWrappedException;
import 'view_ref.dart' show ViewRef_;
import 'view_type.dart' show ViewType;
import 'view_utils.dart' show ViewUtils, flattenNestedViewRenderNodes, ensureSlotCount, OnDestroyCallback;
import 'package:angular2/src/core/change_detection/change_detection.template.dart' as i0;
import 'package:angular2/src/core/di.template.dart' as i1;
import 'package:angular2/src/core/render/api.template.dart' as i2;
import 'package:angular2/src/facade/async.template.dart' as i3;
import 'package:angular2/src/facade/collection.template.dart' as i4;
import '../profile/profile.template.dart' as i5;
import 'debug_context.template.dart' as i6;
import 'element.template.dart' as i7;
import 'element_injector.template.dart' as i8;
import 'exceptions.template.dart' as i9;
import 'view_ref.template.dart' as i10;
import 'view_type.template.dart' as i11;
import 'view_utils.template.dart' as i12;
export 'view.dart';

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
}
