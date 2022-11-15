import 'package:library_arch_mvvm_modify_firebase_login/model/user/User.dart';
import 'package:library_arch_mvvm_modify_firebase_login/utility/namedService/TempCacheService.dart';
import 'package:library_architecture_mvvm_modify/interface_model_q_named_service_data_source/delete_model_to_named_service_np_data_source.dart';
import 'package:library_architecture_mvvm_modify/interface_model_q_named_service_data_source/get_model_from_named_service_np_data_source.dart';
import 'package:library_architecture_mvvm_modify/interface_model_q_named_service_data_source/update_model_to_named_service_tip_data_source.dart';
import 'package:library_architecture_mvvm_modify/utility/base_exception/local_exception.dart';
import 'package:library_architecture_mvvm_modify/utility/response.dart';

class UserQTempCacheServiceDataSourceUsingUpdateTIPAndGetNPAndDeleteNP
    implements
        UpdateModelToNamedServiceTIPDataSource<User>,
        GetModelFromNamedServiceNPDataSource<User>,
        DeleteModelToNamedServiceNPDataSource
{
  final TempCacheService _tempCacheService;

  UserQTempCacheServiceDataSourceUsingUpdateTIPAndGetNPAndDeleteNP(this._tempCacheService);

  @override
  Future<Response> updateModelToNamedServiceTIP(
      User model)
  async {
    try {
      _tempCacheService
          .getTempCacheSingleton
          .getTempCache
          .write<User>(User.constUserQTempCacheService, model);
      return Response.success(true);
    } catch (e) {
      return Response.exception(LocalException(this,EnumGuiltyForLocalException.device,e.toString()));
    }
  }

  @override
  Future<User> getModelFromNamedServiceNP()
  async {
    try {
      return _tempCacheService
          .getTempCacheSingleton
          .getTempCache
          .read<User>(User.constUserQTempCacheService);
    } catch (e) {
      return User.exception(LocalException(this,EnumGuiltyForLocalException.device,e.toString()));
    }
  }

  @override
  Future<Response> deleteModelToNamedServiceNP()
  async {
    try {
      _tempCacheService
          .getTempCacheSingleton
          .getTempCache.delete(User.constUserQTempCacheService);
      return Response.success(true);
    } catch (e) {
      return Response.exception(LocalException(this,EnumGuiltyForLocalException.device,e.toString()));
    }
  }
}