import 'package:flutter/foundation.dart';
import 'package:library_arch_mvvm_modify_firebase_login/model/passwordInput/PasswordInput.dart';
import 'package:library_arch_mvvm_modify_firebase_login/utility/ConfirmedPassword.dart';
import 'package:library_arch_mvvm_modify_firebase_login/utility/Password.dart';

class PasswordInputExt
    extends PasswordInput
{
  ConfirmedPassword? _confirmedPassword;

  PasswordInputExt.success(super.password,this._confirmedPassword) : super.success();

  static PasswordInputExt get getPasswordInputExtForSuccess => PasswordInputExt.success(Password.pure(),ConfirmedPassword.pure());

  @protected
  @nonVirtual
  ConfirmedPassword get getParameterConfirmedPassword => _confirmedPassword!;
  String get getOneParametersNamedForConfirmedPasswordInputWidget => _confirmedPassword!.value;
  Password get getOneParametersNamedForSignUpButtonWidget => getParameterPassword;
  ConfirmedPassword get getTwoParametersNamedForSignUpButtonWidget => _confirmedPassword!;
  String get getThreeParametersNamedForSignUpButtonWidget => getParameterPassword.value;

  @protected
  @nonVirtual
  set setParameterConfirmedPassword(ConfirmedPassword confirmedPassword) => _confirmedPassword = confirmedPassword;

  @override
  set setOneParametersNamedForPasswordInputWidget(String str) {
    super.setOneParametersNamedForPasswordInputWidget = str;
    final valueByConfirmedPassword = _confirmedPassword!.value;
    _confirmedPassword = ConfirmedPassword.dirty(
        password: getParameterPassword.value,
        value: valueByConfirmedPassword);
  }

  set setOneParametersNamedForConfirmedPasswordInputWidget(String str) {
    _confirmedPassword = ConfirmedPassword.dirty(
      password: getParameterPassword.value,
      value: str,
    );
  }

  bool isOneParametersNamedForConfirmedPasswordInputWidget() {
    return _confirmedPassword!.invalid;
  }
}