import 'package:library_architecture_mvvm_modify/base_list_of_view_model_for_named_view/base_list_of_view_model_for_named_view.dart';
import 'package:library_architecture_mvvm_modify/base_model/bool.dart';
import '../model/user/user.dart';
import '../model_named_view_model/bool_view_model/bool_view_model_using_get_np_for_loading.dart';
import '../model_named_view_model/user_sqflite_database_view_model/user_sqflite_database_view_model_using_delete_np_for_all.dart';
import '../model_named_view_model/user_sqflite_database_view_model/user_sqflite_database_view_model_using_get_list_np.dart';

class ListOfViewModelForMainView
    extends BaseListOfViewModelForNamedView
{
  final UserSqfliteDatabaseViewModelUsingGetListNP _userSqfliteDatabaseViewModelUsingGetListNP = UserSqfliteDatabaseViewModelUsingGetListNP();
  final UserSqfliteDatabaseViewModelUsingDeleteNPForAll _userSqfliteDatabaseViewModelUsingDeleteNPForAll = UserSqfliteDatabaseViewModelUsingDeleteNPForAll();
  final BoolViewModelUsingGetNPForLoading _boolViewModelUsingGetNPForLoading = BoolViewModelUsingGetNPForLoading();

  ListOfViewModelForMainView() {
    _getListUserFromSqfliteDatabaseNPAndSetListUserAndAlsoOneTasks();
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

  Future<void> _getListUserFromSqfliteDatabaseNPAndSetListUserAndAlsoOneTasks()
  async {
    _boolViewModelUsingGetNPForLoading
        .getBoolUsingGetNPForLoading
        .isField = true;
    _boolViewModelUsingGetNPForLoading
        .notifyStreamBoolUsingGetNPForLoading();
    // 1
    var result = await _userSqfliteDatabaseViewModelUsingGetListNP
        .getListUserFromSqfliteDatabaseNPAndSetListUser();
    if(result.isExceptionResponse()) {
      _boolViewModelUsingGetNPForLoading
          .getBoolUsingGetNPForLoading
          .isField = false;
      _boolViewModelUsingGetNPForLoading
          .notifyStreamBoolUsingGetNPForLoading();
      return;
    }
    _userSqfliteDatabaseViewModelUsingGetListNP
        .notifyStreamListUserUsingGetListNP();
    _boolViewModelUsingGetNPForLoading
        .getBoolUsingGetNPForLoading
        .isField = false;
    _boolViewModelUsingGetNPForLoading
        .notifyStreamBoolUsingGetNPForLoading();
    return;
  }

  Future<void> deleteUserToSqfliteDatabaseNPAndAlsoTwoTasks(
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