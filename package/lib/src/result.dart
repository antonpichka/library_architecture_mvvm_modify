import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

/// The purpose of which is to accept success or exception
/// Where to use ? - use in classes 'ModelRepository','RWTMode','NamedVM'
@immutable
final class Result<T extends Object> {
  /// Success
  /// Where to use ? - use in classes 'RWTMode','NamedVM'
  final T? parameter;

  /// Exception
  /// Where to use ? - use in classes 'RWTMode','NamedVM'
  final ExceptionController exceptionController;

  /// Initialize the parameter 'parameter'
  /// Where to use ? - use in class 'ModelRepository'
  Result.success(this.parameter)
      : exceptionController = ExceptionController.success();

  /// Initialize the parameter 'parameter','exceptionController'
  /// Where to use ? - use in class 'ModelRepository'
  Result.exception(BaseException exception)
      : parameter = null,
        exceptionController = ExceptionController.exception(exception);
}
