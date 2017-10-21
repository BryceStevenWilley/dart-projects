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
library angular2.router.router_link_dsl.template.dart;

import 'router_link_dsl.dart';
import 'package:angular2/src/core/reflection/reflection.dart' as _ngRef;
import 'package:angular2/compiler.dart' show TEMPLATE_TRANSFORMS;
import 'package:angular2/core.dart' show Provider;
import 'package:angular2/src/router/directives/router_link_transform.dart' show RouterLinkTransform;
import 'package:angular2/compiler.template.dart' as i0;
import 'package:angular2/core.template.dart' as i1;
import 'package:angular2/src/router/directives/router_link_transform.template.dart' as i2;
export 'router_link_dsl.dart';
export 'package:angular2/src/router/directives/router_link_transform.dart' show RouterLinkTransform;

var _visited = false;
void initReflector() {
if (_visited) return; _visited = true;
i0.initReflector();
i1.initReflector();
i2.initReflector();
}
