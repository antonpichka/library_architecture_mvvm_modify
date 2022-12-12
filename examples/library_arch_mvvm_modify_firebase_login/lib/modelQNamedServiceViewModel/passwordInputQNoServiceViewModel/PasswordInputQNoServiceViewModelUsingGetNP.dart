import 'package:library_arch_mvvm_modify_firebase_login/model/passwordInput/ListPasswordInput.dart';
import 'package:library_arch_mvvm_modify_firebase_login/model/passwordInput/PasswordInput.dart';
import 'package:library_arch_mvvm_modify_firebase_login/modelQNamedServiceViewModel/PasswordInputQNamedServiceViewModel.dart';
import 'package:library_architecture_mvvm_modify/base_model/interface_clone_stream_model_for_success/i_clone_stream_model_for_success.dart';
import 'package:library_architecture_mvvm_modify/base_model_q_named_service_view_model/enum_base_model_and_base_list_model_vm.dart';

class PasswordInputQNoServiceViewModelUsingGetNP<T extends PasswordInput,Y extends ListPasswordInput>
    extends PasswordInputQNamedServiceViewModel<T,Y,Object>
{
  PasswordInputQNoServiceViewModelUsingGetNP(ICloneStreamModelForSuccess<T,Y> iCloneStreamModelForSuccess) : super.noDataSource([EnumBaseModelAndBaseListModelVM.getModelFromNamedServiceNP],iCloneStreamModelForSuccess);

  @override
  Object thisClass() {
    return this;
  }

  Stream<T>? get getStreamPasswordInputUsingGetNP {
    return getStreamModel(EnumBaseModelAndBaseListModelVM.getModelFromNamedServiceNP);
  }

  T? get getPasswordInputUsingGetNP {
    return getModel(EnumBaseModelAndBaseListModelVM.getModelFromNamedServiceNP);
  }

  void notifyStreamPasswordInputUsingGetNP() {
    notifyStreamModel(EnumBaseModelAndBaseListModelVM.getModelFromNamedServiceNP);
  }
}