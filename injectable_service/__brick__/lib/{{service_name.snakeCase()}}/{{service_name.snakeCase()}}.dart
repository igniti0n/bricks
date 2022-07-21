
import 'package:injectable/injectable.dart';

part 'i{{service_name.snakeCase()}}.dart';

{{#isFactory}}@Injectable(as: I{{service_name.pascalCase()}}){{/isFactory}}
{{#isSingleton}}@Singleton(as: I{{service_name.pascalCase()}}){{/isSingleton}}
{{#isLazySingleton}}@LazySingleton(as: I{{service_name.pascalCase()}}){{/isLazySingleton}}
class {{service_name.pascalCase()}} extends I{{service_name.pascalCase()}} {
  {{service_name.pascalCase()}}({{#dependencies}}this.{{name.camelCase()}},{{/dependencies}});
  {{#dependencies}}{{name.pascalCase()}} {{name.camelCase()}};
  {{/dependencies}}
{{#methods}}
  @override
  Future<{{{type}}}> {{name}}() async {
    //TODO: Add Logic
    return Future.value();
  }
{{/methods}}
}
