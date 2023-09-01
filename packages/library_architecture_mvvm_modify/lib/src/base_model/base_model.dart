import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';

abstract base class BaseModel {
  final String? uniqueId;

  final ExceptionController exceptionController;

  BaseModel.success(this.uniqueId)
      : exceptionController = ExceptionController.success();
  BaseModel.exception(BaseException exception)
      : uniqueId = null,
        exceptionController = ExceptionController.exception(exception);

  BaseModel get getCloneModel;
}
