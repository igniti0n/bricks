import 'package:flutter_riverpod/flutter_riverpod.dart';

final userRepositoryProvider = Provider<UserRepository>((ref) {
  return UserRepositoryImpl(
      ref.read(someDependencyProvider),
  );
});

abstract class UserRepository {  
  Future<List<int>> methodA(
     List<int>parameter parameter,
  );
  
  Future<String> normalMethod(
     intnormalParam normalParam,
  );
  
}

class UserRepositoryImpl implements UserRepository{
  const UserRepositoryImpl(this.someDependency,);
  final SomeDependency someDependency;
  
  
  @override
  Future<List<int> > methodA(
   List<int> parameter,
  ) async {
    // TODO: - Implement method
  } 
  @override
  Future<String > normalMethod(
   int normalParam,
  ) async {
    // TODO: - Implement method
  } 
}