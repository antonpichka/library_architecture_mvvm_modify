import 'package:library_architecture_mvvm_modify/base_exception/base_exception.dart';
import 'package:library_architecture_mvvm_modify/base_view_model/enums_for_view_model/enum_base_list_model_domain_vm.dart';
import 'package:library_architecture_mvvm_modify/response.dart';
import '../../model/user/user_domain.dart';
import '../../model_named_data_source/user_sqflite_database_data_source/user_sqflite_database_data_source_using_get_list_np.dart';
import 'user_sqflite_database_view_model.dart';

class UserSqfliteDatabaseViewModelUsingGetListNP
    extends UserSqfliteDatabaseViewModel
{
  UserSqfliteDatabaseViewModelUsingGetListNP() : super.thereIsDataSourceUsingMethodSetDataSourceToBodyConstructor()
  {
    setDataSource = UserSqfliteDatabaseDataSourceUsingGetListNP.db;
  }

  @override
  Object thisClass() {
    return this;
  }
  
  Future<Response<List<UserDomain>, BaseException>> getListUserFromSqfliteDatabaseNPAndSetListUser() {
    return getListModelFromNamedDatabaseNPAndSetListModel();
  }

  Response<bool, BaseException> deleteUserToGetListUserNP(UserDomain user) {
    return deleteModelToGetListModelNP(user);
  }

  Stream<List<UserDomain>> get getStreamListUserUsingGetListNP {
    return getStreamListModel(EnumBaseListModelDomainVM.getListModelFromNamedDatabaseNP);
  }

  List<UserDomain> get getListUserUsingGetListNP {
    return getListModel(EnumBaseListModelDomainVM.getListModelFromNamedDatabaseNP);
  }
  
  void notifyStreamListUserUsingGetListNP() {
    notifyStreamListModel(EnumBaseListModelDomainVM.getListModelFromNamedDatabaseNP);
  }
}