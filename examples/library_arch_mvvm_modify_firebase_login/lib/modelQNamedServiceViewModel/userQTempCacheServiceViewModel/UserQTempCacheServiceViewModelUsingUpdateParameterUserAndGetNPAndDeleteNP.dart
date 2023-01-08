import 'package:library_arch_mvvm_modify_firebase_login/model/user/ListUser.dart';
import 'package:library_arch_mvvm_modify_firebase_login/model/user/User.dart';
import 'package:library_arch_mvvm_modify_firebase_login/modelQNamedServiceViewModel/namedService/TempCacheService.dart';
import 'package:library_arch_mvvm_modify_firebase_login/utility/namedTypeParameter/UserTypeParameter.dart';
import 'package:library_architecture_mvvm_modify/base_model/interface_model_for_named/i_model_for_named_tip.dart';
import 'package:library_architecture_mvvm_modify/base_model_q_named_service_view_model/base_model_q_named_service_view_model.dart';
import 'package:library_architecture_mvvm_modify/interface_model_q_named_service_data_source/delete_model_to_named_service_np_data_source.dart';
import 'package:library_architecture_mvvm_modify/interface_model_q_named_service_data_source/get_model_from_named_service_np_data_source.dart';
import 'package:library_architecture_mvvm_modify/interface_model_q_named_service_data_source/update_model_to_named_service_parameter_named_data_source.dart';
import 'package:library_architecture_mvvm_modify/utility/base_exception/local_exception.dart';
import 'package:library_architecture_mvvm_modify/utility/base_type_parameter/bool_type_parameter.dart';
import 'package:meta/meta.dart';

class UserQTempCacheServiceViewModelUsingUpdateParameterUserAndGetNPAndDeleteNP<T extends User,Y extends ListUser<T>>
    extends BaseModelQNamedServiceViewModel<T,Y>
    implements
        UpdateModelToNamedServiceParameterNamedDataSource<BoolTypeParameter,UserTypeParameter<T>>,
        GetModelFromNamedServiceNPDataSource<T>,
        DeleteModelToNamedServiceNPDataSource<BoolTypeParameter>
{
  @protected
  final tempCacheService = TempCacheService();
  @protected
  final IModelForNamedTIP<T,LocalException> iUserForLocalExceptionTIP;
  @protected
  final IModelForNamedTIP<T,Object> iUserForObjectTIP;

  UserQTempCacheServiceViewModelUsingUpdateParameterUserAndGetNPAndDeleteNP(
      this.iUserForLocalExceptionTIP,
      this.iUserForObjectTIP);


  Future<BoolTypeParameter?> updateUserToTempCacheServiceParameterNamed(UserTypeParameter<T> parameter) {
    return updateModelToNamedServiceParameterNamed<BoolTypeParameter,UserTypeParameter<T>>(parameter);
  }

  Future<T?> getUserFromTempCacheServiceNP() {
    return getModelFromNamedServiceNP();
  }

  Future<BoolTypeParameter?> deleteUserToTempCacheServiceNP() {
    return deleteModelToNamedServiceNP<BoolTypeParameter>();
  }

  @protected
  @override
  Object? get modelQNamedServiceDataSource => this;

  @protected
  @override
  Future<BoolTypeParameter?> updateModelToNamedServiceParameterNamedDS(
      UserTypeParameter<T>? parameter)
  async {
    try {
      tempCacheService
          .getTempCacheSingleton
          ?.getTempCache
          ?.write<T>(User.constUserQTempCacheService, parameter!.parameter);
      return BoolTypeParameter.success(true);
    } catch (e) {
      return BoolTypeParameter.exception(LocalException(this,EnumGuiltyForLocalException.device,e.toString()));
    }
  }

  @protected
  @override
  Future<T?> getModelFromNamedServiceNPDS()
  async {
    try {
      return iUserForObjectTIP.getModelForNamedTIP(tempCacheService
          .getTempCacheSingleton
          ?.getTempCache
          ?.read(User.constUserQTempCacheService));
    } catch (e) {
      return iUserForLocalExceptionTIP.getModelForNamedTIP(LocalException(this,EnumGuiltyForLocalException.device,e.toString()));
    }
  }

  @protected
  @override
  Future<BoolTypeParameter> deleteModelToNamedServiceNPDS()
  async {
    try {
      tempCacheService
          .getTempCacheSingleton
          ?.getTempCache
          ?.delete(User.constUserQTempCacheService);
      return BoolTypeParameter.success(true);
    } catch (e) {
      return BoolTypeParameter.exception(LocalException(this,EnumGuiltyForLocalException.device,e.toString()));
    }
  }
}