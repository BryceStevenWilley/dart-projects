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
import 'linker.dart';
import 'package:angular2/src/core/reflection/reflection.dart' as _ngRef;
import 'linker/component_factory.template.dart' as i0;
import 'linker/component_resolver.template.dart' as i1;
import 'linker/dynamic_component_loader.template.dart' as i2;
import 'linker/element_ref.template.dart' as i3;
import 'linker/exceptions.template.dart' as i4;
import 'linker/query_list.template.dart' as i5;
import 'linker/template_ref.template.dart' as i6;
import 'linker/view_container_ref.template.dart' as i7;
import 'linker/view_ref.template.dart' as i8;
export 'linker.dart';
export 'linker/component_factory.dart' show ComponentRef, ComponentFactory;
export 'linker/component_resolver.dart' show ComponentResolver;
export 'linker/dynamic_component_loader.dart' show DynamicComponentLoader;
export 'linker/element_ref.dart' show ElementRef;
export 'linker/exceptions.dart' show ExpressionChangedAfterItHasBeenCheckedException;
export 'linker/query_list.dart' show QueryList;
export 'linker/template_ref.dart' show TemplateRef;
export 'linker/view_container_ref.dart' show ViewContainerRef;
export 'linker/view_ref.dart' show EmbeddedViewRef, ViewRef;

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
