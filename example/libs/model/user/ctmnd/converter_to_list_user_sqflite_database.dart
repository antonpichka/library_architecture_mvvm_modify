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
import '../list_user.dart';
import '../list_user_sqflite_database.dart';
import '../user_sqflite_database.dart';
import 'converter_to_user_sqflite_database.dart';

class ConverterToListUserSqfliteDatabase
    extends ConverterToBaseListModelNamedDatabase<ListUser,ListUserSqfliteDatabase>
{
  @override
  ListUserSqfliteDatabase toBaseListModelNamedDatabase(
      ListUser listModel)
  {
    List<UserSqfliteDatabase> list = List.generate(listModel.getListModel.length, (index) =>
        ConverterToUserSqfliteDatabase().toBaseModelNamedDatabase(listModel.getListModel[index])
    );
    return ListUserSqfliteDatabase(list);
  }
}