import 'package:library_architecture_mvvm_modify/utility/base_exception/base_exception.dart';
import 'package:library_architecture_mvvm_modify/utility/exception_controller.dart';

abstract base class BaseModel {
  final String? uniqueId;

  final ExceptionController exceptionController;

  BaseModel.success(this.uniqueId)
      : exceptionController = ExceptionController.success();
  BaseModel.exception(BaseException exception)
      : uniqueId = null,
        exceptionController = ExceptionController.exception(exception);
}
