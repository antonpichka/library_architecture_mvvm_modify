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

import 'package:flutter/foundation.dart';
import 'package:library_architecture_mvvm_modify/base_exception/base_exception.dart';

// Who is in fault?
enum EnumGuiltyForLocalException {
  developer,
  device,
  user
}

class LocalException
    extends BaseException
{
  final EnumGuiltyForLocalException _enumGuiltyForLocalException;
  final String _message;

  LocalException(
      Object thisClass,
      this._enumGuiltyForLocalException,
      this._message)
      : super(LocalException,thisClass);

  LocalException.whereTheUserIsGuilty(thisClass,this._message) :
        _enumGuiltyForLocalException = EnumGuiltyForLocalException.user,
        super(LocalException,thisClass);

  @nonVirtual
  EnumGuiltyForLocalException get getEnumGuiltyForLocalException => _enumGuiltyForLocalException;

  @nonVirtual
  String get getMessage {
    if(_enumGuiltyForLocalException == EnumGuiltyForLocalException.developer) {
      throw LocalException(this, _enumGuiltyForLocalException,
          "it makes no sense to show exceptions where the developer is to Guilty (That is you)."
          "\n Well I'll show the exception message again in console: $_message");
    }
    return _message;
  }

  @override
  @nonVirtual
  String exceptionInString() {
    if(_enumGuiltyForLocalException == EnumGuiltyForLocalException.developer) {
      throw LocalException(this, _enumGuiltyForLocalException,
          "it makes no sense to show exceptions where the developer is to Guilty (That is you)."
          "\n Well I'll show the exception message again in console: $_message");
    }
    return "EnumGuiltyForLocalException: ${_enumGuiltyForLocalException.name} | "
        "Message: $_message";
  }
}