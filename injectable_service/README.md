# Injecable Service

A brick to create your injectable service, interface and tests with your defined dependencies and methods.

Based on the service brick: https://brickhub.dev/bricks/service/0.0.4

## How to use 🚀

```
mason make injectable_service --service_name some_service --injection_type lazy-singleton
```

## Variables ✨

| Variable         | Description                | Default                   | Type     |
| ---------------- | -------------------------- | ------------------------- | -------- |
| `service_name`   | The name of the service    | service                   | `string` |
| `injection_type` | Type of injection          | lazy-singleton            | `enum`   |

## Outputs 📦

```
project
 ┣ 📂lib
 ┃  ┗ 📂user_service
 ┃    ┣ 📜user_service.dart
 ┃    ┗ 📜iuser_service.dart
 ┣ 📂test
 ┃ ┗ 📜user_service_test.dart

 ```

```dart
import 'package:injectable/injectable.dart';

part 'isome_service.dart';

@Singleton(as: ISomeService)
class SomeService extends ISomeService {
  SomeService(
    this.someDependency,
    this.anotherDependency,
  );
  SomeDependency someDependency;
  AnotherDependency anotherDependency;

  @override
  Future<void> doSomething() async {
    //TODO: Add Logic
    return Future.value();
  }

  @override
  Future<String> saySomething() async {
    //TODO: Add Logic
    return Future.value();
  }
}
```

```dart
part of 'some_service.dart';

/// An interface for SomeService
abstract class ISomeService{ 
  /// A description for doSomething
  Future<void> doSomething();
  
  /// A description for saySomething
  Future<String> saySomething();
  
}
```

```dart
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
```
