import 'package:flutter/foundation.dart';
import 'package:library_arch_mvvm_modify_firebase_login/model/user/ListUser.dart';
import 'package:library_arch_mvvm_modify_firebase_login/model/user/User.dart';
import 'package:library_arch_mvvm_modify_firebase_login/modelQNamedServiceDataSource/userQTempCacheServiceDataSource/UserQTempCacheServiceDataSourceUsingUpdateParameterUserAndGetNPAndDeleteNP.dart';
import 'package:library_arch_mvvm_modify_firebase_login/modelQNamedServiceViewModel/UserQNamedServiceViewModel.dart';
import 'package:library_architecture_mvvm_modify/base_model/interface_model_for_named/i_model_for_named_tip.dart';
import 'package:library_architecture_mvvm_modify/base_model_q_named_service_view_model/enum_for_i_stream_model_vm.dart';
import 'package:library_architecture_mvvm_modify/utility/base_exception/local_exception.dart';
import 'package:library_architecture_mvvm_modify/utility/base_type_parameter/bool_type_parameter.dart';

class UserQTempCacheServiceViewModelUsingUpdateParameterUserAndGetNPAndDeleteNP<T extends User,Y extends ListUser<T>>
    extends UserQNamedServiceViewModel<T,Y>
{
  final UserQTempCacheServiceDataSourceUsingUpdateParameterUserAndGetNPAndDeleteNP<T,Y> _dataSource;

  UserQTempCacheServiceViewModelUsingUpdateParameterUserAndGetNPAndDeleteNP(
      super.iCloneStreamModelForSuccess,
      IModelForNamedTIP<T,LocalException> iUserForLocalExceptionTIP,
      IModelForNamedTIP<T,Object> iUserForObjectTIP)
      : _dataSource = UserQTempCacheServiceDataSourceUsingUpdateParameterUserAndGetNPAndDeleteNP(iUserForLocalExceptionTIP,iUserForObjectTIP),
        super.thereIsDataSource();

  @protected
  @override
  Object get thisClass => this;

  @protected
  @override
  UserQTempCacheServiceDataSourceUsingUpdateParameterUserAndGetNPAndDeleteNP<T,Y>? get getModelQNamedServiceDataSource => _dataSource;

  Future<T?> getUserFromTempCacheServiceNPAndSetUser() {
    return getModelFromNamedServiceNPAndSetModel();
  }

  Future<BoolTypeParameter?> deleteUserToTempCacheServiceNP() {
    return deleteModelToNamedServiceNP<BoolTypeParameter>();
  }

  Stream<T>? get getStreamUserUsingGetNP {
    return getStreamModel(EnumForIStreamModelVM.getNP);
  }

  void setUserUsingGetNP(T user) {
    setModel(EnumForIStreamModelVM.getNP, user);
  }

  void notifyStreamUserUsingGetNP() {
    notifyStreamModel(EnumForIStreamModelVM.getNP);
  }
}