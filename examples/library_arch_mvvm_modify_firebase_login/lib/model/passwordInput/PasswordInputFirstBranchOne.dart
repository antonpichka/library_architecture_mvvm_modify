import 'package:flutter/foundation.dart';
import 'package:library_arch_mvvm_modify_firebase_login/model/passwordInput/PasswordInput.dart';
import 'package:library_arch_mvvm_modify_firebase_login/utility/ConfirmedPassword.dart';
import 'package:library_arch_mvvm_modify_firebase_login/utility/Password.dart';

class PasswordInputFirstBranchOne
    extends PasswordInput
{
  @protected
  ConfirmedPassword? confirmedPassword;

  PasswordInputFirstBranchOne.success(super.password,this.confirmedPassword) : super.success();

  static PasswordInputFirstBranchOne get getPasswordInputFirstBranchOneForSuccess => PasswordInputFirstBranchOne.success(const Password.pure(),const ConfirmedPassword.pure());

  String? get getOneParametersNamedForConfirmedPasswordInputWidget => confirmedPassword?.value;
  Password? get getOneParametersNamedForSignUpButtonWidget => password;
  ConfirmedPassword? get getTwoParametersNamedForSignUpButtonWidget => confirmedPassword;
  String? get getThreeParametersNamedForSignUpButtonWidget => password?.value;

  @override
  set setOneParametersNamedForPasswordInputWidget(String str) {
    super.setOneParametersNamedForPasswordInputWidget = str;
    final valueByConfirmedPassword = confirmedPassword!.value;
    confirmedPassword = ConfirmedPassword.dirty(
        password: password!.value,
        value: valueByConfirmedPassword);
  }

  set setOneParametersNamedForConfirmedPasswordInputWidget(String str) {
    confirmedPassword = ConfirmedPassword.dirty(
      password: password!.value,
      value: str,
    );
  }

  bool? isOneParametersNamedForConfirmedPasswordInputWidget() {
    return confirmedPassword?.invalid;
  }
}