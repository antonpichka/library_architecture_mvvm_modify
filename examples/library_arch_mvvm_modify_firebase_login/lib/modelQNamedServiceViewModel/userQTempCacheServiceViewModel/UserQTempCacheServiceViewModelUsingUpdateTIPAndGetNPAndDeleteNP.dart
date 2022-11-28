import 'package:library_arch_mvvm_modify_firebase_login/model/user/User.dart';
import 'package:library_arch_mvvm_modify_firebase_login/modelQNamedServiceDataSource/userQTempCacheServiceDataSource/UserQTempCacheServiceDataSourceUsingUpdateTIPAndGetNPAndDeleteNP.dart';
import 'package:library_arch_mvvm_modify_firebase_login/modelQNamedServiceViewModel/UserQNamedServiceViewModel.dart';
import 'package:library_arch_mvvm_modify_firebase_login/utility/namedService/TempCacheService.dart';
import 'package:library_architecture_mvvm_modify/base_model_q_named_service_view_model/enum_base_model_and_base_list_model_vm.dart';
import 'package:library_architecture_mvvm_modify/utility/base_type_parameter/bool_type_parameter.dart';

class UserQTempCacheServiceViewModelUsingUpdateTIPAndGetNPAndDeleteNP
    extends UserQNamedServiceViewModel<UserQTempCacheServiceDataSourceUsingUpdateTIPAndGetNPAndDeleteNP>
{
  UserQTempCacheServiceViewModelUsingUpdateTIPAndGetNPAndDeleteNP(TempCacheService tempCacheService) : super.thereIsDataSource(UserQTempCacheServiceDataSourceUsingUpdateTIPAndGetNPAndDeleteNP(tempCacheService));

  @override
  Object thisClass() {
    return this;
  }

  Future<User?> getUserFromTempCacheServiceNPAndSetUser() {
    return getModelFromNamedServiceNPAndSetModel();
  }

  Future<BoolTypeParameter?> deleteUserToTempCacheServiceNP() {
    return deleteModelToNamedServiceNP<BoolTypeParameter>();
  }

  Stream<User>? get getStreamUserUsingGetNP {
    return getStreamModel(EnumBaseModelAndBaseListModelVM.getModelFromNamedServiceNP);
  }

  void setUserUsingGetNP(User user) {
    setModel(EnumBaseModelAndBaseListModelVM.getModelFromNamedServiceNP, user);
  }

  void notifyStreamUserUsingGetNP() {
    notifyStreamModel(EnumBaseModelAndBaseListModelVM.getModelFromNamedServiceNP);
  }
}