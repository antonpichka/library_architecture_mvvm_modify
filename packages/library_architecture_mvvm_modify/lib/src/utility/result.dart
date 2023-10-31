import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

/// The purpose of which is to accept success or exception
/// Where to use ? - use in classes 'OperationEEModel(EEWhereNamed)[EEFromNamed]EEParameterNamedService','NamedViewModel'
@immutable
final class Result<T extends Object> {
  /// Success
  /// Where to use ? - use in class 'NamedViewModel'
  final T? parameter;

  /// Exception
  /// Where to use ? - use in class 'NamedViewModel'
  final ExceptionController exceptionController;

  /// Initialize the parameter 'parameter'
  /// Where to use ? - use in class 'OperationEEModel(EEWhereNamed)[EEFromNamed]EEParameterNamedService'
  Result.success(this.parameter)
      : exceptionController = ExceptionController.success();

  /// Initialize the parameter 'parameter','exceptionController'
  /// Where to use ? - use in class 'OperationEEModel(EEWhereNamed)[EEFromNamed]EEParameterNamedService'
  Result.exception(BaseException exception)
      : parameter = null,
        exceptionController = ExceptionController.exception(exception);
}
