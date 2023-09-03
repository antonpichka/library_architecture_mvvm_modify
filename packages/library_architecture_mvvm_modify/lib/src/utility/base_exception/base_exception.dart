import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

@immutable
abstract base class BaseException implements Exception {
  final String key;

  BaseException(Object thisClass, this.key, Type exceptionClass) {
    debugPrintException("===start_to_trace_exception===\n");
    debugPrintException(
        "NameException(Class): $exceptionClass\nWhereHappenedException(Class): ${thisClass.runtimeType}\nExceptionInString: $exceptionInStringForDebugPrintException\n");
    debugPrintException("===end_to_trace_exception===\n");
  }

  @protected
  String get exceptionInStringForDebugPrintException;
}
