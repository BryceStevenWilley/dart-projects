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
import 'view_builder.dart';
import 'package:angular2/src/core/reflection/reflection.dart' as _ngRef;
import 'package:angular2/src/core/change_detection/change_detection.dart' show ChangeDetectionStrategy, isDefaultChangeDetectionStrategy;
import 'package:angular2/src/core/linker/view_type.dart' show ViewType;
import 'package:angular2/src/core/metadata/view.dart' show ViewEncapsulation;
import 'package:angular2/src/facade/collection.dart' show ListWrapper, StringMapWrapper, SetWrapper;
import 'package:angular2/src/facade/lang.dart' show isPresent, StringWrapper;
import '../compile_metadata.dart' show CompileIdentifierMetadata, CompileDirectiveMetadata;
import '../identifiers.dart' show Identifiers, identifierToken;
import '../output/output_ast.dart' as o;
import '../template_ast.dart' show TemplateAst, TemplateAstVisitor, NgContentAst, EmbeddedTemplateAst, ElementAst, ReferenceAst, VariableAst, BoundEventAst, BoundElementPropertyAst, AttrAst, BoundTextAst, TextAst, DirectiveAst, BoundDirectivePropertyAst, templateVisitAll;
import 'compile_element.dart' show CompileElement, CompileNode;
import 'compile_view.dart' show CompileView;
import 'constants.dart' show ViewConstructorVars, InjectMethodVars, DetectChangesVars, ViewTypeEnum, ViewEncapsulationEnum, ChangeDetectionStrategyEnum, ViewProperties;
import 'util.dart' show getViewFactoryName, createFlatArray, createDiTokenExpression;
import 'package:angular2/src/core/change_detection/change_detection.template.dart' as i0;
import 'package:angular2/src/core/linker/view_type.template.dart' as i1;
import 'package:angular2/src/core/metadata/view.template.dart' as i2;
import 'package:angular2/src/facade/collection.template.dart' as i3;
import 'package:angular2/src/facade/lang.template.dart' as i4;
import '../compile_metadata.template.dart' as i5;
import '../identifiers.template.dart' as i6;
import '../output/output_ast.template.dart' as i7;
import '../template_ast.template.dart' as i8;
import 'compile_element.template.dart' as i9;
import 'compile_view.template.dart' as i10;
import 'constants.template.dart' as i11;
import 'util.template.dart' as i12;
export 'view_builder.dart';

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
}
