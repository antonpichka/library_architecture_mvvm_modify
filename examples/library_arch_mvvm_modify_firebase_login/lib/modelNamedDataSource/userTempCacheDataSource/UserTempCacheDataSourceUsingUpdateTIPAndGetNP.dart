import 'package:library_arch_mvvm_modify_firebase_login/model/userTempCache/UserTempCache.dart';
import 'package:library_arch_mvvm_modify_firebase_login/utility/customDataSource/DefaultTempCacheDataSource.dart';
import 'package:library_architecture_mvvm_modify/base_exception/base_exception.dart';
import 'package:library_architecture_mvvm_modify/base_exception/local_exception.dart';
import 'package:library_architecture_mvvm_modify/base_type_parameter/bool_type_parameter.dart';
import 'package:library_architecture_mvvm_modify/interface_data_source/get_model_from_named_np_data_source.dart';
import 'package:library_architecture_mvvm_modify/interface_data_source/update_model_to_named_tip_data_source.dart';
import 'package:library_architecture_mvvm_modify/response/response.dart';

class UserTempCacheDataSourceUsingUpdateTIPAndGetNP
    extends DefaultTempCacheDataSource
    implements
        UpdateModelToNamedTIPDataSource<UserTempCache>,
        GetModelFromNamedNPDataSource<UserTempCache>
{
  @override
  Future<Response<BoolTypeParameter, BaseException>> updateModelToNamedTIP(
      UserTempCache modelNamed)
  async {
    try {
      getTempCache.write<UserTempCache>(UserTempCache.constUserTempCache, modelNamed);
      return Response.success(BoolTypeParameter(true));
    } catch (e) {
      return Response.exception(LocalException(this,EnumGuiltyForLocalException.device,e.toString()));
    }
  }

  @override
  Future<Response<UserTempCache, BaseException>> getModelFromNamedNP()
  async {
    try {
      return Response.success(getTempCache.read<UserTempCache>(UserTempCache.constUserTempCache));
    } catch (e) {
      return Response.exception(LocalException(this,EnumGuiltyForLocalException.device,e.toString()));
    }
  }
}