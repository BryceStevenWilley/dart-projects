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
import 'platform_common_providers.dart';
import 'package:angular2/src/core/reflection/reflection.dart' as _ngRef;
import 'package:angular2/src/core/console.dart' show Console;
import 'package:angular2/src/core/di.dart' show Provider;
import 'package:angular2/src/core/testability/testability.dart' show TestabilityRegistry;
import 'application_ref.dart' show PLATFORM_CORE_PROVIDERS;
import 'reflection/reflection.dart' show Reflector, reflector;
import 'reflection/reflector_reader.dart' show ReflectorReader;
import 'package:angular2/src/core/console.template.dart' as i0;
import 'package:angular2/src/core/di.template.dart' as i1;
import 'package:angular2/src/core/testability/testability.template.dart' as i2;
import 'application_ref.template.dart' as i3;
import 'reflection/reflection.template.dart' as i4;
import 'reflection/reflector_reader.template.dart' as i5;
export 'platform_common_providers.dart';

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
