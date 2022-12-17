import 'package:flutter/foundation.dart';
import 'package:library_architecture_mvvm_modify/utility/base_exception/base_exception.dart';
import 'package:library_architecture_mvvm_modify/utility/base_exception/local_exception.dart';
import 'package:library_architecture_mvvm_modify/utility/exception_controller.dart';

abstract class BaseModel {
  @protected
  String? uniqueId;
  @protected
  ExceptionController exceptionController;

  BaseModel.success(this.uniqueId)
      : exceptionController = ExceptionController.success();
  BaseModel.exception(BaseException exception)
      : exceptionController = ExceptionController.exception(exception);
  BaseModel.successForFBDS()
      : exceptionController = ExceptionController.success();
  BaseModel.exceptionForFBDS(LocalException exception)
      : exceptionController = ExceptionController.exception(exception);

  @nonVirtual
  String? get getParameterUniqueId => uniqueId;
  @nonVirtual
  ExceptionController get getParameterExceptionController => exceptionController;

  @nonVirtual
  set setParameterUniqueId(String? uniqueId) => this.uniqueId = uniqueId;
  @nonVirtual
  set setParameterExceptionController(ExceptionController exceptionController) => this.exceptionController = exceptionController;
}