import 'package:hooks_riverpod/hooks_riverpod.dart';
{{#description}}
/*
{{description}}
 */{{/description}}
final {{name.camelCase()}}Provider = StateNotifierProvider<{{name.pascalCase()}}, {{data}}>(
  (ref) => {{name.pascalCase()}}(
     {{#dependencies}}ref.read({{dependencyName.camelCase()}}Provider),{{/dependencies}}
  ),
);

class {{name.pascalCase()}} extends RequestNotifier<void> {
  {{name.pascalCase()}}({{#dependencies}}this.{{dependencyName.camelCase()}},{{/dependencies}});
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
