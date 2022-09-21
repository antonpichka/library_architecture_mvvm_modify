import 'package:library_architecture_mvvm_modify/base_list_of_view_model_for_named_view/base_list_of_view_model_for_named_view.dart';
import 'package:library_architecture_mvvm_modify/base_model/bool_domain.dart';
import '../model/user/user_domain.dart';
import '../model_named_view_model/bool_domain_view_model/bool_domain_view_model_using_get_np_for_loading.dart';
import '../model_named_view_model/user_sqflite_database_view_model/user_sqflite_database_view_model_using_delete_np_for_all.dart';
import '../model_named_view_model/user_sqflite_database_view_model/user_sqflite_database_view_model_using_get_list_np.dart';

class ListOfViewModelForMainView
    extends BaseListOfViewModelForNamedView
{
  final UserSqfliteDatabaseViewModelUsingGetListNP _userSqfliteDatabaseViewModelUsingGetListNP = UserSqfliteDatabaseViewModelUsingGetListNP();
  final UserSqfliteDatabaseViewModelUsingDeleteNPForAll _userSqfliteDatabaseViewModelUsingDeleteNPForAll = UserSqfliteDatabaseViewModelUsingDeleteNPForAll();
  final BoolDomainViewModelUsingGetNPForLoading _boolDomainViewModelUsingGetNPForLoading = BoolDomainViewModelUsingGetNPForLoading();

  ListOfViewModelForMainView() {
    _getListUserFromSqfliteDatabaseNPAndSetListUserAndAlsoOneTasks();
  }

  @override
  void dispose() {
    _userSqfliteDatabaseViewModelUsingGetListNP.dispose();
    _userSqfliteDatabaseViewModelUsingDeleteNPForAll.dispose();
    _boolDomainViewModelUsingGetNPForLoading.dispose();
  }

  /// Start Stream/Future Methods **/
  
  Stream<List<UserDomain>> get getStreamListUserUsingGetListNP {
    return _userSqfliteDatabaseViewModelUsingGetListNP.getStreamListUserUsingGetListNP;
  }

  Stream<BoolDomain> get getStreamBoolUsingGetNPForLoading {
    return _boolDomainViewModelUsingGetNPForLoading.getStreamBoolUsingGetNPForLoading;
  }

  /// End Stream/Future Methods **/

  /// Start Getters Methods **/

  /// End Getters Methods **/

  /// Start Setters Methods **/

  /// End Setters Methods **/

  /// Start Any Methods **/

  Future<void> _getListUserFromSqfliteDatabaseNPAndSetListUserAndAlsoOneTasks()
  async {
    _boolDomainViewModelUsingGetNPForLoading
        .getBoolUsingGetNPForLoading
        .isField = true;
    _boolDomainViewModelUsingGetNPForLoading
        .notifyStreamBoolUsingGetNPForLoading();
    // 1
    var result = await _userSqfliteDatabaseViewModelUsingGetListNP
        .getListUserFromSqfliteDatabaseNPAndSetListUser();
    if(result.isExceptionResponse) {
      _boolDomainViewModelUsingGetNPForLoading
          .getBoolUsingGetNPForLoading
          .isField = false;
      _boolDomainViewModelUsingGetNPForLoading
          .notifyStreamBoolUsingGetNPForLoading();
      return;
    }
    _userSqfliteDatabaseViewModelUsingGetListNP
        .notifyStreamListUserUsingGetListNP();
    _boolDomainViewModelUsingGetNPForLoading
        .getBoolUsingGetNPForLoading
        .isField = false;
    _boolDomainViewModelUsingGetNPForLoading
        .notifyStreamBoolUsingGetNPForLoading();
    return;
  }

  Future<void> deleteUserToSqfliteDatabaseNPAndAlsoTwoTasks(
      UserDomain userDomain,
      Function functionForSuccess,
      Function(String) functionForStringException)
  async {
    // 1
    var result = await _userSqfliteDatabaseViewModelUsingDeleteNPForAll
        .deleteUserToSqfliteDatabaseNP();
    if(result.isExceptionResponse) {
      functionForStringException(result
          .getException
          .toString());
      return;
    }
    // 2
    var resultTwo = _userSqfliteDatabaseViewModelUsingGetListNP
        .deleteUserToGetListUserNP(userDomain);
    if(resultTwo.isExceptionResponse) {
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