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

import '../model_named_background_model/user_sqflite_database_background_model/user_sqflite_database_background_model_using_delete_np_for_all.dart';

class MainBackground {
  static final MainBackground firebaseMessagingBackground =
  MainBackground._();

  final UserSqfliteDatabaseBackgroundModelUsingDeleteNPForAll _userSqfliteDatabaseBackgroundModelUsingDeleteNPForAll =
  UserSqfliteDatabaseBackgroundModelUsingDeleteNPForAll();

  MainBackground._();

  Future<void> selectAndRunTask(
      String nameTask)
  async {
    switch(nameTask) {
      case "deleteUserToSqfliteDatabaseThereIsParameterForAll":
        await _deleteUserToSqfliteDatabaseNPAndAlsoOneTasks();
        break;
      case "two":
        break;
    }
  }

  Future<void> _deleteUserToSqfliteDatabaseNPAndAlsoOneTasks()
  async {
    // 1
    var result = await _userSqfliteDatabaseBackgroundModelUsingDeleteNPForAll
        .deleteUserToSqfliteDatabaseNP();
    if(result.isExceptionResponse()) {
      return _deleteUserToSqfliteDatabaseNPAndAlsoOneTasks();
    }
    return;
  }
}