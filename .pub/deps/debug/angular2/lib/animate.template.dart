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
library angular2.animate.template.dart;

import 'animate.dart';
import 'package:angular2/src/core/reflection/reflection.dart' as _ngRef;
import 'src/animate/animation.template.dart' as i0;
import 'src/animate/animation_builder.template.dart' as i1;
import 'src/animate/browser_details.template.dart' as i2;
import 'src/animate/css_animation_builder.template.dart' as i3;
import 'src/animate/css_animation_options.template.dart' as i4;
export 'animate.dart';
export 'src/animate/animation.dart' show Animation;
export 'src/animate/animation_builder.dart' show AnimationBuilder;
export 'src/animate/browser_details.dart' show BrowserDetails;
export 'src/animate/css_animation_builder.dart' show CssAnimationBuilder;
export 'src/animate/css_animation_options.dart' show CssAnimationOptions;

var _visited = false;
void initReflector() {
if (_visited) return; _visited = true;
i0.initReflector();
i1.initReflector();
i2.initReflector();
i3.initReflector();
i4.initReflector();
}
