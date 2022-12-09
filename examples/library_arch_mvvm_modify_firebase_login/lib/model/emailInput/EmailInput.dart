import 'package:library_arch_mvvm_modify_firebase_login/utility/Email.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_model.dart';

class EmailInput
    extends BaseModel
{
  Email? email;

  EmailInput.success(this.email) : super.success(email?.value);

  static EmailInput get getEmailInputForSuccess => EmailInput.success(Email.pure());

  set setDirtyConstructorFromStrParameterEmail(
      String str)
  {
    email = Email.dirty(str);
  }

  bool isInvalidParameterEmail() {
    return email!.invalid;
  }
}