import 'package:flutter_riverpod/flutter_riverpod.dart';

{{#description}}
/*
{{description}}}
 */
{{/description}}
final {{name.camelCase()}}Provider = Provider<{{name.pascalCase()}}>((ref) {
  return {{name.pascalCase()}}Impl(
      {{#dependencies}}ref.read({{dependencyName.camelCase()}}Provider),{{/dependencies}}
  );
});

abstract class {{name.pascalCase()}} { {{#methods}}
  Future<{{type}}> {{methodName}}({{#parameters}}
    {{type}} {{parameterName}},{{/parameters}}
  );
  {{/methods}}
}

class {{name.pascalCase()}}Impl implements {{name.pascalCase()}} {
  const {{name.pascalCase()}}Impl({{#dependencies}}this.{{dependencyName.camelCase()}},{{/dependencies}});
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