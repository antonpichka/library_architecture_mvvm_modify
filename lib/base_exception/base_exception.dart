import 'package:flutter/foundation.dart';
import 'package:library_architecture_mvvm_modify/constants.dart';

abstract class BaseException implements Exception {
  BaseException(String nameClassException,Object thisClass) {
    printError("===start_to_trace_exception===\n");
    printError("NameClassException: $nameClassException\nWhereHappenedException(Class): ${thisClass.runtimeType}\nExceptionInString: ${exceptionInString()}\n");
    printError("===end_to_trace_exception===\n");
  }

  @protected
  String exceptionInString();
  
  @override
  String toString() {
    return exceptionInString();
  }
}