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
import 'component_factory.dart';
import 'package:angular2/src/core/reflection/reflection.dart' as _ngRef;
import 'package:angular2/src/core/di.dart' show Injector;
import 'package:angular2/src/core/reflection/reflection.dart' show reflector;
import '../change_detection/change_detection.dart' show ChangeDetectorRef;
import 'element.dart' show AppElement;
import 'element_ref.dart' show ElementRef;
import 'view_ref.dart' show ViewRef;
import 'view_utils.dart' show OnDestroyCallback, ViewUtils;
import 'package:angular2/src/core/di.template.dart' as i0;
import 'package:angular2/src/core/reflection/reflection.template.dart' as i1;
import '../change_detection/change_detection.template.dart' as i2;
import 'element.template.dart' as i3;
import 'element_ref.template.dart' as i4;
import 'view_ref.template.dart' as i5;
import 'view_utils.template.dart' as i6;
export 'component_factory.dart';

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
}
