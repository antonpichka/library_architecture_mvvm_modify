import 'package:library_arch_mvvm_modify_firebase_login/model/user/ListUser.dart';
import 'package:library_arch_mvvm_modify_firebase_login/model/user/User.dart';
import 'package:library_arch_mvvm_modify_firebase_login/modelQNamedServiceViewModel/namedService/TempCacheService.dart';
import 'package:library_architecture_mvvm_modify/base_model/interface_model_for_named/i_model_for_named_tip.dart';
import 'package:library_architecture_mvvm_modify/base_model_q_named_service_view_model/base_model_q_named_service_view_model.dart';
import 'package:library_architecture_mvvm_modify/base_model_q_named_service_view_model/interface_model_q_named_service_data_source/delete_model_to_named_service_np_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_model_q_named_service_view_model/interface_model_q_named_service_data_source/get_model_from_named_service_np_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_model_q_named_service_view_model/interface_model_q_named_service_data_source/update_model_to_named_service_parameter_named_data_source.dart';
import 'package:library_architecture_mvvm_modify/utility/base_exception/local_exception.dart';
import 'package:library_architecture_mvvm_modify/utility/result.dart';
import 'package:meta/meta.dart';

class UserQTempCacheServiceViewModelUsingUpdateParameterUserAndGetNPAndDeleteNP<T extends User,Y extends ListUser<T>>
    extends BaseModelQNamedServiceViewModel<T,Y>
    implements
        UpdateModelToNamedServiceParameterNamedDataSource<bool,T>,
        GetModelFromNamedServiceNPDataSource<T>,
        DeleteModelToNamedServiceNPDataSource<bool>
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


  Future<Result<bool>?> updateUserToTempCacheServiceParameterNamed(T parameter) {
    return updateModelToNamedServiceParameterNamed<bool,T>(parameter);
  }

  Future<T?> getUserFromTempCacheServiceNP() {
    return getModelFromNamedServiceNP();
  }

  Future<Result<bool>?> deleteUserToTempCacheServiceNP() {
    return deleteModelToNamedServiceNP<bool>();
  }

  @protected
  @override
  Object? get modelQNamedServiceDataSource => this;

  @protected
  @override
  Future<Result<bool>?> updateModelToNamedServiceParameterNamedDS(
      T? parameter)
  async {
    try {
      tempCacheService
          .getTempCacheSingleton
          ?.getTempCache
          ?.write<T>(User.constUserQTempCacheService, parameter);
      return Result<bool>.success(true);
    } catch (e) {
      return Result<bool>.exception(LocalException(this,EnumGuiltyForLocalException.device,e.toString()));
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
  Future<Result<bool>?> deleteModelToNamedServiceNPDS()
  async {
    try {
      tempCacheService
          .getTempCacheSingleton
          ?.getTempCache
          ?.delete(User.constUserQTempCacheService);
      return Result<bool>.success(true);
    } catch (e) {
      return Result<bool>.exception(LocalException(this,EnumGuiltyForLocalException.device,e.toString()));
    }
  }
}