# Injecable Service

A brick to create your injectable service, interface and tests with your defined dependencies and methods.

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
  SomeDependency someDependency;
  AnotherDependency anotherDependency;

  SomeService(
    this.someDependency,
    this.anotherDependency,
  );

  @override
  FutureOr<void> login() async {
    //TODO: Add Logic
    return Future.value();
  }

  @override
  FutureOr<void> logout() async {
    //TODO: Add Logic
    return Future.value();
  }
}
```

```dart
part of 'some_service.dart';

/// An interface for SomeService
abstract class ISomeService{ 
  /// A description for login
  FutureOr<void> login();
  
  /// A description for logout
  FutureOr<void> logout();
  
}
```

```dart
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class MockSomeDependency extends Mock implements SomeDependency {}
class MockAnotherDependency extends Mock implements AnotherDependency {}

void main() {
  MockSomeDependency someDependency();
  MockAnotherDependency anotherDependency();
  setUp(() {
    someDependency = MockSomeDependency();
    anotherDependency = MockAnotherDependency();
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
```
