import 'package:library_architecture_mvvm_modify/utility/utility.dart';
import 'package:meta/meta.dart';

abstract base class BaseException implements Exception {
  final String key;

  BaseException(Object thisClass, Type exceptionClass, this.key) {
    debugPrintException("===start_to_trace_exception===\n");
    debugPrintException(
        "NameException(Class): $exceptionClass\nWhereHappenedException(Class): ${thisClass.runtimeType}\nExceptionInString: $exceptionInStringForDebugPrintException\n");
    debugPrintException("===end_to_trace_exception===\n");
  }

  @protected
  String get exceptionInStringForDebugPrintException;
}
