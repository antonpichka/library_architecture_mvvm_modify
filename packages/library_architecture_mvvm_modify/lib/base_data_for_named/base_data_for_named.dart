import 'package:library_architecture_mvvm_modify/utility/exception_controller.dart';

abstract base class BaseDataForNamed {
  ExceptionController exceptionController;

  BaseDataForNamed() : exceptionController = ExceptionController.success();
}
