# Clean Repository

A brick to create a repository with custom methods, dependencies and tests.

## How to use 🚀

```
mason make repository --name user
```

## Variables ✨

| Variable         | Description                | Default                   | Type     |
| ---------------- | -------------------------- | ------------------------- | -------- |
| `user`           |    Name of therepository   |           user            | `string` |

## Outputs 📦

```
project
 ┣ 📂lib
 ┃  ┗ 📂data
 ┃     ┗ 📜user_repository.dart
 ┣ 📂test
 ┃  ┗ 📂data
 ┃     ┗ 📜user_repository_test.dart

 ```

```dart
import 'package:hooks_riverpod/hooks_riverpod.dart';

final userRepositoryProvider = Provider<UserRepository>((ref) {
  return UserRepositoryImpl(
    ref.read(someDependencyProvider),
    ref.read(anotherDependencyProvider),
  );
});

abstract class UserRepository {
  Future<void> login();

  Future<void> logout();
}

class UserRepositoryImpl implements UserRepository {
  const UserRepositoryImpl(
    this.someDependency,
    this.anotherDependency,
  );
  final SomeDependency someDependency;
  final AnotherDependency anotherDependency;

  @override
  Future<void> login() async {
    // TODO: - Implement method
  }
  @override
  Future<void> logout() async {
    // TODO: - Implement method
  }
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
  late UserRepositoryImpl user;

  setUp(() {
    someDependency = MockSomeDependency();
    anotherDependency = MockAnotherDependency();

    user = UserRepositoryImpl(
      someDependency,
      anotherDependency,
    );
  });

  group('User', () {
    test('can be instantiated', () {
      expect(
          UserRepositoryImpl(
            someDependency,
            anotherDependency,
          ),
          isNotNull);
    });

    group('login', () {
      test('executes success flow', () async {
        final value = user.login();
        //expect(value, equals(smth));
      });

      test('executes failure flow', () async {
        final value = user.login();
        //expect(value, equals(smth));
      });
    });

    group('logout', () {
      test('executes success flow', () async {
        final value = user.logout();
        //expect(value, equals(smth));
      });

      test('executes failure flow', () async {
        final value = user.logout();
        //expect(value, equals(smth));
      });
    });
  });
}
```