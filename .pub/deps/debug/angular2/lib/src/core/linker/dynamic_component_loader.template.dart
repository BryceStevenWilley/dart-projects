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
import 'dynamic_component_loader.dart';
import 'package:angular2/src/core/reflection/reflection.dart' as _ngRef;
import 'dart:async';
import 'package:angular2/src/core/di.dart' show Injector, Injectable;
import 'component_factory.dart' show ComponentRef;
import 'component_resolver.dart' show ComponentResolver;
import 'view_container_ref.dart' show ViewContainerRef;
import 'view_utils.dart' show OnDestroyCallback;
import 'package:angular2/src/core/di.template.dart' as i0;
import 'component_factory.template.dart' as i1;
import 'component_resolver.template.dart' as i2;
import 'view_container_ref.template.dart' as i3;
import 'view_utils.template.dart' as i4;
export 'dynamic_component_loader.dart';

var _visited = false;
void initReflector() {
if (_visited) return; _visited = true;
_ngRef.reflector
..registerType(DynamicComponentLoader_, new _ngRef.ReflectionInfo(
const [const Injectable()],
const [const [ComponentResolver]],
(ComponentResolver _compiler) => new DynamicComponentLoader_(_compiler))
)
;
i0.initReflector();
i1.initReflector();
i2.initReflector();
i3.initReflector();
i4.initReflector();
}
