import 'package:library_arch_mvvm_modify_firebase_login/model/user/ListUser.dart';
import 'package:library_arch_mvvm_modify_firebase_login/model/user/User.dart';
import 'package:library_arch_mvvm_modify_firebase_login/modelQNamedServiceDataSource/userQTempCacheServiceDataSource/UserQTempCacheServiceDataSourceUsingUpdateTIPAndGetNPAndDeleteNP.dart';
import 'package:library_arch_mvvm_modify_firebase_login/modelQNamedServiceViewModel/UserQNamedServiceViewModel.dart';
import 'package:library_architecture_mvvm_modify/base_model/interface_clone_model_for_success/i_clone_model_for_success.dart';
import 'package:library_architecture_mvvm_modify/base_model/interface_clone_model_for_success/i_clone_stream_model_for_success.dart';
import 'package:library_architecture_mvvm_modify/base_model/interface_model_for_named/i_model_for_named_tip.dart';
import 'package:library_architecture_mvvm_modify/base_model_q_named_service_view_model/enum_base_model_and_base_list_model_vm.dart';
import 'package:library_architecture_mvvm_modify/utility/base_exception/local_exception.dart';
import 'package:library_architecture_mvvm_modify/utility/base_type_parameter/bool_type_parameter.dart';

class UserQTempCacheServiceViewModelUsingUpdateTIPAndGetNPAndDeleteNP<T extends User,Y extends ListUser>
    extends UserQNamedServiceViewModel<T,Y,UserQTempCacheServiceDataSourceUsingUpdateTIPAndGetNPAndDeleteNP<T,Y>>
{
  UserQTempCacheServiceViewModelUsingUpdateTIPAndGetNPAndDeleteNP(ICloneModelForSuccess<T,Y> iCloneModelForSuccess, ICloneStreamModelForSuccess<T,Y> iCloneStreamModelForSuccess,IModelForNamedTIP<T,LocalException> userForLocalExceptionTIP) : super.thereIsDataSource(UserQTempCacheServiceDataSourceUsingUpdateTIPAndGetNPAndDeleteNP(userForLocalExceptionTIP),iCloneModelForSuccess,iCloneStreamModelForSuccess);

  @override
  Object thisClass() {
    return this;
  }

  Future<T?> getUserFromTempCacheServiceNPAndSetUser() {
    return getModelFromNamedServiceNPAndSetModel();
  }

  Future<BoolTypeParameter?> deleteUserToTempCacheServiceNP() {
    return deleteModelToNamedServiceNP<BoolTypeParameter>();
  }

  Stream<T>? get getStreamUserUsingGetNP {
    return getStreamModel(EnumBaseModelAndBaseListModelVM.getModelFromNamedServiceNP);
  }

  void setUserUsingGetNP(T user) {
    setModel(EnumBaseModelAndBaseListModelVM.getModelFromNamedServiceNP, user);
  }

  void notifyStreamUserUsingGetNP() {
    notifyStreamModel(EnumBaseModelAndBaseListModelVM.getModelFromNamedServiceNP);
  }
}