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
import 'reflective_injector.dart';
import 'package:angular2/src/core/reflection/reflection.dart' as _ngRef;
import 'package:angular2/src/facade/exceptions.dart' show BaseException;
import 'injector.dart' show Injector, THROW_IF_NOT_FOUND;
import 'metadata.dart' show SelfMetadata, SkipSelfMetadata;
import 'provider.dart' show Provider;
import 'reflective_exceptions.dart' show AbstractProviderError, NoProviderError, CyclicDependencyError, InstantiationError, OutOfBoundsError;
import 'reflective_key.dart' show ReflectiveKey;
import 'reflective_provider.dart' show ResolvedReflectiveProvider, ReflectiveDependency, ResolvedReflectiveFactory, resolveReflectiveProviders;
import 'package:angular2/src/facade/exceptions.template.dart' as i0;
import 'injector.template.dart' as i1;
import 'metadata.template.dart' as i2;
import 'provider.template.dart' as i3;
import 'reflective_exceptions.template.dart' as i4;
import 'reflective_key.template.dart' as i5;
import 'reflective_provider.template.dart' as i6;
export 'reflective_injector.dart';

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
