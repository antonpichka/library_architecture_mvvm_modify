import 'package:flutter/foundation.dart';
import 'package:library_arch_mvvm_modify_firebase_login/utility/Email.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_model.dart';

class EmailInput
    extends BaseModel
{
  Email? _email;

  EmailInput.success(this._email) : super.success(_email?.value);

  static EmailInput get getEmailInputForSuccess => EmailInput.success(Email.pure());

  @nonVirtual
  Email get getParameterEmail => _email!;
  String get getOneParametersNamedForEmailInputWidget => _email!.value;
  Email get getOneParametersNamedForLoginButtonWidget => _email!;
  String get getTwoParametersNamedForLoginButtonWidget => _email!.value;

  @nonVirtual
  set setParameterEmail(Email? email) => _email = email;
  set setOneParametersNamedForEmailInputWidget(String str) => _email = Email.dirty(str);

  bool isOneParametersNamedForEmailInputWidget() {
    return _email!.invalid;
  }
}