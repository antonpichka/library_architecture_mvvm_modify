import 'package:library_arch_mvvm_modify_firebase_login/modelNamed/userTempCache/UserTempCache.dart';
import 'package:library_arch_mvvm_modify_firebase_login/utility/TempCache.dart';
import 'package:library_architecture_mvvm_modify/interface_data_source/get_model_from_named_np_data_source.dart';
import 'package:library_architecture_mvvm_modify/interface_data_source/update_model_to_named_tip_data_source.dart';
import 'package:library_architecture_mvvm_modify/utility/base_exception/local_exception.dart';
import 'package:library_architecture_mvvm_modify/utility/response.dart';

class UserTempCacheDataSourceUsingUpdateTIPAndGetNP
    implements
        UpdateModelToNamedTIPDataSource<UserTempCache>,
        GetModelFromNamedNPDataSource<UserTempCache>
{
  final TempCache _tempCache;

  UserTempCacheDataSourceUsingUpdateTIPAndGetNP(this._tempCache);

  @override
  Future<Response> updateModelToNamedTIP(
      UserTempCache modelNamed)
  async {
    try {
      _tempCache.write<UserTempCache>(UserTempCache.constUserTempCache, modelNamed);
      return Response.success(true);
    } catch (e) {
      return Response.exception(LocalException(this,EnumGuiltyForLocalException.device,e.toString()));
    }
  }

  @override
  Future<UserTempCache> getModelFromNamedNP()
  async {
    try {
      return _tempCache.read<UserTempCache>(UserTempCache.constUserTempCache);
    } catch (e) {
      return UserTempCache.exception(LocalException(this,EnumGuiltyForLocalException.device,e.toString()));
    }
  }
}