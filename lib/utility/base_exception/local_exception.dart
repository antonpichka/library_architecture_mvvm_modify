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
import 'package:library_architecture_mvvm_modify/utility/base_exception/base_exception.dart';

// Who is in fault?
enum EnumGuiltyForLocalException {
  developer,
  device,
  user,
  deviceOrDeveloper,
}

class LocalException
    extends BaseException
{
  final EnumGuiltyForLocalException enumGuiltyForLocalException;
  final String message;

  LocalException(
      Object thisClass,
      this.enumGuiltyForLocalException,
      this.message)
      : super(LocalException,thisClass);

  LocalException.whereTheUserIsGuilty(thisClass,this.message) :
        enumGuiltyForLocalException = EnumGuiltyForLocalException.user,
        super(LocalException,thisClass);

  @override
  @nonVirtual
  String exceptionInString() {
    return "EnumGuiltyForLocalException: ${enumGuiltyForLocalException.name} | "
        "Message: $message";
  }
}