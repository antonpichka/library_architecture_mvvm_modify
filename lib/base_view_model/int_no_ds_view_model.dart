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
import 'package:library_architecture_mvvm_modify/utility/base_model_named_database/int_no_ds.dart';
import 'package:library_architecture_mvvm_modify/utility/base_model_named_database/list_int_no_ds.dart';
import 'package:library_architecture_mvvm_modify/base_view_model/base_view_model.dart';
import 'package:library_architecture_mvvm_modify/base_view_model/enum_named_vm/enum_base_model_named_and_base_list_model_named_vm.dart';

abstract class IntNoDSViewModel<T extends Enum>
    extends BaseViewModel<IntNoDS,ListIntNoDS,T>
{
  IntNoDSViewModel(List<EnumBaseModelNamedAndBaseListModelNamedVM> listEnumBaseModelNamedAndBaseListModelNamedVM) : super.noDataSource(listEnumBaseModelNamedAndBaseListModelNamedVM);

  @override
  @nonVirtual
  IntNoDS cloneModelNamed(
      IntNoDS modelNamed)
  {
    return IntNoDS(modelNamed.field);
  }

  @override
  ListIntNoDS cloneListModelNamed(ListIntNoDS listModelNamed) {
    return ListIntNoDS(listModelNamed.listModelNamed);
  }
}