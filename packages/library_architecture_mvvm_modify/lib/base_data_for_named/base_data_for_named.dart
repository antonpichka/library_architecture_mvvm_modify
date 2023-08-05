import 'package:library_architecture_mvvm_modify/utility/base_exception/base_exception.dart';
import 'package:library_architecture_mvvm_modify/utility/exception_controller.dart';

abstract base class BaseDataForNamed {
  ExceptionController exceptionController;

  BaseDataForNamed.success()
      : exceptionController = ExceptionController.success();
  BaseDataForNamed.exception(BaseException exception)
      : exceptionController = ExceptionController.exception(exception);
}
