import 'package:hooks_riverpod/hooks_riverpod.dart';

final {{name.camelCase()}}Notifier = StateNotifierProvider<FetchTranslationsNotifier, {{data}}>(
  (ref) => FetchTranslationsNotifier(
     {{#dependencies}}ref.read({{dependencyName.camelCase()}}Provider),{{/dependencies}}
  ),
);

class {{name.pascalCase()}}Notifier extends RequestNotifier<void> {
  {{name.pascalCase()}}Notifier({{#dependencies}}this.{{dependencyName.camelCase()}},{{/dependencies}});
  {{#dependencies}}final {{dependencyName.pascalCase()}} {{dependencyName.camelCase()}};
  {{/dependencies}}
  {{#methods}}
  @override
  Future<{{type}}> {{methodName}}({{#parameters}}
    {{type}} {{parameterName}},{{/parameters}}
  ) async {
    // TODO: - Implement method
  } {{/methods}}
}
