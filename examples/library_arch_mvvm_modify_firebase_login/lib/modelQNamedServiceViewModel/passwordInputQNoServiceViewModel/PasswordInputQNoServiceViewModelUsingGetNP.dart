import 'package:flutter/foundation.dart';
import 'package:library_arch_mvvm_modify_firebase_login/model/passwordInput/ListPasswordInput.dart';
import 'package:library_arch_mvvm_modify_firebase_login/model/passwordInput/PasswordInput.dart';
import 'package:library_arch_mvvm_modify_firebase_login/modelQNamedServiceViewModel/PasswordInputQNamedServiceViewModel.dart';
import 'package:library_architecture_mvvm_modify/base_model/interface_clone_stream_model_for_success/i_clone_stream_model_for_success.dart';
import 'package:library_architecture_mvvm_modify/base_model_q_named_service_view_model/enum_for_i_stream_model_vm.dart';

class PasswordInputQNoServiceViewModelUsingGetNP<T extends PasswordInput,Y extends ListPasswordInput<T>>
    extends PasswordInputQNamedServiceViewModel<T,Y>
{
  PasswordInputQNoServiceViewModelUsingGetNP(ICloneStreamModelForSuccess<T,Y> iCloneStreamModelForSuccess) : super.noDataSource([EnumForIStreamModelVM.getNP],iCloneStreamModelForSuccess);

  @protected
  @override
  Object get thisClass => this;

  @protected
  @override
  Object? get getModelQNamedServiceDataSource => null;

  Stream<T>? get getStreamPasswordInputUsingGetNP {
    return getStreamModel(EnumForIStreamModelVM.getNP);
  }

  T? get getPasswordInputUsingGetNP {
    return getModel(EnumForIStreamModelVM.getNP);
  }

  void notifyStreamPasswordInputUsingGetNP() {
    notifyStreamModel(EnumForIStreamModelVM.getNP);
  }
}