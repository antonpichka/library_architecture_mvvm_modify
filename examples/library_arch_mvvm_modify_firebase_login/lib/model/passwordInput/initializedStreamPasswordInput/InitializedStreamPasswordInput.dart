import 'package:library_arch_mvvm_modify_firebase_login/model/passwordInput/ListPasswordInput.dart';
import 'package:library_arch_mvvm_modify_firebase_login/model/passwordInput/PasswordInput.dart';
import 'package:library_architecture_mvvm_modify/base_model/interface_initialized_stream_model/i_initialized_stream_model.dart';
import 'package:library_architecture_mvvm_modify/utility/interface_stream_model/default_stream_model.dart';
import 'package:library_architecture_mvvm_modify/utility/interface_stream_model/i_stream_model.dart';

class InitializedStreamPasswordInput
    implements IInitializedStreamModel<PasswordInput, ListPasswordInput> {
  @override
  IStreamModel<PasswordInput, ListPasswordInput>? initializedStreamModel() {
    return DefaultStreamModel<PasswordInput, ListPasswordInput>(
        PasswordInput.getPasswordInputForSuccess,
        ListPasswordInput.getListPasswordInputForSuccess);
  }
}
