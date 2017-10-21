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
import 'reflective_provider.dart';
import 'package:angular2/src/core/reflection/reflection.dart' as _ngRef;
import 'package:angular2/src/core/reflection/reflection.dart' show reflector;
import '../metadata/di.dart' show InjectorModuleMetadata, ProviderPropertyMetadata;
import 'metadata.dart' show InjectMetadata, OptionalMetadata, SelfMetadata, HostMetadata, SkipSelfMetadata, DependencyMetadata;
import 'provider.dart' show Provider, ProviderBuilder, provide, noValueProvided;
import 'reflective_exceptions.dart' show NoAnnotationError, MixingMultiProvidersWithRegularProvidersError, InvalidProviderError;
import 'reflective_key.dart';
import 'package:angular2/src/core/reflection/reflection.template.dart' as i0;
import '../metadata/di.template.dart' as i1;
import 'metadata.template.dart' as i2;
import 'provider.template.dart' as i3;
import 'reflective_exceptions.template.dart' as i4;
import 'reflective_key.template.dart' as i5;
export 'reflective_provider.dart';

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
