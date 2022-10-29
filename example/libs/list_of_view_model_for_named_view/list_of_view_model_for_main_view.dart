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

import 'package:library_architecture_mvvm_modify/base_list_of_view_model_for_named_view_or_named_widget_for_named_view/base_list_of_view_model_for_named_view_or_named_widget_for_named_view.dart';
import 'package:library_architecture_mvvm_modify/base_model/bool.dart';
import '../model/user/user.dart';
import '../model_named_view_model/bool_view_model/bool_view_model_using_get_np_for_loading.dart';
import '../model_named_view_model/user_sqflite_database_view_model/user_sqflite_database_view_model_using_delete_np_for_all.dart';
import '../model_named_view_model/user_sqflite_database_view_model/user_sqflite_database_view_model_using_get_list_np.dart';

class ListOfViewModelForMainView
    extends BaseListOfViewModelForNamedViewOrNamedWidgetForNamedView
{
  final UserSqfliteDatabaseViewModelUsingGetListNP _userSqfliteDatabaseViewModelUsingGetListNP =
  UserSqfliteDatabaseViewModelUsingGetListNP();
  final UserSqfliteDatabaseViewModelUsingDeleteNPForAll _userSqfliteDatabaseViewModelUsingDeleteNPForAll =
  UserSqfliteDatabaseViewModelUsingDeleteNPForAll();

  final BoolViewModelUsingGetNPForLoading _boolViewModelUsingGetNPForLoading =
  BoolViewModelUsingGetNPForLoading();

  ListOfViewModelForMainView() {
    _getListUserFromSqfliteDatabaseNPAndSetListUserAndInGeneralOneTask();
  }

  @override
  void dispose() {
    _userSqfliteDatabaseViewModelUsingGetListNP.dispose();
    _userSqfliteDatabaseViewModelUsingDeleteNPForAll.dispose();

    _boolViewModelUsingGetNPForLoading.dispose();
  }

  /// Start Stream/Future Methods **/
  Stream<List<User>> get getStreamListUserUsingGetListNP {
    return _userSqfliteDatabaseViewModelUsingGetListNP.getStreamListUserUsingGetListNP;
  }

  Stream<Bool> get getStreamBoolUsingGetNPForLoading {
    return _boolViewModelUsingGetNPForLoading.getStreamBoolUsingGetNPForLoading;
  }
  /// End Stream/Future Methods **/

  /// Start Getters Methods **/

  /// End Getters Methods **/

  /// Start Setters Methods **/

  /// End Setters Methods **/

  /// Start Any Methods **/
  Future<void> _getListUserFromSqfliteDatabaseNPAndSetListUserAndInGeneralOneTask()
  async {
    _boolViewModelUsingGetNPForLoading
        .getBoolUsingGetNPForLoading
        .isField = true;
    _boolViewModelUsingGetNPForLoading
        .notifyStreamBoolUsingGetNPForLoading();
    // 1
    var result = await _userSqfliteDatabaseViewModelUsingGetListNP
        .getListUserFromSqfliteDatabaseNPAndSetListUser();
    _boolViewModelUsingGetNPForLoading
        .getBoolUsingGetNPForLoading
        .isField = false;
    _boolViewModelUsingGetNPForLoading
        .notifyStreamBoolUsingGetNPForLoading();
    if(result.isExceptionResponse()) {
      return;
    }
    _userSqfliteDatabaseViewModelUsingGetListNP
        .notifyStreamListUserUsingGetListNP();
    return;
  }

  Future<void> deleteUserToSqfliteDatabaseNPAndInGeneralTwoTasks(
      User user,
      Function functionForSuccess,
      Function(String) functionForStringException)
  async {
    // 1
    var result = await _userSqfliteDatabaseViewModelUsingDeleteNPForAll
        .deleteUserToSqfliteDatabaseNP();
    if(result.isExceptionResponse()) {
      functionForStringException(result
          .getException
          .toString());
      return;
    }
    // 2
    var resultTwo = _userSqfliteDatabaseViewModelUsingGetListNP
        .deleteUserToGetListUserNP(user);
    if(resultTwo.isExceptionResponse()) {
      functionForStringException(resultTwo
          .getException
          .toString());
      return;
    }
    _userSqfliteDatabaseViewModelUsingGetListNP
        .notifyStreamListUserUsingGetListNP();

    functionForSuccess();
    return;
  }
  /// End Any Methods **/
}