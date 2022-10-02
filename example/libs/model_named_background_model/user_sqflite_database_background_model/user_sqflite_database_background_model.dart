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

import '../../model/user/ctmnd/converter_to_list_user_sqflite_database.dart';
import '../../model/user/ctmnd/converter_to_user_sqflite_database.dart';
import '../../model/user/list_user_sqflite_database.dart';
import '../../model/user/user_sqflite_database.dart';
import '../user_named_database_background_model.dart';

abstract class UserSqfliteDatabaseBackgroundModel
    extends UserNamedDatabaseBackgroundModel<UserSqfliteDatabase,ListUserSqfliteDatabase>
{
  UserSqfliteDatabaseBackgroundModel.usingMethodSetDataSourceToBodyConstructor()
      : super.usingMethodSetDataSourceToBodyConstructor(
      ConverterToUserSqfliteDatabase(),
      ConverterToListUserSqfliteDatabase());
}