
import 'package:injectable/injectable.dart';

part 'igreat.dart';


@Singleton(as: IGreat)

class Great extends IGreat {
  SomeDep someDep;
   ;
  AnotherDep anotherDep;
  OneMore oneMore;
  LolAnotherOne lolAnotherOne;
  
  Great(this.someDep,this.,this.anotherDep,this.oneMore,this.lolAnotherOne,);

  @override
  FutureOr<void> dosmth() async {
    //TODO: Add Logic
    return Future.value();
  }

  @override
  FutureOr<List<String>> fetch() async {
    //TODO: Add Logic
    return Future.value();
  }

  @override
  FutureOr<bool> areYouGood() async {
    //TODO: Add Logic
    return Future.value();
  }

}
