import 'package:library_arch_mvvm_modify_firebase_login/utility/Password.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_model.dart';

class PasswordInput
    extends BaseModel
{
  Password? password;

  PasswordInput.success(this.password) : super.success(password?.value);

  static PasswordInput get getPasswordInputForSuccess => PasswordInput.success(Password.pure());

  set setDirtyConstructorFromStrParameterPassword(
      String str)
  {
    password = Password.dirty(str);
  }

  bool isInvalidParameterPassword() {
    return password!.invalid;
  }
}