import 'package:library_arch_mvvm_modify_firebase_login/utility/Email.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_model.dart';

class EmailInput
    extends BaseModel
{
  Email? email;

  EmailInput.success(this.email) : super.success(email?.value);

  static EmailInput get getEmailInputForSuccess => EmailInput.success(const Email.pure());

  String? get getOneParametersNamedForEmailInputWidget => email?.value;
  Email? get getOneParametersNamedForLoginButtonWidget => email;
  String? get getTwoParametersNamedForLoginButtonWidget => email?.value;
  Email? get getOneParametersNamedForSignUpButtonWidget => email;
  String? get getTwoParametersNamedForSignUpButtonWidget => email?.value;

  set setOneParametersNamedForEmailInputWidget(String str) => email = Email.dirty(str);

  bool? isOneParametersNamedForEmailInputWidget() {
    return email?.invalid;
  }
}