import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

@immutable
final class ResultWithListModelsWrapper<T extends BaseListModelWrapper> {
  final T? listModelWrapper;
  final ExceptionController exceptionController;

  ResultWithListModelsWrapper.success(this.listModelWrapper)
      : exceptionController = ExceptionController.success();
  ResultWithListModelsWrapper.exception(BaseException exception)
      : listModelWrapper = null,
        exceptionController = ExceptionController.exception(exception);
}
