import 'package:library_architecture_mvvm_modify/base_list_of_view_model_for_named_view/base_list_of_view_model_for_named_view.dart';
import 'package:library_architecture_mvvm_modify/base_model/bool_domain.dart';
import '../model/user/user_domain.dart';
import '../model_named_view_model/bool_domain_view_model/bool_domain_view_model_using_get_for_loading.dart';
import '../model_named_view_model/user_sqflite_database_view_model/user_sqflite_database_view_model_using_delete_for_all.dart';
import '../model_named_view_model/user_sqflite_database_view_model/user_sqflite_database_view_model_using_get_list_no_parameter.dart';

class ListOfViewModelForMainView
    extends BaseListOfViewModelForNamedView
{
  final UserSqfliteDatabaseViewModelUsingGetListNoParameter _userSqfliteDatabaseViewModelUsingGetListNoParameter = UserSqfliteDatabaseViewModelUsingGetListNoParameter();
  final UserSqfliteDatabaseViewModelUsingDeleteForAll _userSqfliteDatabaseViewModelUsingDeleteForAll = UserSqfliteDatabaseViewModelUsingDeleteForAll();
  final BoolDomainViewModelUsingGetForLoading _boolDomainViewModelUsingGetForLoading = BoolDomainViewModelUsingGetForLoading();

  ListOfViewModelForMainView() {
    _getListUserFromSqfliteDatabaseAndUseTheSettersAndAlsoOneTasks();
  }

  @override
  void dispose() {
    _userSqfliteDatabaseViewModelUsingGetListNoParameter.dispose();
    _userSqfliteDatabaseViewModelUsingDeleteForAll.dispose();
    _boolDomainViewModelUsingGetForLoading.dispose();
  }

  /// Start Stream/Future Methods **/
  
  Stream<List<UserDomain>> get getStreamListUserUsingGetListNoParameter {
    return _userSqfliteDatabaseViewModelUsingGetListNoParameter.getStreamListUserUsingGetListNoParameter;
  }

  Stream<BoolDomain> get getStreamBoolUsingGetForLoading {
    return _boolDomainViewModelUsingGetForLoading.getStreamBoolUsingGetForLoading;
  }

  /// End Stream/Future Methods **/

  /// Start Getters Methods **/

  /// End Getters Methods **/

  /// Start Setters Methods **/

  /// End Setters Methods **/

  /// Start Any Methods **/

  Future<void> _getListUserFromSqfliteDatabaseAndUseTheSettersAndAlsoOneTasks()
  async {
    _boolDomainViewModelUsingGetForLoading
        .getBoolUsingGetForLoading
        .isField = true;
    _boolDomainViewModelUsingGetForLoading
        .notifyStreamBoolUsingGetForLoading();
    // 1
    var result = await _userSqfliteDatabaseViewModelUsingGetListNoParameter
        .getListUserFromSqfliteDatabaseAndUseTheSetters();
    if(result.isExceptionResponse) {
      _boolDomainViewModelUsingGetForLoading
          .getBoolUsingGetForLoading
          .isField = false;
      _boolDomainViewModelUsingGetForLoading
          .notifyStreamBoolUsingGetForLoading();
      return;
    }
    _userSqfliteDatabaseViewModelUsingGetListNoParameter
        .notifyStreamListUserUsingGetListNoParameter();
    _boolDomainViewModelUsingGetForLoading
        .getBoolUsingGetForLoading
        .isField = false;
    _boolDomainViewModelUsingGetForLoading
        .notifyStreamBoolUsingGetForLoading();
    return;
  }

  Future<void> setUserAndDeleteUserToSqfliteDatabaseThereIsParameterAndDefaultListUserForFBDSAndAlsoTwoTasks(
      UserDomain userDomain,
      Function functionForSuccess,
      Function(String) functionForStringException)
  async {
    // 1
    var result = await _userSqfliteDatabaseViewModelUsingDeleteForAll
        .setUserAndDeleteUserToSqfliteDatabaseThereIsParameterAndDefaultListUserForFBDS(userDomain, _userSqfliteDatabaseViewModelUsingGetListNoParameter.getListUserUsingGetListNoParameter);
    if(result.isExceptionResponse) {
      functionForStringException(result
          .getException
          .toString());
      return;
    }
    // 2
    var resultTwo = _userSqfliteDatabaseViewModelUsingGetListNoParameter
        .defaultDeleteUserToGetListUser(userDomain);
    if(resultTwo.isExceptionResponse) {
      functionForStringException(resultTwo
          .getException
          .toString());
      return;
    }
    _userSqfliteDatabaseViewModelUsingGetListNoParameter
        .notifyStreamListUserUsingGetListNoParameter();
    functionForSuccess();
    return;
  }

  /// End Any Methods **/
}