# Clean Service

A brick to create a service with custom methods, dependencies and tests.

## How to use 🚀

```
mason make clean_service --name DatabaseService
```

## Variables ✨

| Variable         | Description                | Default                   | Type     |
| ---------------- | -------------------------- | ------------------------- | -------- |
| `name`           |    Name of the service   |           DatabaseService            | `string` |

## Outputs 📦

```
project
 ┣ 📂lib
 ┃  ┗ 📂data
 ┃     ┗ 📂services
 ┃       ┗ 📜database_service.dart
 ┣ 📂test
 ┃  ┗ 📂data
 ┃     ┗ 📜database_service_test.dart

 ```

```dart
import 'package:hooks_riverpod/hooks_riverpod.dart';

final databaseServiceProvider = Provider<DatabaseService>((ref) {
  return DatabaseServiceImpl(
      ref.read(someDependancyProvider),ref.read(anotherDependancyProvider),
  );
});

abstract class DatabaseService { 
  Future<Int> methodA();
  
  Future<String> getNames();
  
}

class DatabaseServiceImpl implements DatabaseService {
  const DatabaseServiceImpl(this.someDependancy,this.anotherDependancy,);
  final SomeDependancy someDependancy;
  final AnotherDependancy anotherDependancy;
  
  
  @override
  Future<int> methodA(
    String name,
    int number,
  ) async {
    // TODO: - Implement method
  } 
  @override
  Future<String> getNames(
    int numberOfNames,
  ) async {
    // TODO: - Implement method
  } 
}
```


```dart
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class MockSomeDependancy extends Mock implements SomeDependancy {} 
class MockAnotherDependancy extends Mock implements AnotherDependancy {} 


void main() {
  late MockSomeDependancy someDependancy;
  late MockAnotherDependancy anotherDependancy;
  
  late DatabaseServiceImpl databaseService;
  setUp(() {
    someDependancy = MockSomeDependancy();
    anotherDependancy = MockAnotherDependancy();
    
    databaseService = DatabaseServiceImpl(someDependancy,anotherDependancy,);
  });

    group('DatabaseService', () {
    test('can be instantiated', () {
      expect(const DatabaseServiceImpl(someDependancy,anotherDependancy,), isNotNull);
    });
    
    group('methodA', () {
      test('executes success flow', () async {
        final value = databaseService.methodA();
        //expect(value, equals(smth));
      });

      test('executes failure flow', () async {
        final value = databaseService.methodA();
        //expect(value, equals(smth));
      });
    });
    
    group('getNames', () {
      test('executes success flow', () async {
        final value = databaseService.getNames();
        //expect(value, equals(smth));
      });

      test('executes failure flow', () async {
        final value = databaseService.getNames();
        //expect(value, equals(smth));
      });
    });
    
  });

}
```