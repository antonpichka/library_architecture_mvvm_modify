import 'package:formz/formz.dart';
import 'package:library_arch_mvvm_modify_firebase_login/utility/Email.dart';
import 'package:library_arch_mvvm_modify_firebase_login/utility/Password.dart';
import 'package:library_architecture_mvvm_modify/utility/base_exception/base_exception.dart';
import 'package:library_architecture_mvvm_modify/utility/base_model/base_model.dart';

class LoginInput
    extends BaseModel
{
  Email? email;
  Password? password;
  FormzStatus? status;

  LoginInput.success(this.email,this.password,this.status) : super.success(email?.value);
  LoginInput.exception(BaseException exception) : super.exception(exception);

  static LoginInput get getLoginInputForSuccess => LoginInput.success(Email.pure(),Password.pure(),FormzStatus.pure);

  set setDirtyConstructorFromStrParameterEmail(
      String str)
  {
    email = Email.dirty(str);
  }

  set setDirtyConstructorFromStrParameterPassword(
      String str)
  {
    password = Password.dirty(str);
  }

  bool isInvalidParameterEmail() {
    return email!.invalid;
  }
}