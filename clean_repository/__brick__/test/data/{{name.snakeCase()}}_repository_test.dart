import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
{{#dependencies}}
class Mock{{dependencyName.pascalCase()}} extends Mock implements {{dependencyName.pascalCase()}} {} {{/dependencies}}


void main() {
  {{#dependencies}}late Mock{{dependencyName.pascalCase()}} {{dependencyName.camelCase()}};
  {{/dependencies}}
  late {{name.pascalCase()}}RepositoryImpl {{name.camelCase()}};
  setUp(() {
    {{#dependencies}}{{dependencyName.camelCase()}} = Mock{{dependencyName.pascalCase()}}();
    {{/dependencies}}
    {{name.camelCase()}} = {{name.pascalCase()}}RepositoryImpl({{#dependencies}}{{dependencyName.camelCase()}},{{/dependencies}});
  });

    group('{{name.pascalCase()}}', () {
    test('can be instantiated', () {
      expect(const {{name.pascalCase()}}RepositoryImpl({{#dependencies}}{{dependencyName.camelCase()}},{{/dependencies}}), isNotNull);
    });
    {{#methods}}
    group('{{methodName}}', () {
      test('executes success flow', () async {
        final value = {{name.camelCase()}}.{{methodName}}();
        //expect(value, equals(smth));
      });

      test('executes failure flow', () async {
        final value = {{name.camelCase()}}.{{methodName}}();
        //expect(value, equals(smth));
      });
    });
    {{/methods}}
  });

}