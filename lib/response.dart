import 'package:flutter/foundation.dart';
import 'package:library_architecture_mvvm_modify/base_exception/base_exception.dart';
import 'package:library_architecture_mvvm_modify/base_exception/domain_exception.dart';
import 'package:library_architecture_mvvm_modify/base_exception/local_exception.dart';
import 'package:library_architecture_mvvm_modify/base_exception/network_exception.dart';

class Response<T,Y extends BaseException> {
  T _data;
  Y _exception;

  Response.success(this._data) {
    if(_exception != null) {
      _exception = null;
    }
  }

  Response.exception(this._exception) {
    if(_data != null) {
      _data = null;
    }
  }

  T get getData {
    if(_data == null) {
      return throw Exception();
    }
    return _data;
  }

  BaseException get getException {
    if(_exception == null) {
      return throw Exception();
    }
    return _exception;
  }

  String get getExceptionInString {
    BaseException baseException = getException;
    if (baseException is DomainException) {
      return baseException.exceptionInString();
    } else if (baseException is LocalException) {
      return baseException.exceptionInString();
    } else if (baseException is NetworkException) {
      return baseException.exceptionInString();
    }
    if (kDebugMode) {
      print("Debug (Any): ${baseException.exceptionInString()}");
    }
    return baseException.exceptionInString();
  }

  bool get isSuccessResponse {
    if(_data != null &&
        _exception == null)
    {
      return true;
    } else {
      return false;
    }
  }

  bool get isExceptionResponse {
    if(_data == null &&
        _exception != null)
    {
      return true;
    } else {
      return false;
    }
  }
}