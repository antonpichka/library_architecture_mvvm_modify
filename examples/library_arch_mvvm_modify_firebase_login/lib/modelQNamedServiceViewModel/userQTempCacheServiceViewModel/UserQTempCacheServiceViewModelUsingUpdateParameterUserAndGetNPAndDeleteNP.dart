import 'package:library_arch_mvvm_modify_firebase_login/model/user/ListUser.dart';
import 'package:library_arch_mvvm_modify_firebase_login/model/user/User.dart';
import 'package:library_arch_mvvm_modify_firebase_login/modelQNamedServiceViewModel/namedService/TempCacheService.dart';
import 'package:library_architecture_mvvm_modify/base_model_q_named_service_view_model/base_model_q_named_service_view_model.dart';
import 'package:library_architecture_mvvm_modify/base_model_q_named_service_view_model/interface_model_q_named_service_data_source/delete_model_to_named_service_np_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_model_q_named_service_view_model/interface_model_q_named_service_data_source/get_model_from_named_service_np_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_model_q_named_service_view_model/interface_model_q_named_service_data_source/update_model_to_named_service_parameter_named_data_source.dart';
import 'package:library_architecture_mvvm_modify/utility/base_exception/base_exception.dart';
import 'package:library_architecture_mvvm_modify/utility/base_exception/local_exception.dart';
import 'package:library_architecture_mvvm_modify/utility/result.dart';
import 'package:meta/meta.dart';

base class UserQTempCacheServiceViewModelUsingUpdateParameterUserAndGetNPAndDeleteNP<
        T extends User,
        Y extends ListUser<T>> extends BaseModelQNamedServiceViewModel<T, Y>
    implements
        UpdateModelToNamedServiceParameterNamedDataSource<bool, T>,
        GetModelFromNamedServiceNPDataSource<T>,
        DeleteModelToNamedServiceNPDataSource<bool> {
  @protected
  final tempCacheService = TempCacheService();

  Future<Result<bool>?> updateUserToTempCacheServiceParameterNamed(
      T parameter) {
    return updateModelToNamedServiceParameterNamed<bool, T>(parameter);
  }

  Future<T?> getUserFromTempCacheServiceNP() {
    return getModelFromNamedServiceNP();
  }

  Future<Result<bool>?> deleteUserToTempCacheServiceNP() {
    return deleteModelToNamedServiceNP<bool>();
  }

  @nonVirtual
  @override
  Object? get modelQNamedServiceDataSource => this;

  @protected
  @override
  Future<Result<bool>?> updateModelToNamedServiceParameterNamedDS(
      T? parameter) async {
    try {
      tempCacheService.getTempCache
          ?.write(User.constUserQTempCacheService, parameter);
      return Result<bool>.success(true);
    } catch (e) {
      return Result<bool>.exception(LocalException(
          this, EnumGuiltyForLocalException.device, e.toString()));
    }
  }

  @protected
  @override
  Future<T?> getModelFromNamedServiceNPDS() async {
    try {
      return getUserFromObject(
          tempCacheService.getTempCache?.read(User.constUserQTempCacheService));
    } catch (e) {
      return getUserFromBaseException(LocalException(
          this, EnumGuiltyForLocalException.device, e.toString()));
    }
  }

  @protected
  @override
  Future<Result<bool>?> deleteModelToNamedServiceNPDS() async {
    try {
      tempCacheService.getTempCache?.delete(User.constUserQTempCacheService);
      return Result<bool>.success(true);
    } catch (e) {
      return Result<bool>.exception(LocalException(
          this, EnumGuiltyForLocalException.device, e.toString()));
    }
  }

  @protected
  T? getUserFromObject(Object? object) {
    if (object == null) {
      return null;
    }
    final user = object as User;
    return User.success(user.uniqueId, user.email, user.name, user.photo) as T?;
  }

  @protected
  T? getUserFromBaseException(BaseException? baseException) {
    return User.exception(baseException!) as T?;
  }
}
