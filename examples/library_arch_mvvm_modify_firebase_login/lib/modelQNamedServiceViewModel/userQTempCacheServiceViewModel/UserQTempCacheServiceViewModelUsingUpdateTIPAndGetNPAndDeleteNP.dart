import 'package:library_arch_mvvm_modify_firebase_login/model/user/User.dart';
import 'package:library_arch_mvvm_modify_firebase_login/modelQNamedServiceDataSource/userQTempCacheServiceDataSource/UserQTempCacheServiceDataSourceUsingUpdateTIPAndGetNPAndDeleteNP.dart';
import 'package:library_arch_mvvm_modify_firebase_login/modelQNamedServiceViewModel/UserQNamedServiceViewModel.dart';
import 'package:library_arch_mvvm_modify_firebase_login/utility/namedService/TempCacheService.dart';
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
    return super.getModelFromNamedServiceNPAndSetModel();
  }

  Future<Response> deleteUserToTempCacheServiceNP() {
    return super.deleteModelToNamedServiceNP();
  }
}