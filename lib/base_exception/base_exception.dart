import 'package:flutter/foundation.dart';

abstract class BaseException implements Exception {
  BaseException(String nameClassException,Object thisClass) {
    if (kDebugMode) {
      print("===start_to_trace_exception===\n");
      print("Debug ($nameClassException) from (${thisClass.runtimeType}): ${exceptionInString()}");
      print("\n===end_to_trace_exception===");
    }
  }

  @protected
  String exceptionInString();
  
  @override
  String toString() {
    return exceptionInString();
  }
}