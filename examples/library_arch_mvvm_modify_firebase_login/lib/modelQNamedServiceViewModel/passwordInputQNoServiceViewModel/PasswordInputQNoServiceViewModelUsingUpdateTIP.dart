import 'package:library_arch_mvvm_modify_firebase_login/model/passwordInput/PasswordInput.dart';
import 'package:library_arch_mvvm_modify_firebase_login/modelQNamedServiceViewModel/PasswordInputQNamedServiceViewModel.dart';
import 'package:library_architecture_mvvm_modify/base_model_q_named_service_view_model/enum_base_model_and_base_list_model_vm.dart';

class PasswordInputQNoServiceViewModelUsingUpdateTIP
    extends PasswordInputQNamedServiceViewModel
{
  PasswordInputQNoServiceViewModelUsingUpdateTIP() : super.noDataSource([EnumBaseModelAndBaseListModelVM.updateModelToNamedServiceTIP]);

  @override
  Object thisClass() {
    return this;
  }

  Stream<PasswordInput>? get getStreamPasswordInputUsingUpdateTIP {
    return getStreamModel(EnumBaseModelAndBaseListModelVM.updateModelToNamedServiceTIP);
  }

  PasswordInput? get getPasswordInputUsingUpdateTIP {
    return getModel(EnumBaseModelAndBaseListModelVM.updateModelToNamedServiceTIP);
  }

  void notifyStreamPasswordInputUsingUpdateTIP() {
    notifyStreamModel(EnumBaseModelAndBaseListModelVM.updateModelToNamedServiceTIP);
  }
}