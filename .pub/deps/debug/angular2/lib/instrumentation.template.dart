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
library angular2.instrumentation.template.dart;

import 'instrumentation.dart';
import 'package:angular2/src/core/reflection/reflection.dart' as _ngRef;
import 'src/core/profile/profile.template.dart' as i0;
export 'instrumentation.dart';
export 'src/core/profile/profile.dart' show wtfCreateScope, wtfLeave, wtfStartTimeRange, wtfEndTimeRange, WtfScopeFn;

var _visited = false;
void initReflector() {
if (_visited) return; _visited = true;
i0.initReflector();
}
