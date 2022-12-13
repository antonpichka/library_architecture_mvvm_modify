import 'package:library_architecture_mvvm_modify/utility/base_exception/base_exception.dart';
import 'package:library_architecture_mvvm_modify/utility/base_exception/local_exception.dart';
import 'package:library_architecture_mvvm_modify/utility/exception_controller.dart';

abstract class BaseTypeParameter<T extends Object>
{
  final T? parameter;
  final ExceptionController exceptionController;

  BaseTypeParameter.success(this.parameter)
      : exceptionController = ExceptionController.success();
  BaseTypeParameter.exception(BaseException exception)
      : exceptionController = ExceptionController.exception(exception),
        parameter = null;
  BaseTypeParameter.successForFBDS()
      : exceptionController = ExceptionController.success(),
        parameter = null;
  BaseTypeParameter.exceptionForFBDS(LocalException exception)
      : exceptionController = ExceptionController.exception(exception),
        parameter = null;
}