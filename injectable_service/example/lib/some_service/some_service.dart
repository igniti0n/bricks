mport 'package:injectable/injectable.dart';

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