import 'package:library_arch_mvvm_modify_firebase_login/model/user/ListUser.dart';
import 'package:library_arch_mvvm_modify_firebase_login/model/user/User.dart';
import 'package:library_arch_mvvm_modify_firebase_login/modelQNamedServiceDataSource/namedService/TempCacheService.dart';
import 'package:library_architecture_mvvm_modify/base_model/interface_model_for_named/i_model_for_named_tip.dart';
import 'package:library_architecture_mvvm_modify/interface_model_q_named_service_data_source/delete_model_to_named_service_np_data_source.dart';
import 'package:library_architecture_mvvm_modify/interface_model_q_named_service_data_source/get_model_from_named_service_np_data_source.dart';
import 'package:library_architecture_mvvm_modify/interface_model_q_named_service_data_source/update_model_to_named_service_tip_data_source.dart';
import 'package:library_architecture_mvvm_modify/utility/base_exception/local_exception.dart';
import 'package:library_architecture_mvvm_modify/utility/base_type_parameter/bool_type_parameter.dart';

class UserQTempCacheServiceDataSourceUsingUpdateTIPAndGetNPAndDeleteNP<T extends User,Y extends ListUser>
    implements
        UpdateModelToNamedServiceTIPDataSource<BoolTypeParameter,T>,
        GetModelFromNamedServiceNPDataSource<T>,
        DeleteModelToNamedServiceNPDataSource<BoolTypeParameter>
{
  final _tempCacheService = TempCacheService();
  final IModelForNamedTIP<T,LocalException> _userForLocalExceptionTIP;

  UserQTempCacheServiceDataSourceUsingUpdateTIPAndGetNPAndDeleteNP(this._userForLocalExceptionTIP);

  @override
  Future<BoolTypeParameter?> updateModelToNamedServiceTIP(
      T? model)
  async {
    try {
      _tempCacheService
          .getTempCacheSingleton
          ?.getTempCache
          ?.write<T>(User.constUserQTempCacheService, model);
      return BoolTypeParameter.success(true);
    } catch (e) {
      return BoolTypeParameter.exception(LocalException(this,EnumGuiltyForLocalException.device,e.toString()));
    }
  }

  @override
  Future<T?> getModelFromNamedServiceNP()
  async {
    try {
      return _tempCacheService
          .getTempCacheSingleton
          ?.getTempCache
          ?.read<T>(User.constUserQTempCacheService);
    } catch (e) {
      return _userForLocalExceptionTIP.getModelForNamedTIP(LocalException(this,EnumGuiltyForLocalException.device,e.toString()));
    }
  }

  @override
  Future<BoolTypeParameter> deleteModelToNamedServiceNP()
  async {
    try {
      _tempCacheService
          .getTempCacheSingleton
          ?.getTempCache
          ?.delete(User.constUserQTempCacheService);
      return BoolTypeParameter.success(true);
    } catch (e) {
      return BoolTypeParameter.exception(LocalException(this,EnumGuiltyForLocalException.device,e.toString()));
    }
  }
}