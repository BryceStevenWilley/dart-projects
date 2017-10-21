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
import 'ng_deps_code.dart';
import 'package:angular2/src/core/reflection/reflection.dart' as _ngRef;
import 'package:analyzer/analyzer.dart';
import 'package:angular2/src/transform/common/annotation_matcher.dart';
import 'package:angular2/src/transform/common/model/import_export_model.pb.dart';
import 'package:angular2/src/transform/common/model/ng_deps_model.pb.dart';
import 'package:angular2/src/transform/common/names.dart';
import 'package:barback/barback.dart' show AssetId;
import 'package:path/path.dart' as path;
import 'annotation_code.dart';
import 'import_export_code.dart';
import 'parameter_code.dart';
import 'reflection_info_code.dart';
import 'package:angular2/src/transform/common/annotation_matcher.template.dart' as i0;
import 'package:angular2/src/transform/common/model/import_export_model.pb.template.dart' as i1;
import 'package:angular2/src/transform/common/model/ng_deps_model.pb.template.dart' as i2;
import 'package:angular2/src/transform/common/names.template.dart' as i3;
import 'annotation_code.template.dart' as i4;
import 'import_export_code.template.dart' as i5;
import 'parameter_code.template.dart' as i6;
import 'reflection_info_code.template.dart' as i7;
export 'ng_deps_code.dart';

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
