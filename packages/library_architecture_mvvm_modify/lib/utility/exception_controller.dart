import 'package:library_architecture_mvvm_modify/utility/base_exception/base_exception.dart';
import 'package:library_architecture_mvvm_modify/utility/base_exception/local_exception.dart';
import 'package:library_architecture_mvvm_modify/utility/base_exception/network_exception.dart';
import 'package:flutter/foundation.dart';

enum EnumWhatIsTheException {
  noException,
  localException,
  networkException,
  otherException
}

class ExceptionController {
  final EnumWhatIsTheException? enumWhatIsTheException;
  final BaseException? _exception;

  ExceptionController.success()
      : enumWhatIsTheException = EnumWhatIsTheException.noException,
        _exception = null;

  ExceptionController.exception(this._exception)
      : enumWhatIsTheException = _exception is LocalException
      ? EnumWhatIsTheException.localException : _exception is NetworkException
      ? EnumWhatIsTheException.networkException : EnumWhatIsTheException.otherException;

  @nonVirtual
  String get getMessageForViewByException {
    return _exception!.getMessageForView;
  }

  @nonVirtual
  bool isExceptionNotEqualsNull() {
    if(_exception == null) {
      return false;
    }
    return true;
  }
}