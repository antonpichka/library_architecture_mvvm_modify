import 'package:library_arch_mvvm_modify_firebase_login/model/passwordInput/ListPasswordInputExt.dart';
import 'package:library_arch_mvvm_modify_firebase_login/model/passwordInput/PasswordInputExt.dart';
import 'package:library_architecture_mvvm_modify/base_model/interface_clone_stream_model_for_success/i_clone_stream_model_for_success.dart';
import 'package:library_architecture_mvvm_modify/utility/interface_stream_model/default_stream_model.dart';
import 'package:library_architecture_mvvm_modify/utility/interface_stream_model/i_stream_model.dart';

class CloneStreamPasswordInputExtForSuccess
    implements ICloneStreamModelForSuccess<PasswordInputExt,ListPasswordInputExt<PasswordInputExt>>
{
  @override
  IStreamModel<PasswordInputExt,ListPasswordInputExt<PasswordInputExt>>? cloneStreamModelForSuccess() {
    return DefaultStreamModel<PasswordInputExt,ListPasswordInputExt<PasswordInputExt>>(PasswordInputExt.getPasswordInputExtForSuccess, ListPasswordInputExt.success([]));
  }
}