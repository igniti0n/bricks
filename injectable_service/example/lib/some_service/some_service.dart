
import 'package:injectable/injectable.dart';

part 'isome_service.dart';


@Singleton(as: ISomeService)

class SomeService extends ISomeService {
  SomeDependancy someDependancy;
  AnotherDependancy anotherDependancy;
  
  SomeService(this.someDependancy,this.anotherDependancy,);

  @override
  FutureOr<void> smth() async {
    //TODO: Add Logic
    return Future.value();
  }

  @override
  FutureOr<void> another() async {
    //TODO: Add Logic
    return Future.value();
  }

  @override
  FutureOr<void> smth() async {
    //TODO: Add Logic
    return Future.value();
  }

}
