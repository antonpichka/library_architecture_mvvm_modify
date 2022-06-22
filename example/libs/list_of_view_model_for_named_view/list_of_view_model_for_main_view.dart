import 'package:library_architecture_mvvm_modify/base_list_of_view_model_for_named_view/base_list_of_view_model_for_named_view.dart';
import 'package:library_architecture_mvvm_modify/base_model/bool_domain.dart';
import 'package:library_architecture_mvvm_modify/base_view_model/enums_for_view_model/enum_base_list_model_domain_vm.dart';
import 'package:library_architecture_mvvm_modify/base_view_model/enums_for_view_model/enum_base_model_domain_vm.dart';
import '../model/user/user_domain.dart';
import '../model_named_view_model/bool_domain_view_model/bool_domain_view_model_using_get_for_loading.dart';
import '../model_named_view_model/user_sqflite_database_view_model/user_sqflite_database_view_model_using_all.dart';
import '../model_named_view_model/user_sqflite_database_view_model/user_sqflite_database_view_model_using_delete_for_all.dart';

class ListOfViewModelForMainView
    extends BaseListOfViewModelForNamedView
{
  final UserSqfliteDatabaseViewModelUsingAll _userSqfliteDatabaseViewModelUsingAll = UserSqfliteDatabaseViewModelUsingAll();
  final UserSqfliteDatabaseViewModelUsingDeleteForAll _userSqfliteDatabaseViewModelUsingDeleteForAll = UserSqfliteDatabaseViewModelUsingDeleteForAll();
  final BoolDomainViewModelUsingGetForLoading _boolDomainViewModelUsingGetForLoading = BoolDomainViewModelUsingGetForLoading();

  ListOfViewModelForMainView();

  @override
  void dispose() {
    _userSqfliteDatabaseViewModelUsingAll.dispose();
    _userSqfliteDatabaseViewModelUsingDeleteForAll.dispose();
    _boolDomainViewModelUsingGetForLoading.dispose();
  }

  /// Start Stream/Future Methods **/
  
  Stream<List<UserDomain>> get getStreamListUserSqfliteDatabaseUsingGetList {
    return _userSqfliteDatabaseViewModelUsingAll.getStreamListModel(EnumBaseListModelDomainVM.getListModelFromNamedDatabaseThereIsParameterAndNoThereIsParameter);
  }

  Stream<BoolDomain> get getStreamBoolDomainUsingGetForLoading {
    return _boolDomainViewModelUsingGetForLoading.getStreamModel(EnumBaseModelDomainVM.getModelFromNamedDatabaseThereIsParameter);
  }

  /// End Stream/Future Methods **/

  /// Start Getters Methods **/

  /// End Getters Methods **/

  /// Start Setters Methods **/

  /// End Setters Methods **/

  /// Start Any Methods **/

  Future<void> getListUserFromSqfliteDatabase(
      Function functionForSuccess)
  async {
    // 1
    _boolDomainViewModelUsingGetForLoading
        .getModel(EnumBaseModelDomainVM.getModelFromNamedDatabaseThereIsParameter)
        .isField = true;
    _boolDomainViewModelUsingGetForLoading
        .notifyStreamModel(EnumBaseModelDomainVM.getModelFromNamedDatabaseThereIsParameter);
    var result = await _userSqfliteDatabaseViewModelUsingAll
        .getListModelFromNamedDatabaseAndUseTheSetters();
    if(result.isExceptionResponse) {
      _boolDomainViewModelUsingGetForLoading
          .getModel(EnumBaseModelDomainVM.getModelFromNamedDatabaseThereIsParameter)
          .isField = false;
      _boolDomainViewModelUsingGetForLoading
          .notifyStreamModel(EnumBaseModelDomainVM.getModelFromNamedDatabaseThereIsParameter);
      return;
    }
    _userSqfliteDatabaseViewModelUsingAll
        .notifyStreamListModel(EnumBaseListModelDomainVM.getListModelFromNamedDatabaseThereIsParameterAndNoThereIsParameter);
    _boolDomainViewModelUsingGetForLoading
        .getModel(EnumBaseModelDomainVM.getModelFromNamedDatabaseThereIsParameter)
        .isField = false;
    _boolDomainViewModelUsingGetForLoading
        .notifyStreamModel(EnumBaseModelDomainVM.getModelFromNamedDatabaseThereIsParameter);
    functionForSuccess();
    return;
  }

  Future<void> deleteUserToSqfliteDatabaseThereIsParameter(
      UserDomain userDomain,
      Function functionForSuccess,
      Function(String) functionForStringException)
  async {
    // 1
    var result = await _userSqfliteDatabaseViewModelUsingDeleteForAll
        .setAndDeleteModelToNamedDatabaseThereIsParameter(userDomain);
    if(result.isExceptionResponse) {
      functionForStringException(result
          .getException
          .getSelectedExceptionInString);
      return;
    }
    // 2
    var resultTwo = _userSqfliteDatabaseViewModelUsingAll
        .setAndDeleteModelToGetListModel(userDomain);
    if(resultTwo.isExceptionResponse) {
      functionForStringException(resultTwo
          .getException
          .getSelectedExceptionInString);
      return;
    }
    _userSqfliteDatabaseViewModelUsingAll
        .notifyStreamListModel(EnumBaseListModelDomainVM.getListModelFromNamedDatabaseThereIsParameterAndNoThereIsParameter);
    functionForSuccess();
    return;
  }

  /// End Any Methods **/
}