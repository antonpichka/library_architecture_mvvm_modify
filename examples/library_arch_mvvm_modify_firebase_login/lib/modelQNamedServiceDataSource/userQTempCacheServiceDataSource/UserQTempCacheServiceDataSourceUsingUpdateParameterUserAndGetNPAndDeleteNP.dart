import 'package:flutter/foundation.dart';
import 'package:library_arch_mvvm_modify_firebase_login/model/user/ListUser.dart';
import 'package:library_arch_mvvm_modify_firebase_login/model/user/User.dart';
import 'package:library_arch_mvvm_modify_firebase_login/modelQNamedServiceDataSource/namedService/TempCacheService.dart';
import 'package:library_arch_mvvm_modify_firebase_login/utility/namedTypeParameter/UserTypeParameter.dart';
import 'package:library_architecture_mvvm_modify/base_model/interface_model_for_named/i_model_for_named_tip.dart';
import 'package:library_architecture_mvvm_modify/interface_model_q_named_service_data_source/delete_model_to_named_service_np_data_source.dart';
import 'package:library_architecture_mvvm_modify/interface_model_q_named_service_data_source/get_model_from_named_service_np_data_source.dart';
import 'package:library_architecture_mvvm_modify/interface_model_q_named_service_data_source/update_model_to_named_service_parameter_named_data_source.dart';
import 'package:library_architecture_mvvm_modify/utility/base_exception/local_exception.dart';
import 'package:library_architecture_mvvm_modify/utility/base_type_parameter/bool_type_parameter.dart';

class UserQTempCacheServiceDataSourceUsingUpdateParameterUserAndGetNPAndDeleteNP<T extends User,Y extends ListUser<T>>
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

  UserQTempCacheServiceDataSourceUsingUpdateParameterUserAndGetNPAndDeleteNP(
      this.iUserForLocalExceptionTIP,
      this.iUserForObjectTIP);

  @override
  Future<BoolTypeParameter?> updateModelToNamedServiceParameterNamed(
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

  @override
  Future<T?> getModelFromNamedServiceNP()
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

  @override
  Future<BoolTypeParameter> deleteModelToNamedServiceNP()
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