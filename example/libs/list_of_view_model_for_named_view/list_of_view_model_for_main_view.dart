import 'package:library_architecture_mvvm_modify/base_exception/base_exception.dart';
import 'package:library_architecture_mvvm_modify/base_list_of_view_model_for_named_view/base_list_of_view_model_for_named_view.dart';
import 'package:library_architecture_mvvm_modify/base_model/bool_domain.dart';
import 'package:library_architecture_mvvm_modify/base_type_parameter/base_type_parameter.dart';
import 'package:library_architecture_mvvm_modify/base_view_model/bool_domain_view_model.dart';
import 'package:library_architecture_mvvm_modify/base_view_model/enums_for_view_model/enum_base_list_model_domain_vm.dart';
import 'package:library_architecture_mvvm_modify/base_view_model/enums_for_view_model/enum_base_model_domain_vm.dart';
import 'package:library_architecture_mvvm_modify/response.dart';
import '../model/user/user_domain.dart';
import '../model_named_view_model/user_sqflite_database_view_model/user_sqflite_database_view_model_using_all.dart';
import '../model_named_view_model/user_sqflite_database_view_model/user_sqflite_database_view_model_using_delete_for_all.dart';

class ListOfViewModelForMainView extends BaseListOfViewModelForNamedView
{
  UserSqfliteDatabaseViewModelUsingAll _userSqfliteDatabaseViewModelUsingAll;
  UserSqfliteDatabaseViewModelUsingDeleteForAll _userSqfliteDatabaseViewModelUsingDeleteForAll;
  BoolDomainViewModel _boolDomainViewModelForLoading;

  ListOfViewModelForMainView() {
    _userSqfliteDatabaseViewModelUsingAll = UserSqfliteDatabaseViewModelUsingAll();
    _userSqfliteDatabaseViewModelUsingDeleteForAll = UserSqfliteDatabaseViewModelUsingDeleteForAll();
    _boolDomainViewModelForLoading = BoolDomainViewModel();
  }

  @override
  void dispose() {
    _userSqfliteDatabaseViewModelUsingAll.dispose();
    _userSqfliteDatabaseViewModelUsingDeleteForAll.dispose();
    _boolDomainViewModelForLoading.dispose();
  }

  /// Start Stream/Future Methods **/
  
  Stream<List<UserDomain>> get getStreamListUserSqfliteDatabaseForUsingAllNamedGetList {
    return _userSqfliteDatabaseViewModelUsingAll.getStreamListModel(EnumBaseListModelDomainVM.getListModelFromNamedDatabaseThereIsParameterAndNoThereIsParameter);
  }

  Stream<BoolDomain> get getStreamBoolDomainForLoadingNamedGet {
    return _boolDomainViewModelForLoading.getStreamModel(EnumBaseModelDomainVM.getModelFromNamedDatabaseThereIsParameter);
  }

  /// End Stream/Future Methods **/

  /// Start Getters Methods **/


  /// End Getters Methods **/

  /// Start Setters Methods **/

  /// End Setters Methods **/

  /* Other functions name any */

  Future<void> getListUserSqfliteDatabase(
      Function functionForSuccess)
  async {
    // 1
    _boolDomainViewModelForLoading
        .getModel(EnumBaseModelDomainVM.getModelFromNamedDatabaseThereIsParameter)
        .field = true;
    _boolDomainViewModelForLoading
        .notifyStreamModel(EnumBaseModelDomainVM.getModelFromNamedDatabaseThereIsParameter);
    Response<List<UserDomain>,BaseException> response = await _userSqfliteDatabaseViewModelUsingAll
        .getListModelFromNamedDatabaseAndUseTheSetters();
    if(response.isExceptionResponse) {
      _boolDomainViewModelForLoading
          .getModel(EnumBaseModelDomainVM.getModelFromNamedDatabaseThereIsParameter)
          .field = false;
      _boolDomainViewModelForLoading
          .notifyStreamModel(EnumBaseModelDomainVM.getModelFromNamedDatabaseThereIsParameter);
      return;
    }
    _userSqfliteDatabaseViewModelUsingAll
        .notifyStreamListModel(EnumBaseListModelDomainVM.getListModelFromNamedDatabaseThereIsParameterAndNoThereIsParameter);
    _boolDomainViewModelForLoading
        .getModel(EnumBaseModelDomainVM.getModelFromNamedDatabaseThereIsParameter)
        .field = false;
    _boolDomainViewModelForLoading
        .notifyStreamModel(EnumBaseModelDomainVM.getModelFromNamedDatabaseThereIsParameter);
    functionForSuccess();
    return;
  }

  Future<void> deleteUserSqfliteDatabase(
      UserDomain userDomain,
      Function functionForSuccess,
      Function(String) functionForStringException)
  async {
    // 1
    Response<BaseTypeParameter,BaseException> response = await _userSqfliteDatabaseViewModelUsingDeleteForAll
        .setAndDeleteModelToNamedDatabaseThereIsParameter(userDomain);
    if(response.isExceptionResponse) {
      functionForStringException(response
          .getException
          .getSelectedExceptionInString);
      return;
    }
    _userSqfliteDatabaseViewModelUsingAll
        .setAndDeleteModelToGetListModel(userDomain);
    _userSqfliteDatabaseViewModelUsingAll
        .notifyStreamListModel(EnumBaseListModelDomainVM.getListModelFromNamedDatabaseThereIsParameterAndNoThereIsParameter);
    functionForSuccess();
    return;
  }

}