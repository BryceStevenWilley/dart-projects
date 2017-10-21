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
import 'common_pipes.dart';
import 'package:angular2/src/core/reflection/reflection.dart' as _ngRef;
import 'async_pipe.dart' show AsyncPipe;
import 'date_pipe.dart' show DatePipe;
import 'i18n_plural_pipe.dart' show I18nPluralPipe;
import 'i18n_select_pipe.dart' show I18nSelectPipe;
import 'json_pipe.dart' show JsonPipe;
import 'lowercase_pipe.dart' show LowerCasePipe;
import 'number_pipe.dart' show DecimalPipe, PercentPipe, CurrencyPipe;
import 'replace_pipe.dart' show ReplacePipe;
import 'slice_pipe.dart' show SlicePipe;
import 'uppercase_pipe.dart' show UpperCasePipe;
import 'async_pipe.template.dart' as i0;
import 'date_pipe.template.dart' as i1;
import 'i18n_plural_pipe.template.dart' as i2;
import 'i18n_select_pipe.template.dart' as i3;
import 'json_pipe.template.dart' as i4;
import 'lowercase_pipe.template.dart' as i5;
import 'number_pipe.template.dart' as i6;
import 'replace_pipe.template.dart' as i7;
import 'slice_pipe.template.dart' as i8;
import 'uppercase_pipe.template.dart' as i9;
export 'common_pipes.dart';

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
}
