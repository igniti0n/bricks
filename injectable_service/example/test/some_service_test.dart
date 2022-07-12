import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class MockSomeDependancy extends Mock implements SomeDependancy {}
class MockAnotherDependancy extends Mock implements AnotherDependancy {}

void main() {
  MockSomeDependancy someDependancy();
  MockAnotherDependancy anotherDependancy();
  
  setUp(() {
    someDependancy = MockSomeDependancy();
    anotherDependancy = MockAnotherDependancy();
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
