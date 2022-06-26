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

  ListOfViewModelForMainView();

  @override
  void dispose() {
    _userSqfliteDatabaseViewModelUsingGetListNoParameter.dispose();
    _userSqfliteDatabaseViewModelUsingDeleteForAll.dispose();
    _boolDomainViewModelUsingGetForLoading.dispose();
  }

  /// Start Stream/Future Methods **/
  
  Stream<List<UserDomain>> get getStreamListUserSqfliteDatabaseUsingGetListNoParameter {
    return _userSqfliteDatabaseViewModelUsingGetListNoParameter.getStreamListUserSqfliteDatabaseUsingGetListNoParameter;
  }

  Stream<BoolDomain> get getStreamBoolDomainUsingGetForLoading {
    return _boolDomainViewModelUsingGetForLoading.getStreamBoolDomainUsingGetForLoading;
  }

  /// End Stream/Future Methods **/

  /// Start Getters Methods **/

  /// End Getters Methods **/

  /// Start Setters Methods **/

  /// End Setters Methods **/

  /// Start Any Methods **/

  Future<void> getListUserFromSqfliteDatabaseAndUseTheSettersUsingGetListNoParameter(
      Function functionForSuccess)
  async {
    // 1
    _boolDomainViewModelUsingGetForLoading
        .getBoolDomainUsingGetForLoading
        .isField = true;
    _boolDomainViewModelUsingGetForLoading
        .notifyStreamBoolDomainUsingGetForLoading();
    var result = await _userSqfliteDatabaseViewModelUsingGetListNoParameter
        .getListUserFromSqfliteDatabaseAndUseTheSettersUsingGetListNoParameter();
    if(result.isExceptionResponse) {
      _boolDomainViewModelUsingGetForLoading
          .getBoolDomainUsingGetForLoading
          .isField = false;
      _boolDomainViewModelUsingGetForLoading
          .notifyStreamBoolDomainUsingGetForLoading();
      return;
    }
    _userSqfliteDatabaseViewModelUsingGetListNoParameter
        .notifyStreamListUserSqfliteDatabaseUsingGetListNoParameter();
    _boolDomainViewModelUsingGetForLoading
        .getBoolDomainUsingGetForLoading
        .isField = false;
    _boolDomainViewModelUsingGetForLoading
        .notifyStreamBoolDomainUsingGetForLoading();
    functionForSuccess();
    return;
  }

  Future<void> setUserAndDeleteUserToSqfliteDatabaseThereIsParameterAndDefaultListUserForFBDSUsingDeleteForAll(
      UserDomain userDomain,
      Function functionForSuccess,
      Function(String) functionForStringException)
  async {
    // 1
    var result = await _userSqfliteDatabaseViewModelUsingDeleteForAll
        .setUserAndDeleteUserToSqfliteDatabaseThereIsParameterAndDefaultListUserForFBDSUsingDeleteForAll(userDomain, _userSqfliteDatabaseViewModelUsingGetListNoParameter.getListUserSqfliteDatabaseUsingGetListNoParameter);
    if(result.isExceptionResponse) {
      functionForStringException(result
          .getException
          .getSelectedExceptionInString);
      return;
    }
    // 2
    var resultTwo = _userSqfliteDatabaseViewModelUsingGetListNoParameter
        .defaultDeleteUserSqfliteDatabaseToGetListUserSqfliteDatabaseUsingGetListNoParameter(userDomain);
    if(resultTwo.isExceptionResponse) {
      functionForStringException(resultTwo
          .getException
          .getSelectedExceptionInString);
      return;
    }
    _userSqfliteDatabaseViewModelUsingGetListNoParameter
        .notifyStreamListUserSqfliteDatabaseUsingGetListNoParameter();
    functionForSuccess();
    return;
  }

  /// End Any Methods **/
}