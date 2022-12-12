import 'package:library_arch_mvvm_modify_firebase_login/model/passwordInput/ListPasswordInput.dart';
import 'package:library_arch_mvvm_modify_firebase_login/model/passwordInput/PasswordInput.dart';
import 'package:library_architecture_mvvm_modify/base_model/interface_clone_stream_model_for_success/i_clone_stream_model_for_success.dart';
import 'package:library_architecture_mvvm_modify/utility/interface_stream_model/default_stream_model.dart';
import 'package:library_architecture_mvvm_modify/utility/interface_stream_model/i_stream_model.dart';

class CloneStreamPasswordInputForSuccess
    implements ICloneStreamModelForSuccess<PasswordInput,ListPasswordInput>
{
  @override
  IStreamModel<PasswordInput,ListPasswordInput>? cloneStreamModelForSuccess() {
    return DefaultStreamModel<PasswordInput,ListPasswordInput>(PasswordInput.getPasswordInputForSuccess, ListPasswordInput.success([]));
  }
}