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
import 'constants.dart';
import 'package:angular2/src/core/reflection/reflection.dart' as _ngRef;
import 'package:angular2/src/core/change_detection/change_detection.dart' show ChangeDetectorState, ChangeDetectionStrategy;
import 'package:angular2/src/core/linker/view_type.dart' show ViewType;
import 'package:angular2/src/core/metadata/view.dart' show ViewEncapsulation;
import 'package:angular2/src/facade/lang.dart' show resolveEnumToken;
import '../compile_metadata.dart' show CompileIdentifierMetadata;
import '../identifiers.dart' show Identifiers;
import '../output/output_ast.dart' as o;
import 'package:angular2/src/core/change_detection/change_detection.template.dart' as i0;
import 'package:angular2/src/core/linker/view_type.template.dart' as i1;
import 'package:angular2/src/core/metadata/view.template.dart' as i2;
import 'package:angular2/src/facade/lang.template.dart' as i3;
import '../compile_metadata.template.dart' as i4;
import '../identifiers.template.dart' as i5;
import '../output/output_ast.template.dart' as i6;
export 'constants.dart';

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
