import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class MockSomeDep extends Mock implements SomeDep {}
class MockAnotherDep extends Mock implements AnotherDep {}
class MockOneMore extends Mock implements OneMore {}
class MockLolAnotherOne extends Mock implements LolAnotherOne {}

void main() {
  late MockSomeDep someDep();
  late MockAnotherDep anotherDep();
  late MockOneMore oneMore();
  late MockLolAnotherOne lolAnotherOne();
  
  setUp(() {
    someDep = MockSomeDep();
    anotherDep = MockAnotherDep();
    oneMore = MockOneMore();
    lolAnotherOne = MockLolAnotherOne();
    
  });

   group('Great', () {
    test('can be instantiated', () {
      expect(const (someDep,anotherDep,oneMore,lolAnotherOne,), isNotNull);
    });
    
    group('dosmth', () {
      test('executes happy flow', () async {
        final someValue = .dosmth();
        //expect(someValue, equals(someValue));
      });

      test('executes edge flow', () async {
        final someValue = .dosmth();
        //expect(someValue, equals(someValue));
      });
    });
    
    group('fetch', () {
      test('executes happy flow', () async {
        final someValue = .fetch();
        //expect(someValue, equals(someValue));
      });

      test('executes edge flow', () async {
        final someValue = .fetch();
        //expect(someValue, equals(someValue));
      });
    });
    
    group('areYouGood', () {
      test('executes happy flow', () async {
        final someValue = .areYouGood();
        //expect(someValue, equals(someValue));
      });

      test('executes edge flow', () async {
        final someValue = .areYouGood();
        //expect(someValue, equals(someValue));
      });
    });
    
  });
}
