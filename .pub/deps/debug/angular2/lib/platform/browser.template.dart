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
library angular2.platform.browser.template.dart;

import 'browser.dart';
import 'package:angular2/src/core/reflection/reflection.dart' as _ngRef;
import 'dart:async';
import 'package:angular2/compiler.dart' show COMPILER_PROVIDERS;
import 'package:angular2/compiler.dart' show XHR;
import 'package:angular2/core.dart' show ComponentRef, coreLoadAndBootstrap, reflector, ReflectiveInjector, PlatformRef, getPlatform, createPlatform, assertPlatform;
import 'package:angular2/src/core/di.dart' show Provider;
import 'package:angular2/src/platform/browser/xhr_impl.dart' show XHRImpl;
import 'package:angular2/src/platform/browser_common.dart' show BROWSER_PROVIDERS, BROWSER_APP_COMMON_PROVIDERS, BROWSER_PLATFORM_MARKER;
import 'package:angular2/compiler.template.dart' as i0;
import 'package:angular2/core.template.dart' as i1;
import 'package:angular2/src/core/di.template.dart' as i2;
import 'package:angular2/src/platform/browser/xhr_impl.template.dart' as i3;
import 'package:angular2/src/platform/browser_common.template.dart' as i4;
import 'package:angular2/src/core/security.template.dart' as i5;
import 'package:angular2/src/core/angular_entrypoint.template.dart' as i6;
export 'browser.dart';
export 'package:angular2/src/core/security.dart' show SanitizationService, TemplateSecurityContext;
export 'package:angular2/src/core/angular_entrypoint.dart';
export 'package:angular2/src/platform/browser_common.dart' show BROWSER_PROVIDERS, CACHED_TEMPLATE_PROVIDER, BROWSER_SANITIZATION_PROVIDERS, BrowserDomAdapter, Title, DOCUMENT, enableDebugTools, disableDebugTools;

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
