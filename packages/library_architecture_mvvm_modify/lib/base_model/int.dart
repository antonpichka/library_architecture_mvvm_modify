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

class Int
    extends BaseModel
{
  int _field;

  Int.success(this._field) : super.success(_field.toString());
  Int.exception(super.exception) : _field = 0,super.exception();
  Int.successForFBDS() : _field = 0,super.successForFBDS();
  Int.exceptionForFBDS(super.exception) : _field = 0,super.exceptionForFBDS();

  @nonVirtual
  int get getParameterField => _field;
  String get getOneParametersNamedForNamedWidgetOrView => _field.toString();

  @nonVirtual
  set setParameterField(int field) => _field = field;
  void setOneParametersNamedForNamedWidgetOrView() =>  _field = (_field + 1);
  void setTwoParametersNamedForNamedWidgetOrView() =>  _field = (_field - 1);
}