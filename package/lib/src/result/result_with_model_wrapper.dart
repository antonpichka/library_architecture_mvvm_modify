import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

@immutable
final class ResultWithModelWrapper<T extends BaseModelWrapper> {
  final T? modelWrapper;
  final ExceptionController exceptionController;

  ResultWithModelWrapper.success(this.modelWrapper)
      : exceptionController = ExceptionController.success();
  ResultWithModelWrapper.exception(BaseException exception)
      : modelWrapper = null,
        exceptionController = ExceptionController.exception(exception);
}
