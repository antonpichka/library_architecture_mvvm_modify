import 'package:library_architecture_mvvm_modify/base_exception/base_exception.dart';
import 'package:library_architecture_mvvm_modify/base_exception/local_exception.dart';
import 'package:library_architecture_mvvm_modify/cancel_operation_without_error_and_success.dart';
import 'package:library_architecture_mvvm_modify/constants.dart';

class Response<T,Y extends BaseException> {
  T _data;
  Y _exception;
  CancelOperationWithoutErrorAndSuccess _cancelOperationWithoutErrorAndSuccess;

  Response.success(this._data) {
    if(_exception != null) {
      _exception = null;
    }
    if(_cancelOperationWithoutErrorAndSuccess != null) {
      _cancelOperationWithoutErrorAndSuccess = null;
    }
  }

  Response.exception(this._exception) {
    if(_data != null) {
      _data = null;
    }
    if(_cancelOperationWithoutErrorAndSuccess != null) {
      _cancelOperationWithoutErrorAndSuccess = null;
    }
  }

  Response.cancelOperationWithoutErrorAndSuccess(this._cancelOperationWithoutErrorAndSuccess) {
    if(_exception != null) {
      _exception = null;
    }
    if(_data != null) {
      _data = null;
    }
  }

  T get getData {
    if(_data == null) {
      return throw LocalException(this,constDeveloper,"Data null");
    }
    return _data;
  }

  BaseException get getException {
    if(_exception == null) {
      return throw LocalException(this,constDeveloper,"Exception null");
    }
    return _exception;
  }

  CancelOperationWithoutErrorAndSuccess get getCancelOperationWithoutErrorAndSuccess {
    if(_cancelOperationWithoutErrorAndSuccess == null) {
      return throw LocalException(this,constDeveloper,"CancelOperationWithoutErrorAndSuccess null");
    }
    return _cancelOperationWithoutErrorAndSuccess;
  }

  bool isExceptionResponse() {
    if(_exception == null) {
      return false;
    }
    return true;
  }

  bool isCanceledOperationWithoutErrorAndSuccess() {
    if(_cancelOperationWithoutErrorAndSuccess == null) {
      return false;
    }
    return true;
  }
}