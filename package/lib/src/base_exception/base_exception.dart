import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

@immutable
abstract base class BaseException implements Exception {
  final String key;

  BaseException(Object thisClass, Type exceptionClass, this.key) {
    debugPrintException("\n===start_to_trace_exception===\n");
    debugPrintException(
        "WhereHappenedException(Class) --> ${thisClass.runtimeType}\n"
        "NameException(Class) --> $exceptionClass\n"
        "toString() --> ${toString()}");
    debugPrintException("\n===end_to_trace_exception===\n");
  }

  @override
  String toString();
}
