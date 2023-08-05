import 'package:library_architecture_mvvm_modify/utility/base_exception/base_exception.dart';
import 'package:library_architecture_mvvm_modify/utility/base_exception/local_exception.dart';
import 'package:library_architecture_mvvm_modify/utility/exception_controller.dart';

final class Result<T extends Object> {
  final T? parameter;
  final ExceptionController exceptionController;

  Result.success(this.parameter)
      : exceptionController = ExceptionController.success();
  Result.exception(BaseException exception)
      : exceptionController = ExceptionController.exception(exception),
        parameter = null;
  Result.successForFBDS()
      : exceptionController = ExceptionController.success(),
        parameter = null;
  Result.exceptionForFBDS(LocalException exception)
      : exceptionController = ExceptionController.exception(exception),
        parameter = null;
}
