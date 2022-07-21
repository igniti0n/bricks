part of 'some_service.dart';

/// An interface for SomeService
abstract class ISomeService {
  /// A description for doSomething
  Future<void> doSomething();

  /// A description for saySomething
  Future<String> saySomething();
}
