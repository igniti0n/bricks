import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class MockSomeDependency extends Mock implements SomeDependency {}
class MockAnotherDependency extends Mock implements AnotherDependency {}

void main() {
  late MockSomeDependency someDependency;
  late MockAnotherDependency anotherDependency;
  
  setUp(() {
    someDependency = MockSomeDependency();
    anotherDependency = MockAnotherDependency();
    
  });

   group('SomeService', () {
    test('can be instantiated', () {
      expect(const SomeService(someDependency,anotherDependency,), isNotNull);
    });
    
    group('doSomething', () {
      test('executes success flow', () async {
        final value = someService.doSomething();
        //expect(value, equals(smth));
      });

      test('executes failure flow', () async {
        final value = someService.doSomething();
        //expect(value, equals(smth));
      });
    });
    
    group('saySomething', () {
      test('executes success flow', () async {
        final value = someService.saySomething();
        //expect(value, equals(smth));
      });

      test('executes failure flow', () async {
        final value = someService.saySomething();
        //expect(value, equals(smth));
      });
    });

  });