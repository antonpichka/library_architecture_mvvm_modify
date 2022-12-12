import 'package:library_arch_mvvm_modify_firebase_login/model/emailInput/EmailInput.dart';
import 'package:library_arch_mvvm_modify_firebase_login/model/emailInput/ListEmailInput.dart';
import 'package:library_architecture_mvvm_modify/base_model/interface_clone_model_for_success/i_clone_model_for_success.dart';

class CloneEmailInputForSuccess
    implements ICloneModelForSuccess<EmailInput,ListEmailInput>
{
  @override
  EmailInput? cloneModelForSuccess(EmailInput? model) {
    return EmailInput.success(model?.getParameterEmail);
  }

  @override
  ListEmailInput? cloneListModelForSuccess(ListEmailInput? listModel) {
    return ListEmailInput.success(listModel?.getParameterList);
  }
}