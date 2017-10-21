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
import 'animation_builder_mock.dart';
import 'package:angular2/src/core/reflection/reflection.dart' as _ngRef;
import 'package:angular2/src/animate/animation.dart' show Animation;
import 'package:angular2/src/animate/animation_builder.dart' show AnimationBuilder;
import 'package:angular2/src/animate/browser_details.dart' show BrowserDetails;
import 'package:angular2/src/animate/css_animation_builder.dart' show CssAnimationBuilder;
import 'package:angular2/src/animate/css_animation_options.dart' show CssAnimationOptions;
import 'package:angular2/src/core/di.dart' show Injectable;
import 'package:angular2/src/animate/animation.template.dart' as i0;
import 'package:angular2/src/animate/animation_builder.template.dart' as i1;
import 'package:angular2/src/animate/browser_details.template.dart' as i2;
import 'package:angular2/src/animate/css_animation_builder.template.dart' as i3;
import 'package:angular2/src/animate/css_animation_options.template.dart' as i4;
import 'package:angular2/src/core/di.template.dart' as i5;
export 'animation_builder_mock.dart';

var _visited = false;
void initReflector() {
if (_visited) return; _visited = true;
_ngRef.reflector
..registerType(MockAnimationBuilder, new _ngRef.ReflectionInfo(
const [const Injectable()],
const [],
() => new MockAnimationBuilder())
)
;
i0.initReflector();
i1.initReflector();
i2.initReflector();
i3.initReflector();
i4.initReflector();
i5.initReflector();
}
