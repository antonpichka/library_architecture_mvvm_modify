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

import 'package:library_architecture_mvvm_modify/utility/base_exception/base_exception.dart';
import 'package:library_architecture_mvvm_modify/utility/base_exception/local_exception.dart';
import 'package:library_architecture_mvvm_modify/utility/base_exception/network_exception.dart';
import 'package:library_architecture_mvvm_modify/utility/enum_what_is_the_exception.dart';
import 'package:flutter/foundation.dart';

class ExceptionControllerForModel {
  EnumWhatIsTheException enumWhatIsTheException;
  BaseException _exception;

  ExceptionControllerForModel.success()
      : enumWhatIsTheException = EnumWhatIsTheException.noException;

  ExceptionControllerForModel.exception(
      BaseException exception)
  {
    _exception = exception;
    if(_exception is LocalException) {
      enumWhatIsTheException = EnumWhatIsTheException.localException;
      return;
    }
    if(_exception is NetworkException) {
      enumWhatIsTheException = EnumWhatIsTheException.networkException;
      return;
    }
    enumWhatIsTheException = EnumWhatIsTheException.otherException;
  }

  @nonVirtual
  String get getParameterMessageForViewByException {
    return _exception.getMessageForView();
  }

  @nonVirtual
  set setParameterEnumWhatIsTheException(
      EnumWhatIsTheException enumWhatIsTheException)
  {
    this.enumWhatIsTheException = enumWhatIsTheException;
    _exception = null;
  }

  @nonVirtual
  bool isNotNullParameterException() {
    if(_exception == null) {
      return false;
    }
    return true;
  }
}