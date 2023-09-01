import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

final class ExceptionController {
  final BaseException? _exception;

  ExceptionController.success() : _exception = null;

  ExceptionController.exception(this._exception);

  @nonVirtual
  String get getKeyParameterException {
    return _exception?.key ?? "";
  }

  @nonVirtual
  bool isNotEqualsNullParameterException() {
    return _exception != null ? true : false;
  }
}
