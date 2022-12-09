import 'package:library_arch_mvvm_modify_firebase_login/model/emailInput/EmailInput.dart';
import 'package:library_arch_mvvm_modify_firebase_login/modelQNamedServiceViewModel/EmailInputQNamedServiceViewModel.dart';
import 'package:library_architecture_mvvm_modify/base_model_q_named_service_view_model/enum_base_model_and_base_list_model_vm.dart';

class EmailInputQNoServiceViewModelUsingUpdateTIP
    extends EmailInputQNamedServiceViewModel
{
  EmailInputQNoServiceViewModelUsingUpdateTIP() : super.noDataSource([EnumBaseModelAndBaseListModelVM.updateModelToNamedServiceTIP]);

  @override
  Object thisClass() {
    return this;
  }

  Stream<EmailInput>? get getStreamEmailInputUsingUpdateTIP {
    return getStreamModel(EnumBaseModelAndBaseListModelVM.updateModelToNamedServiceTIP);
  }

  EmailInput? get getEmailInputUsingUpdateTIP {
    return getModel(EnumBaseModelAndBaseListModelVM.updateModelToNamedServiceTIP);
  }

  void notifyStreamEmailInputUsingUpdateTIP() {
    notifyStreamModel(EnumBaseModelAndBaseListModelVM.updateModelToNamedServiceTIP);
  }
}