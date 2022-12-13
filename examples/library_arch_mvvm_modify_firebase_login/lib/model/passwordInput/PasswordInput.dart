import 'package:flutter/foundation.dart';
import 'package:library_arch_mvvm_modify_firebase_login/utility/Password.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_model.dart';

class PasswordInput
    extends BaseModel
{
  Password? _password;

  PasswordInput.success(this._password) : super.success(_password?.value);

  static PasswordInput get getPasswordInputForSuccess => PasswordInput.success(const Password.pure());

  @protected
  @nonVirtual
  Password get getParameterPassword => _password!;
  String get getOneParametersNamedForPasswordInputWidget => _password!.value;
  Password get getOneParametersNamedForLoginButtonWidget => _password!;
  String get getTwoParametersNamedForLoginButtonWidget => _password!.value;

  @protected
  @nonVirtual
  set setParameterPassword(Password password) => _password = password;
  set setOneParametersNamedForPasswordInputWidget(String str) => _password = Password.dirty(str);

  bool isOneParametersNamedForPasswordInputWidget() {
    return _password!.invalid;
  }
}