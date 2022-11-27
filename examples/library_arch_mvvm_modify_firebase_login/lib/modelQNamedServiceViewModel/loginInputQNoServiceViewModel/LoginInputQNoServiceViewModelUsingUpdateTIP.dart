import 'package:library_arch_mvvm_modify_firebase_login/model/loginInput/LoginInput.dart';
import 'package:library_arch_mvvm_modify_firebase_login/modelQNamedServiceViewModel/LoginInputQNamedServiceViewModel.dart';
import 'package:library_architecture_mvvm_modify/base_model_q_named_service_view_model/enum_base_model_and_base_list_model_vm.dart';

class LoginInputQNoServiceViewModelUsingUpdateTIP
    extends LoginInputQNamedServiceViewModel
{
  LoginInputQNoServiceViewModelUsingUpdateTIP() : super.noDataSource([EnumBaseModelAndBaseListModelVM.updateModelToNamedServiceTIP]);

  @override
  Object thisClass() {
    return this;
  }

  Stream<LoginInput> get getStreamLoginInputUsingUpdateTIP {
    return getStreamModel(EnumBaseModelAndBaseListModelVM.updateModelToNamedServiceTIP);
  }

  LoginInput get getLoginInputUsingUpdateTIP {
    return getModel(EnumBaseModelAndBaseListModelVM.updateModelToNamedServiceTIP);
  }

  void notifyStreamLoginInputUsingUpdateTIP() {
    notifyStreamModel(EnumBaseModelAndBaseListModelVM.updateModelToNamedServiceTIP);
  }
}