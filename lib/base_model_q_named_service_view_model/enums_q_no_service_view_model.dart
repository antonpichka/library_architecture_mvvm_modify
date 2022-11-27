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
import 'package:library_architecture_mvvm_modify/base_model_q_named_service_view_model/base_model_q_named_service_view_model.dart';
import 'package:library_architecture_mvvm_modify/base_model_q_named_service_view_model/enum_base_model_and_base_list_model_vm.dart';
import 'package:library_architecture_mvvm_modify/utility/base_model/enums.dart';
import 'package:library_architecture_mvvm_modify/utility/base_model/list_enums.dart';

abstract class EnumsQNoServiceViewModel
    extends BaseModelQNamedServiceViewModel<Enums,ListEnums>
{
  EnumsQNoServiceViewModel.noDataSource(List<EnumBaseModelAndBaseListModelVM> list,) : super.noDataSource(list);

  @override
  @nonVirtual
  Enums cloneModelForSuccess(
      Enums model)
  {
    return Enums.success(model.field);
  }

  @override
  @nonVirtual
  ListEnums cloneListModelForSuccess(
      ListEnums listModel)
  {
    return ListEnums.success(listModel.list);
  }
}