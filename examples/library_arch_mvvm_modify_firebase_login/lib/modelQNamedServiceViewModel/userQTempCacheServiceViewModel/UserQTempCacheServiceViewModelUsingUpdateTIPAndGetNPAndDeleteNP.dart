import 'package:library_arch_mvvm_modify_firebase_login/model/user/User.dart';
import 'package:library_arch_mvvm_modify_firebase_login/modelQNamedServiceDataSource/userQTempCacheServiceDataSource/UserQTempCacheServiceDataSourceUsingUpdateTIPAndGetNPAndDeleteNP.dart';
import 'package:library_arch_mvvm_modify_firebase_login/modelQNamedServiceViewModel/UserQNamedServiceViewModel.dart';
import 'package:library_arch_mvvm_modify_firebase_login/utility/namedService/TempCacheService.dart';
import 'package:library_architecture_mvvm_modify/base_model_q_named_service_view_model/enum_base_model_and_base_list_model_vm.dart';
import 'package:library_architecture_mvvm_modify/utility/response.dart';

class UserQTempCacheServiceViewModelUsingUpdateTIPAndGetNPAndDeleteNP
    extends UserQNamedServiceViewModel
{
  UserQTempCacheServiceViewModelUsingUpdateTIPAndGetNPAndDeleteNP(TempCacheService tempCacheService) : super.thereIsDataSource(UserQTempCacheServiceDataSourceUsingUpdateTIPAndGetNPAndDeleteNP(tempCacheService));

  @override
  Object thisClass() {
    return this;
  }

  Future<User> getUserFromTempCacheServiceNPAndSetUser() {
    return getModelFromNamedServiceNPAndSetModel();
  }

  Future<Response> deleteUserToTempCacheServiceNP() {
    return deleteModelToNamedServiceNP();
  }

  Stream<User> get getStreamUserUsingGetNP {
    return getStreamModel(EnumBaseModelAndBaseListModelVM.getModelFromNamedServiceNP);
  }

  void setUserUsingGetNP(User user) {
    setModel(EnumBaseModelAndBaseListModelVM.getModelFromNamedServiceNP, user);
  }

  void notifyStreamUserUsingGetNP() {
    notifyStreamModel(EnumBaseModelAndBaseListModelVM.getModelFromNamedServiceNP);
  }
}