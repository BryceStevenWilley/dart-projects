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
import 'component_resolver.dart';
import 'package:angular2/src/core/reflection/reflection.dart' as _ngRef;
import 'dart:async';
import 'package:angular2/src/core/di.dart' show Injectable;
import 'package:angular2/src/core/reflection/reflection.dart' show reflector;
import 'package:angular2/src/facade/exceptions.dart' show BaseException;
import 'component_factory.dart' show ComponentFactory;
import 'injector_factory.dart' show CodegenInjectorFactory;
import 'package:angular2/src/core/di.template.dart' as i0;
import 'package:angular2/src/core/reflection/reflection.template.dart' as i1;
import 'package:angular2/src/facade/exceptions.template.dart' as i2;
import 'component_factory.template.dart' as i3;
import 'injector_factory.template.dart' as i4;
export 'component_resolver.dart';

var _visited = false;
void initReflector() {
if (_visited) return; _visited = true;
_ngRef.reflector
..registerType(ReflectorComponentResolver, new _ngRef.ReflectionInfo(
const [const Injectable()],
const [],
() => new ReflectorComponentResolver(),
const [ComponentResolver])
)
;
i0.initReflector();
i1.initReflector();
i2.initReflector();
i3.initReflector();
i4.initReflector();
}
