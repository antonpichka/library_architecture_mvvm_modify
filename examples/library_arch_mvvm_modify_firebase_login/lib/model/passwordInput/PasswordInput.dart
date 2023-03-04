import 'package:library_arch_mvvm_modify_firebase_login/utility/Password.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_model.dart';

class PasswordInput extends BaseModel {
  Password? password;

  PasswordInput.success(this.password) : super.success(password?.value);

  static PasswordInput get getPasswordInputForSuccess =>
      PasswordInput.success(const Password.pure());

  String? get getOneParametersNamedForPasswordInputWidget => password?.value;
  Password? get getOneParametersNamedForLoginButtonWidget => password;
  String? get getTwoParametersNamedForLoginButtonWidget => password?.value;

  set setOneParametersNamedForPasswordInputWidget(String str) =>
      password = Password.dirty(str);

  bool? isOneParametersNamedForPasswordInputWidget() {
    return password?.invalid;
  }
}
