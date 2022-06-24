import 'package:library_architecture_mvvm_modify/base_exception/base_exception.dart';
import 'package:library_architecture_mvvm_modify/base_view_model/enums_for_view_model/enum_base_list_model_domain_vm.dart';
import 'package:library_architecture_mvvm_modify/response.dart';
import '../../model/user/user_domain.dart';
import '../../model_named_data_source/user_sqflite_database_data_source/user_sqflite_database_data_source_using_get_list_no_parameter.dart';
import 'user_sqflite_database_view_model.dart';

class UserSqfliteDatabaseViewModelUsingGetListNoParameter extends UserSqfliteDatabaseViewModel {
  UserSqfliteDatabaseViewModelUsingGetListNoParameter() : super(
      UserSqfliteDatabaseDataSourceUsingGetListNoParameter.db,
      null,
      null,
      null,
      null,
      null,
      null
  );

  List<UserDomain> get getListUserSqfliteDatabaseUsingGetListNoParameter {
    return getListModel(EnumBaseListModelDomainVM.getListModelFromNamedDatabaseThereIsParameterAndNoThereIsParameter);
  }
  
  Stream<List<UserDomain>> get getStreamListUserSqfliteDatabaseUsingGetListNoParameter {
    return getStreamListModel(EnumBaseListModelDomainVM.getListModelFromNamedDatabaseThereIsParameterAndNoThereIsParameter);
  }
  
  void notifyStreamListUserSqfliteDatabaseUsingGetListNoParameter() {
    notifyStreamListModel(EnumBaseListModelDomainVM.getListModelFromNamedDatabaseThereIsParameterAndNoThereIsParameter);
  }

  Future<Response<List<UserDomain>, BaseException>> getListUserFromSqfliteDatabaseAndUseTheSetters() {
    return getListModelFromNamedDatabaseAndUseTheSetters();
  }

  Response<bool, BaseException> defaultDeleteUserToGetListUser(UserDomain user) {
    return defaultDeleteModelToGetListModel(user);
  }
}