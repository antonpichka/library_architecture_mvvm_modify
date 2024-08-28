import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

@immutable
final class ExceptionController {
  final BaseException? _exception;

  const ExceptionController.success() : _exception = null;
  const ExceptionController.exception(this._exception);

  @override
  String toString() {
    if (_exception == null) {
      return "ExceptionController(exception: null)";
    }
    return "ExceptionController(exception: $_exception)";
  }

  String get getKeyParameterException {
    return _exception?.key ?? "";
  }

  bool isWhereNotEqualsNullParameterException() {
    return _exception != null;
  }
}
