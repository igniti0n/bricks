import 'package:flutter_riverpod/flutter_riverpod.dart';

final {{name.camelCase()}}Provider = Provider<{{name.pascalCase()}}>((ref) {
  return {{name.pascalCase()}}Impl(
      {{#dependencies}}ref.read({{dependencyName.camelCase()}}Provider),{{/dependencies}}
  );
});

abstract class {{name.pascalCase()}} {  {{#methods}}
  Future<{{#hasSpecial}}{{{type}}}{{/hasSpecial}}{{^hasSpecial}}{{type}}{{/hasSpecial}}{{parameterName}}> {{methodName}}({{#parameters}}
     {{#hasSpecial}}{{{type}}}{{/hasSpecial}}{{^hasSpecial}}{{type}}{{/hasSpecial}}{{parameterName}} {{parameterName}},{{/parameters}}
  );
  {{/methods}}
}

class {{name.pascalCase()}}Impl implements {{name.pascalCase()}}{
  const {{name.pascalCase()}}Impl({{#dependencies}}this.{{dependencyName.camelCase()}},{{/dependencies}});
  {{#dependencies}}final {{dependencyName.pascalCase()}} {{dependencyName.camelCase()}};
  {{/dependencies}}
  {{#methods}}
  @override
  Future<{{#hasSpecial}}{{{type}}}{{/hasSpecial}}{{^hasSpecial}}{{type}}{{/hasSpecial}}> {{methodName}}({{#parameters}}
   {{#hasSpecial}}{{{type}}}{{/hasSpecial}}{{^hasSpecial}}{{type}}{{/hasSpecial}} {{parameterName}},{{/parameters}}
  ) async {
    // TODO: - Implement method
  } {{/methods}}
}