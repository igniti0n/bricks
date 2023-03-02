import 'package:hooks_riverpod/hooks_riverpod.dart';

final {{name.camelCase()}}RepositoryProvider = Provider<{{name.pascalCase()}}Repository>((ref) {
  return {{name.pascalCase()}}RepositoryImpl(
      {{#dependencies}}ref.read({{dependencyName.camelCase()}}Provider),{{/dependencies}}
  );
});

abstract class {{name.pascalCase()}}Repository { {{#methods}}
  Future<{{type.pascalCase()}}> {{methodName}}();
  {{/methods}}
}

class {{name.pascalCase()}}RepositoryImpl implements {{name.pascalCase()}}Repository{
  const {{name.pascalCase()}}RepositoryImpl({{#dependencies}}this.{{dependencyName.camelCase()}},{{/dependencies}});
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