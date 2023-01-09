import 'package:meta/meta.dart';

class BaseTesting {
  int? _numberOfExecutedMethodsInThisClass = 0;

  @visibleForTesting
  @nonVirtual
  int? get getTheNumberOfExecutedMethodsInThisClass {
    return _numberOfExecutedMethodsInThisClass;
  }

  @protected
  void incrementForNumberOfExecutedMethodsInThisClass() {
    _numberOfExecutedMethodsInThisClass = (_numberOfExecutedMethodsInThisClass! + 1);
  }
}