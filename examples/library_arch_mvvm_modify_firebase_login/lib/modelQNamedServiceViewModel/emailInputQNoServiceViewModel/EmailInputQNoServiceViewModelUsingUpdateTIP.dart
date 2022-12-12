import 'package:library_arch_mvvm_modify_firebase_login/model/emailInput/EmailInput.dart';
import 'package:library_arch_mvvm_modify_firebase_login/model/emailInput/ListEmailInput.dart';
import 'package:library_arch_mvvm_modify_firebase_login/modelQNamedServiceViewModel/EmailInputQNamedServiceViewModel.dart';
import 'package:library_architecture_mvvm_modify/base_model/interface_clone_model_for_success/i_clone_model_for_success.dart';
import 'package:library_architecture_mvvm_modify/base_model/interface_clone_model_for_success/i_clone_stream_model_for_success.dart';
import 'package:library_architecture_mvvm_modify/base_model_q_named_service_view_model/enum_base_model_and_base_list_model_vm.dart';

class EmailInputQNoServiceViewModelUsingUpdateTIP<T extends EmailInput,Y extends ListEmailInput>
    extends EmailInputQNamedServiceViewModel<T,Y,Object>
{
  EmailInputQNoServiceViewModelUsingUpdateTIP(ICloneModelForSuccess<T,Y> iCloneModelForSuccess,ICloneStreamModelForSuccess<T,Y> iCloneStreamModelForSuccess) : super.noDataSource([EnumBaseModelAndBaseListModelVM.updateModelToNamedServiceTIP],iCloneModelForSuccess,iCloneStreamModelForSuccess);

  @override
  Object thisClass() {
    return this;
  }

  Stream<T>? get getStreamEmailInputUsingUpdateTIP {
    return getStreamModel(EnumBaseModelAndBaseListModelVM.updateModelToNamedServiceTIP);
  }

  T? get getEmailInputUsingUpdateTIP {
    return getModel(EnumBaseModelAndBaseListModelVM.updateModelToNamedServiceTIP);
  }

  void notifyStreamEmailInputUsingUpdateTIP() {
    notifyStreamModel(EnumBaseModelAndBaseListModelVM.updateModelToNamedServiceTIP);
  }
}