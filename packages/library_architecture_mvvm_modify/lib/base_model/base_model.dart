import 'package:flutter/foundation.dart';
import 'package:library_architecture_mvvm_modify/utility/base_exception/base_exception.dart';
import 'package:library_architecture_mvvm_modify/utility/base_exception/local_exception.dart';
import 'package:library_architecture_mvvm_modify/utility/exception_controller.dart';

abstract class BaseModel {
  String? _uniqueId;
  ExceptionController _exceptionController;

  BaseModel.success(this._uniqueId)
      : _exceptionController = ExceptionController.success();
  BaseModel.exception(BaseException exception)
      : _exceptionController = ExceptionController.exception(exception);
  BaseModel.successForFBDS()
      : _exceptionController = ExceptionController.success();
  BaseModel.exceptionForFBDS(LocalException exception)
      : _exceptionController = ExceptionController.exception(exception);

  @nonVirtual
  String? get getParameterUniqueId => _uniqueId;
  @nonVirtual
  ExceptionController get getParameterExceptionController => _exceptionController;

  @nonVirtual
  set setParameterUniqueId(String? uniqueId) => _uniqueId = uniqueId;
  @nonVirtual
  set setParameterExceptionController(ExceptionController exceptionController) => _exceptionController = exceptionController;
}