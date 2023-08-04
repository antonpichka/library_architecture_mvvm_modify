import 'package:library_architecture_mvvm_modify/utility/base_exception/base_exception.dart';
import 'package:library_architecture_mvvm_modify/utility/exception_controller.dart';

/// This class is needed to display data in a widget or view.
abstract base class BaseDataForNamedWidgetOrView {
  /// if an exception happens then here is "ExceptionController"
  ExceptionController exceptionController;

  BaseDataForNamedWidgetOrView.success()
      : exceptionController = ExceptionController.success();
  BaseDataForNamedWidgetOrView.exception(BaseException exception)
      : exceptionController = ExceptionController.exception(exception);
}
