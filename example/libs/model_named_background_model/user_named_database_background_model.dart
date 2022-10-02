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

import 'package:library_architecture_mvvm_modify/abstract_classes_converters_to_model_named_database/converter_to_base_list_model_named_database.dart';
import 'package:library_architecture_mvvm_modify/abstract_classes_converters_to_model_named_database/converter_to_base_model_named_database.dart';
import 'package:library_architecture_mvvm_modify/base_background_model/base_background_model.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_list_model/base_list_model_named_database.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_model_named_database.dart';
import '../model/user/list_user.dart';
import '../model/user/user.dart';

abstract class UserNamedDatabaseBackgroundModel<T extends BaseModelNamedDatabase<User>,Y extends BaseListModelNamedDatabase<ListUser,T>>
    extends BaseBackgroundModel<User,ListUser,T,Y>
{
  UserNamedDatabaseBackgroundModel.usingMethodSetDataSourceToBodyConstructor(
      ConverterToBaseModelNamedDatabase<User, T> converterToBaseModelNamedDatabase,
      ConverterToBaseListModelNamedDatabase<ListUser, Y> converterToBaseListModelNamedDatabase,)
      : super.usingMethodSetDataSourceToBodyConstructor(
      converterToBaseModelNamedDatabase,
      converterToBaseListModelNamedDatabase);

  @override
  User cloneModel(
      User model)
  {
    return User(
        model.uniqueId,
        model.name);
  }
}