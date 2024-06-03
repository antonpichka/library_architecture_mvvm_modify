import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

/// Exception Handling
/// Where to use ? - use in 'NamedService','OperationEEModel(EEWhereNamed)[EEFromNamed]EEParameterNamedService' classes
@immutable
abstract base class BaseException implements Exception {
  /// The key by which you can show an exception to the user
  /// Where to use ? - anywhere
  final String key;

  /// Initialize the parameters 'thisClass', 'exceptionClass', 'key'
  /// Where to use ? - use in 'NamedService','OperationEEModel(EEWhereNamed)[EEFromNamed]EEParameterNamedService' classes
  BaseException(Object thisClass, Type exceptionClass, this.key) {
    debugPrintException("\n===start_to_trace_exception===\n");
    debugPrintException(
        "WhereHappenedException(Class) --> ${thisClass.runtimeType}\n"
        "NameException(Class) --> $exceptionClass\n"
        "toString() --> ${toString()}");
    debugPrintException("\n===end_to_trace_exception===\n");
  }

  /// Standard method required for testing
  /// Where to use ? - anywhere
  @override
  String toString();
}
