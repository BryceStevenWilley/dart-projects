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
import 'property_binder.dart';
import 'package:angular2/src/core/reflection/reflection.dart' as _ngRef;
import 'package:angular2/src/core/change_detection/constants.dart' show isDefaultChangeDetectionStrategy;
import 'package:angular2/src/core/metadata/lifecycle_hooks.dart' show LifecycleHooks;
import 'package:angular2/src/core/security.dart';
import 'package:angular2/src/facade/lang.dart' show isBlank, isPresent;
import '../expression_parser/ast.dart' as cdAst;
import '../identifiers.dart' show Identifiers;
import '../output/output_ast.dart' as o;
import '../template_ast.dart' show BoundTextAst, BoundElementPropertyAst, DirectiveAst, PropertyBindingType;
import '../util.dart' show camelCaseToDashCase;
import 'expression_converter.dart' show convertCdExpressionToIr;
import 'compile_binding.dart' show CompileBinding;
import 'compile_element.dart' show CompileElement, CompileNode;
import 'compile_method.dart' show CompileMethod;
import 'compile_view.dart' show CompileView;
import 'constants.dart' show DetectChangesVars, ViewProperties;
import 'package:angular2/src/core/change_detection/constants.template.dart' as i0;
import 'package:angular2/src/core/metadata/lifecycle_hooks.template.dart' as i1;
import 'package:angular2/src/core/security.template.dart' as i2;
import 'package:angular2/src/facade/lang.template.dart' as i3;
import '../expression_parser/ast.template.dart' as i4;
import '../identifiers.template.dart' as i5;
import '../output/output_ast.template.dart' as i6;
import '../template_ast.template.dart' as i7;
import '../util.template.dart' as i8;
import 'expression_converter.template.dart' as i9;
import 'compile_binding.template.dart' as i10;
import 'compile_element.template.dart' as i11;
import 'compile_method.template.dart' as i12;
import 'compile_view.template.dart' as i13;
import 'constants.template.dart' as i14;
export 'property_binder.dart';

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
i8.initReflector();
i9.initReflector();
i10.initReflector();
i11.initReflector();
i12.initReflector();
i13.initReflector();
i14.initReflector();
}
