import 'package:flutter/foundation.dart';
import 'package:library_arch_mvvm_modify_firebase_login/model/passwordInput/ListPasswordInput.dart';
import 'package:library_arch_mvvm_modify_firebase_login/model/passwordInput/PasswordInput.dart';
import 'package:library_arch_mvvm_modify_firebase_login/modelQNamedServiceViewModel/passwordInputQNoServiceViewModel/PasswordInputQNoServiceViewModelUsingGetNP.dart';

class PasswordInputWidgetListViewModel {
  @protected
  final PasswordInputQNoServiceViewModelUsingGetNP<PasswordInput,ListPasswordInput<PasswordInput>> passwordInputQNoServiceViewModelUsingGetNP;

  PasswordInputWidgetListViewModel(this.passwordInputQNoServiceViewModelUsingGetNP);

  Stream<PasswordInput>? get getStreamPasswordInputUsingUpdateTIP {
    return passwordInputQNoServiceViewModelUsingGetNP.getStreamPasswordInputUsingGetNP;
  }

  void setOneParametersNamedForPasswordInputWidgetByPasswordInputUsingGetNPAndInGeneralZeroTask(
      String str)
  {
    if(passwordInputQNoServiceViewModelUsingGetNP
        .getPasswordInputUsingGetNP
        ?.getOneParametersNamedForPasswordInputWidget == str)
    {
      return;
    }
    passwordInputQNoServiceViewModelUsingGetNP
        .getPasswordInputUsingGetNP
        ?.setOneParametersNamedForPasswordInputWidget = str;
    passwordInputQNoServiceViewModelUsingGetNP
        .notifyStreamPasswordInputUsingGetNP();
    return;
  }
}