import 'package:library_arch_mvvm_modify_firebase_login/model/passwordInput/ListPasswordInput.dart';
import 'package:library_arch_mvvm_modify_firebase_login/model/passwordInput/PasswordInput.dart';
import 'package:library_architecture_mvvm_modify/base_model/interface_clone_model_for_success/i_clone_model_for_success.dart';

class ClonePasswordInputForSuccess
    implements ICloneModelForSuccess<PasswordInput,ListPasswordInput>
{
  @override
  PasswordInput? cloneModelForSuccess(PasswordInput? model) {
    return PasswordInput.success(model?.getParameterPassword);
  }

  @override
  ListPasswordInput? cloneListModelForSuccess(ListPasswordInput? listModel) {
    return ListPasswordInput.success(listModel?.getParameterList);
  }
}