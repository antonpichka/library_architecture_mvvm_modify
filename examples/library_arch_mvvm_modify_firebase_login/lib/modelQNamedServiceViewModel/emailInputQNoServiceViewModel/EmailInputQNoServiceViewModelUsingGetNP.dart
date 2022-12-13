import 'package:library_arch_mvvm_modify_firebase_login/model/emailInput/EmailInput.dart';
import 'package:library_arch_mvvm_modify_firebase_login/model/emailInput/ListEmailInput.dart';
import 'package:library_arch_mvvm_modify_firebase_login/modelQNamedServiceViewModel/EmailInputQNamedServiceViewModel.dart';
import 'package:library_architecture_mvvm_modify/base_model/interface_clone_stream_model_for_success/i_clone_stream_model_for_success.dart';
import 'package:library_architecture_mvvm_modify/base_model_q_named_service_view_model/enum_for_i_stream_model_vm.dart';

class EmailInputQNoServiceViewModelUsingGetNP<T extends EmailInput,Y extends ListEmailInput<T>>
    extends EmailInputQNamedServiceViewModel<T,Y,Object>
{
  EmailInputQNoServiceViewModelUsingGetNP(ICloneStreamModelForSuccess<T,Y> iCloneStreamModelForSuccess) : super.noDataSource([EnumForIStreamModelVM.getNP],iCloneStreamModelForSuccess);

  @override
  Object thisClass() {
    return this;
  }

  Stream<T>? get getStreamEmailInputUsingGetNP {
    return getStreamModel(EnumForIStreamModelVM.getNP);
  }

  T? get getEmailInputUsingGetNP {
    return getModel(EnumForIStreamModelVM.getNP);
  }

  void notifyStreamEmailInputUsingGetNP() {
    notifyStreamModel(EnumForIStreamModelVM.getNP);
  }
}