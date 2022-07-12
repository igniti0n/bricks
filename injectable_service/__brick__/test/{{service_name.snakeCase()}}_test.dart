import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
{{#dependencies}}
class Mock{{name.pascalCase()}} extends Mock implements {{name.pascalCase()}} {}{{/dependencies}}

void main() {
  {{#dependencies}}Mock{{name.pascalCase()}} {{name.camelCase()}}();
  {{/dependencies}}
  setUp(() {
    {{#dependencies}}{{name.camelCase()}} = Mock{{name.pascalCase()}}();
    {{/dependencies}}
  });

  test(
    'Should return/do smth when smth',
    () async {
      // arrange
  
      // act
   
      // assert

    },
  );

}
