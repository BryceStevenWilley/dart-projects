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
import 'application_common_providers.dart';
import 'package:angular2/src/core/reflection/reflection.dart' as _ngRef;
import 'package:angular2/src/core/di.dart' show Provider;
import 'application_ref.dart' show APPLICATION_CORE_PROVIDERS;
import 'application_tokens.dart' show APP_ID_RANDOM_PROVIDER;
import 'change_detection/change_detection.dart' show IterableDiffers, defaultIterableDiffers, KeyValueDiffers, defaultKeyValueDiffers;
import 'linker/component_resolver.dart' show ComponentResolver;
import 'linker/component_resolver.dart' show ReflectorComponentResolver;
import 'linker/dynamic_component_loader.dart' show DynamicComponentLoader;
import 'linker/dynamic_component_loader.dart' show DynamicComponentLoader_;
import 'linker/view_utils.dart' show ViewUtils;
import 'package:angular2/src/core/di.template.dart' as i0;
import 'application_ref.template.dart' as i1;
import 'application_tokens.template.dart' as i2;
import 'change_detection/change_detection.template.dart' as i3;
import 'linker/component_resolver.template.dart' as i4;
import 'linker/dynamic_component_loader.template.dart' as i5;
import 'linker/view_utils.template.dart' as i6;
export 'application_common_providers.dart';

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
