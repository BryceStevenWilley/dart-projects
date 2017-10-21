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
import 'compile_metadata.dart';
import 'package:angular2/src/core/reflection/reflection.dart' as _ngRef;
import 'package:angular2/src/compiler/selector.dart' show CssSelector;
import 'package:angular2/src/core/change_detection/change_detection.dart' show ChangeDetectionStrategy, CHANGE_DETECTION_STRATEGY_VALUES;
import 'package:angular2/src/core/metadata/lifecycle_hooks.dart' show LifecycleHooks, LIFECYCLE_HOOKS_VALUES;
import 'package:angular2/src/core/metadata/view.dart' show ViewEncapsulation, VIEW_ENCAPSULATION_VALUES;
import 'package:angular2/src/facade/exceptions.dart' show BaseException;
import 'package:angular2/src/facade/lang.dart' show isPresent, isBlank, isNumber, isBoolean, normalizeBool, isString, RegExpWrapper, isArray;
import 'url_resolver.dart' show getUrlScheme;
import 'util.dart' show splitAtColon, sanitizeIdentifier;
import 'package:angular2/src/compiler/selector.template.dart' as i0;
import 'package:angular2/src/core/change_detection/change_detection.template.dart' as i1;
import 'package:angular2/src/core/metadata/lifecycle_hooks.template.dart' as i2;
import 'package:angular2/src/core/metadata/view.template.dart' as i3;
import 'package:angular2/src/facade/exceptions.template.dart' as i4;
import 'package:angular2/src/facade/lang.template.dart' as i5;
import 'url_resolver.template.dart' as i6;
import 'util.template.dart' as i7;
export 'compile_metadata.dart';

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
}
