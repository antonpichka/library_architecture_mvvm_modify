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

import 'package:library_architecture_mvvm_modify/base_model/base_model.dart';
import 'package:flutter/foundation.dart';

class Bool
    extends BaseModel
{
  bool _isField;

  Bool.success(this._isField) : super.success(_isField.toString());
  Bool.exception(super.exception) : _isField = false,super.exception();
  Bool.successForFBDS() : _isField = false,super.successForFBDS();
  Bool.exceptionForFBDS(super.exception) : _isField = false,super.exceptionForFBDS();

  @nonVirtual
  bool get getParameterIsField => _isField;

  String get getOneParametersNamed => _isField.toString();

  @nonVirtual
  set setParameterIsField(bool isField) => _isField = isField;
}