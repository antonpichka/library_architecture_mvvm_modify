import 'package:flutter/foundation.dart';
import 'package:library_arch_mvvm_modify_firebase_login/model/passwordInput/ListPasswordInputFirstBranchOne.dart';
import 'package:library_arch_mvvm_modify_firebase_login/model/passwordInput/PasswordInputFirstBranchOne.dart';
import 'package:library_arch_mvvm_modify_firebase_login/modelQNamedServiceViewModel/passwordInputQNoServiceViewModel/PasswordInputQNoServiceViewModelUsingGetNP.dart';

class ConfirmedPasswordInputWidgetListViewModel {
  @protected
  final PasswordInputQNoServiceViewModelUsingGetNP<PasswordInputFirstBranchOne,ListPasswordInputFirstBranchOne<PasswordInputFirstBranchOne>> passwordInputQNoServiceViewModelUsingGetNP;

  ConfirmedPasswordInputWidgetListViewModel(this.passwordInputQNoServiceViewModelUsingGetNP);

  Stream<PasswordInputFirstBranchOne>? get getStreamPasswordInputUsingGetNP {
    return passwordInputQNoServiceViewModelUsingGetNP.getStreamPasswordInputUsingGetNP;
  }

  void setOneParametersNamedForConfirmedPasswordInputWidgetByPasswordInputUsingGetNPAndInGeneralZeroTask(
      String str)
  {
    if(passwordInputQNoServiceViewModelUsingGetNP
        .getPasswordInputUsingGetNP
        ?.getOneParametersNamedForConfirmedPasswordInputWidget == str)
    {
      return;
    }
    passwordInputQNoServiceViewModelUsingGetNP
        .getPasswordInputUsingGetNP
        ?.setOneParametersNamedForConfirmedPasswordInputWidget = str;
    passwordInputQNoServiceViewModelUsingGetNP
        .notifyStreamPasswordInputUsingGetNP();
    return;
  }
}