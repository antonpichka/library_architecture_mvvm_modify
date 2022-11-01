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
import 'package:library_architecture_mvvm_modify/base_model/default.dart';
import 'package:library_architecture_mvvm_modify/base_model/int.dart';
import 'package:library_architecture_mvvm_modify/base_model/list_default.dart';
import 'package:library_architecture_mvvm_modify/base_model/list_int.dart';
import 'package:library_architecture_mvvm_modify/base_view_model/base_view_model.dart';
import 'package:library_architecture_mvvm_modify/base_view_model/enum_named_vm/enum_base_model_and_base_list_model_vm.dart';
import 'package:library_architecture_mvvm_modify/utility/i_streams.dart';
import 'package:library_architecture_mvvm_modify/utility/sc_model.dart';

class IntViewModel<T extends Enum>
    extends BaseViewModel<Int,ListInt,Default<Int>,ListDefault<ListInt,Default<Int>>,T>
{
  IntViewModel(
      List<EnumBaseModelAndBaseListModelVM> listEnumBaseModelAndBaseListModelVM,
      IStreams iStreams)
      : super.noDataSource(
      listEnumBaseModelAndBaseListModelVM,
          () => SCModel(iStreams,Int.getDefaultInt,ListInt([])));

  @override
  @nonVirtual
  Int cloneModel(
      Int model)
  {
    return Int(model.field);
  }

  @override
  Object thisClass() {
    return this;
  }
}