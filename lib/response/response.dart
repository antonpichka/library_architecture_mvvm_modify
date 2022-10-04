/*
 * Designed and developed by 2022 JacobOdd (Anton Pichka)
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

import 'package:library_architecture_mvvm_modify/base_exception/base_exception.dart';
import 'package:library_architecture_mvvm_modify/base_exception/local_exception.dart';
import 'package:library_architecture_mvvm_modify/cancel_operation_without_exception_and_success/cancel_operation_without_exception_and_success.dart';
import 'package:library_architecture_mvvm_modify/utility/constants.dart';

class Response<T,Y extends BaseException> {
  T _data;
  Y _exception;
  CancelOperationWithoutExceptionAndSuccess _cancelOperationWithoutErrorAndSuccess;

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

  CancelOperationWithoutExceptionAndSuccess get getCancelOperationWithoutErrorAndSuccess {
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