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

import 'package:library_architecture_mvvm_modify/base_exception/base_exception.dart';
import 'package:library_architecture_mvvm_modify/base_type_parameter/base_type_parameter.dart';
import 'package:library_architecture_mvvm_modify/response.dart';
import '../../model_named_data_source/user_sqflite_database_data_source/user_sqflite_database_data_source_using_delete_np_for_all.dart';
import 'user_sqflite_database_background_model.dart';

class UserSqfliteDatabaseBackgroundModelUsingDeleteNPForAll
    extends UserSqfliteDatabaseBackgroundModel
{
  UserSqfliteDatabaseBackgroundModelUsingDeleteNPForAll()
      : super.usingMethodSetDataSourceToBodyConstructor()
  {
    setDataSource = UserSqfliteDatabaseDataSourceUsingDeleteNPForAll.db;
  }

  @override
  Object thisClass() {
    return this;
  }

  Future<Response<BaseTypeParameter, BaseException>> deleteUserToSqfliteDatabaseNP() {
    return deleteModelToNamedDatabaseNP();
  }
}