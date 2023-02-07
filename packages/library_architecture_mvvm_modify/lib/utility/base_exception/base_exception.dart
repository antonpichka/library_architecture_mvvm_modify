import 'package:library_architecture_mvvm_modify/utility/utility.dart';

/// This class is necessary to show the developer the necessary information about the exception
/// "where the exception occurred", "what class of the exception", "detailed error message".
/// Also, this class is inherited by other classes, as it is base, and can send a message anywhere
abstract class BaseException implements Exception {
  BaseException(Object thisClass, Type exceptionClass) {
    debugPrintException("===start_to_trace_exception===\n");
    debugPrintException(
        "NameException(Class): $exceptionClass\nWhereHappenedException(Class): ${thisClass.runtimeType}\nExceptionInString: $exceptionInStringForDebugPrintException\n");
    debugPrintException("===end_to_trace_exception===\n");
  }

  /// Show message for view
  String get getMessageForView;

  /// Show an exception to the developer when that same exception occurs
  String get exceptionInStringForDebugPrintException;
}
