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
import 'view_container_ref.dart';
import 'package:angular2/src/core/reflection/reflection.dart' as _ngRef;
import 'package:angular2/src/core/di/injector.dart' show Injector;
import 'package:angular2/src/facade/collection.dart' show ListWrapper;
import 'package:angular2/src/facade/lang.dart' show isPresent;
import '../profile/profile.dart' show wtfCreateScope, wtfLeave, WtfScopeFn;
import 'component_factory.dart' show ComponentFactory, ComponentRef;
import 'element.dart' show AppElement;
import 'element_ref.dart' show ElementRef;
import 'template_ref.dart' show TemplateRef;
import 'view_ref.dart' show EmbeddedViewRef, ViewRef, ViewRef_;
import 'package:angular2/src/core/di/injector.template.dart' as i0;
import 'package:angular2/src/facade/collection.template.dart' as i1;
import 'package:angular2/src/facade/lang.template.dart' as i2;
import '../profile/profile.template.dart' as i3;
import 'component_factory.template.dart' as i4;
import 'element.template.dart' as i5;
import 'element_ref.template.dart' as i6;
import 'template_ref.template.dart' as i7;
import 'view_ref.template.dart' as i8;
export 'view_container_ref.dart';

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
}
