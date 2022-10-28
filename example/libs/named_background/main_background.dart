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

import 'package:library_architecture_mvvm_modify/base_background/base_background.dart';
import '../model_named_background_model/user_sqflite_database_background_model/user_sqflite_database_background_model_using_delete_np_for_all.dart';

enum EnumMainBackground {
  deleteUserToSqfliteDatabaseNPAndInGeneralOneTask
}

class MainBackground
    extends BaseBackground<EnumMainBackground>
{
  static final MainBackground mainBackground =
  MainBackground._();

  final UserSqfliteDatabaseBackgroundModelUsingDeleteNPForAll _userSqfliteDatabaseBackgroundModelUsingDeleteNPForAll =
  UserSqfliteDatabaseBackgroundModelUsingDeleteNPForAll();

  MainBackground._();

  @override
  Future<void> selectAndRunATask(
      EnumMainBackground selectATask)
  async {
    switch(selectATask) {
      case EnumMainBackground.deleteUserToSqfliteDatabaseNPAndInGeneralOneTask:
        await _deleteUserToSqfliteDatabaseNPAndInGeneralOneTask();
        break;
    }
  }

  Future<void> _deleteUserToSqfliteDatabaseNPAndInGeneralOneTask()
  async {
    // 1
    var result = await _userSqfliteDatabaseBackgroundModelUsingDeleteNPForAll
        .deleteUserToSqfliteDatabaseNP();
    if(result.isExceptionResponse()) {
      return _deleteUserToSqfliteDatabaseNPAndInGeneralOneTask();
    }
    return;
  }
}