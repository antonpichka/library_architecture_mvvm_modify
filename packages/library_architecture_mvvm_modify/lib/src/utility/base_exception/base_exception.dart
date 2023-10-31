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
  /// Where to use ? - use in the heirs,'NamedService','OperationEEModel(EEWhereNamed)[EEFromNamed]EEParameterNamedService' classes
  BaseException(Object thisClass,Type exceptionClass, this.key) {
    debugPrintException("===start_to_trace_exception===\n");
    debugPrintException(
        "NameException(Class): $exceptionClass\nWhereHappenedException(Class): ${thisClass.runtimeType}\nExceptionInString: $getStringWhereDebugPrintExceptionParametersKeyAndNamed\n");
    debugPrintException("===end_to_trace_exception===\n");
  }

  /// getString - get string
  /// WhereDebugPrintException - show this exception to a specific method
  /// ParametersKeyAndNamed - parameter 'key' and others
  /// Where to use ? - here
  @protected
  String get getStringWhereDebugPrintExceptionParametersKeyAndNamed;
}
