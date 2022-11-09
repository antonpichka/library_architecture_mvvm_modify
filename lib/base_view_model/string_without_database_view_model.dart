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
import 'package:library_architecture_mvvm_modify/base_model_named_database/list_string_without_database.dart';
import 'package:library_architecture_mvvm_modify/base_model_named_database/string_without_database.dart';
import 'package:library_architecture_mvvm_modify/base_view_model/base_view_model.dart';
import 'package:library_architecture_mvvm_modify/base_view_model/enum_named_vm/enum_base_model_named_database_and_base_list_model_named_database_vm.dart';
import 'package:library_architecture_mvvm_modify/utility/i_streams.dart';
import 'package:library_architecture_mvvm_modify/utility/sc_model.dart';

abstract class StringWithoutDatabaseViewModel<T extends Enum>
    extends BaseViewModel<StringWithoutDatabase,ListStringWithoutDatabase,T>
{
  StringWithoutDatabaseViewModel(
      List<EnumBaseModelNamedDatabaseAndBaseListModelNamedDatabaseVM> listEnumBaseModelNamedDatabaseAndBaseListModelNamedDatabaseVM,
      IStreams iStreams)
      : super.noDataSource(
      listEnumBaseModelNamedDatabaseAndBaseListModelNamedDatabaseVM,
          () => SCModel(iStreams,StringWithoutDatabase.getStringWithoutDatabase,ListStringWithoutDatabase([])));

  @override
  @nonVirtual
  StringWithoutDatabase cloneModelNamedDatabase(
      StringWithoutDatabase modelNamedDatabase)
  {
    return StringWithoutDatabase(modelNamedDatabase.field);
  }
}