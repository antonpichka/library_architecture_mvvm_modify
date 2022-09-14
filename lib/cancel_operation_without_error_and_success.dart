import 'package:flutter/foundation.dart';

class CancelOperationWithoutErrorAndSuccess {
  CancelOperationWithoutErrorAndSuccess(Object thisClass,String message) {
    if(kDebugMode) {
      print("===start_to_trace_cancel_operation_without_error_and_success===\n");
      print("Debug name is cancel_operation_without_error_and_success:\n(ThisClass: ${thisClass.runtimeType})\n(Message: $message)");
      print("\n===end_to_trace_cancel_operation_without_error_and_success===");
    }
  }
}