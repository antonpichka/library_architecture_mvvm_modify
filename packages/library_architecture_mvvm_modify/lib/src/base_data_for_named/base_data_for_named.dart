import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';

abstract base class BaseDataForNamed {
  bool isLoading;
  ExceptionController exceptionController;

  BaseDataForNamed(this.isLoading)
      : exceptionController = ExceptionController.success();
}
