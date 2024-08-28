import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

@immutable
final class Result<T extends Object> {
  final T? parameter;
  final ExceptionController exceptionController;

  Result.success(this.parameter)
      : exceptionController = ExceptionController.success();
  Result.exception(BaseException exception)
      : parameter = null,
        exceptionController = ExceptionController.exception(exception);
}
