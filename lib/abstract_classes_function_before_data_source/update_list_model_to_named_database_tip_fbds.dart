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

import 'package:library_architecture_mvvm_modify/base_model/base_list_model.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_model.dart';
import 'package:library_architecture_mvvm_modify/base_type_parameter/base_type_parameter.dart';
import 'package:library_architecture_mvvm_modify/response/response_generic_bool_and_local_exception_and_cancel_owe_and_s.dart';

abstract class UpdateListModelToNamedDatabaseTIPFBDS<T extends BaseModel,Y extends BaseListModel<T>,Z extends BaseTypeParameter>
{
  UpdateListModelToNamedDatabaseTIPFBDS();

  ResponseGenericBoolAndLocalExceptionAndCancelOWEAndS updateListModelToNamedDatabaseTIP(
      Y listModel,
      Z typeParameterForFBDS);
}