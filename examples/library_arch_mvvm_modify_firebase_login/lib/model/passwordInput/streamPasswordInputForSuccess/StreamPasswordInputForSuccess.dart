import 'package:library_arch_mvvm_modify_firebase_login/model/passwordInput/ListPasswordInput.dart';
import 'package:library_arch_mvvm_modify_firebase_login/model/passwordInput/PasswordInput.dart';
import 'package:library_architecture_mvvm_modify/base_model/interface_stream_model_for_success/i_stream_model_for_success.dart';
import 'package:library_architecture_mvvm_modify/utility/interface_stream_model/default_stream_model.dart';
import 'package:library_architecture_mvvm_modify/utility/interface_stream_model/i_stream_model.dart';

class StreamPasswordInputForSuccess
    implements IStreamModelForSuccess<PasswordInput,ListPasswordInput<PasswordInput>>
{
  @override
  IStreamModel<PasswordInput,ListPasswordInput<PasswordInput>>? streamModelForSuccess() {
    return DefaultStreamModel<PasswordInput,ListPasswordInput<PasswordInput>>(PasswordInput.getPasswordInputForSuccess, ListPasswordInput.success([]));
  }
}