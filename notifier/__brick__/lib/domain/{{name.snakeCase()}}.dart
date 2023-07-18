import 'package:flutter_riverpod/flutter_riverpod.dart';
{{#description}}
/*
{{description}}
 */{{/description}}
final {{name.camelCase()}}Provider = StateNotifierProvider<{{name.pascalCase()}}, {{outputValue}}>(
  (ref) => {{name.pascalCase()}}(
     {{#dependencies}}ref.read({{dependencyName.camelCase()}}Provider),{{/dependencies}}
  ),
);

class {{name.pascalCase()}} extends StateNotifier<{{outputValue}}> {
  {{name.pascalCase()}}({{#dependencies}}this.{{dependencyName.camelCase()}},{{/dependencies}}) : super(initial_value);
  {{#dependencies}}final {{dependencyName.pascalCase()}} {{dependencyName.camelCase()}};
  {{/dependencies}}
  {{#methods}}
  @override
  Future<{{type}}> {{methodName}}({{#parameters}}
    {{type}} {{parameterName}},{{/parameters}}
  ) async {
    // TODO: - Implement method
    throw UnimplementedError();
  } {{/methods}}
}
