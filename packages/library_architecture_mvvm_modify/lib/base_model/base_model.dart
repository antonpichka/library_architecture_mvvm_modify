import 'package:library_architecture_mvvm_modify/utility/base_exception/base_exception.dart';
import 'package:library_architecture_mvvm_modify/utility/base_exception/local_exception.dart';
import 'package:library_architecture_mvvm_modify/utility/exception_controller.dart';

/// This class is the base class of the model.
/// There is "ExceptionController", in case of an error from the DataSource method, which is in "ModelQNamedServiceViewModel",
/// you do not need to write additional code for the exception, since "BaseListModel" can contain both success and exception
abstract class BaseModel {
  /// A unique identifier to indicate the uniqueness of the model,
  /// and is also used in the methods of the "BaseListModel" class
  String? uniqueId;
  /// if an exception happens then here is "ExceptionController"
  ExceptionController exceptionController;

  BaseModel.success(this.uniqueId)
      : exceptionController = ExceptionController.success();
  BaseModel.exception(BaseException exception)
      : exceptionController = ExceptionController.exception(exception);
  BaseModel.successForFBDS()
      : exceptionController = ExceptionController.success();
  BaseModel.exceptionForFBDS(LocalException exception)
      : exceptionController = ExceptionController.exception(exception);
}