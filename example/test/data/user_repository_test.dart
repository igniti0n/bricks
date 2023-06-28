import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class MockSomeDependency extends Mock implements SomeDependency {} 


void main() {
  late MockSomeDependency someDependency;
  
  late UserRepositoryImpl user;
  setUp(() {
    someDependency = MockSomeDependency();
    
    user = UserRepositoryImpl(someDependency,);
  });

    group('User', () {
    test('can be instantiated', () {
      expect(const UserRepositoryImpl(someDependency,), isNotNull);
    });
    
    group('methodA', () {
      test('executes success flow', () async {
        final value = user.methodA();
        //expect(value, equals(smth));
      });

      test('executes failure flow', () async {
        final value = user.methodA();
        //expect(value, equals(smth));
      });
    });
    
    group('normalMethod', () {
      test('executes success flow', () async {
        final value = user.normalMethod();
        //expect(value, equals(smth));
      });

      test('executes failure flow', () async {
        final value = user.normalMethod();
        //expect(value, equals(smth));
      });
    });
    
  });

}