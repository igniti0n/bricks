import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
{{#dependencies}}
class Mock{{name.pascalCase()}} extends Mock implements {{name.pascalCase()}} {}{{/dependencies}}

void main() {
  {{#dependencies}}late Mock{{name.pascalCase()}} {{name.camelCase()}};
  {{/dependencies}}
  setUp(() {
    {{#dependencies}}{{name.camelCase()}} = Mock{{name.pascalCase()}}();
    {{/dependencies}}
  });

   group('{{service_name.pascalCase()}}', () {
    test('can be instantiated', () {
      expect(const {{service_name.pascalCase()}}({{#dependencies}}{{name.camelCase()}},{{/dependencies}}), isNotNull);
    });
    {{#methods}}
    group('{{name}}', () {
      test('executes success flow', () async {
        final value = {{service_name.camelCase()}}.{{name}}();
        //expect(value, equals(smth));
      });

      test('executes failure flow', () async {
        final value = {{service_name.camelCase()}}.{{name}}();
        //expect(value, equals(smth));
      });
    });
    {{/methods}}
  });