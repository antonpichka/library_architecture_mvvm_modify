
import 'package:library_architecture_mvvm_modify/base_exception/base_exception.dart';

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

  bool get isSuccessResponse {
    if(_data != null &&
        _exception == null)
    {
      return true;
    } else {
      return false;
    }
  }
}