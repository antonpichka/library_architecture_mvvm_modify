import 'package:meta/meta.dart';

class Testing {
  int? numberOfExecutedMethodsInThisClass = 0;

  @visibleForTesting
  @nonVirtual
  int? get getNumberOfExecutedMethodsInThisClassUsingVisibleOnlyForTesting {
    return numberOfExecutedMethodsInThisClass;
  }

  @protected
  @nonVirtual
  void incrementForNumberOfExecutedMethodsInThisClass() {
    numberOfExecutedMethodsInThisClass = ((numberOfExecutedMethodsInThisClass ?? 0) + 1);
  }
}