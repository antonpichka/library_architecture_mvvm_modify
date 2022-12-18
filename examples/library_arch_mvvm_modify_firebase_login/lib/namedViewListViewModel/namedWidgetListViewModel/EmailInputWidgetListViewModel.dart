import 'package:flutter/foundation.dart';
import 'package:library_arch_mvvm_modify_firebase_login/model/emailInput/EmailInput.dart';
import 'package:library_arch_mvvm_modify_firebase_login/model/emailInput/ListEmailInput.dart';
import 'package:library_arch_mvvm_modify_firebase_login/modelQNamedServiceViewModel/emailInputQNoServiceViewModel/EmailInputQNoServiceViewModelUsingGetNP.dart';

class EmailInputWidgetListViewModel {
  @protected
  final EmailInputQNoServiceViewModelUsingGetNP<EmailInput,ListEmailInput<EmailInput>> emailInputQNoServiceViewModelUsingGetNP;

  EmailInputWidgetListViewModel(this.emailInputQNoServiceViewModelUsingGetNP);

  Stream<EmailInput>? get getStreamEmailInputUsingUpdateTIP {
    return emailInputQNoServiceViewModelUsingGetNP.getStreamEmailInputUsingGetNP;
  }

  void setOneParametersNamedForEmailInputWidgetByEmailInputUsingGetNPAndInGeneralZeroTask(
      String str)
  {
    if(emailInputQNoServiceViewModelUsingGetNP
        .getEmailInputUsingGetNP
        ?.getOneParametersNamedForEmailInputWidget == str)
    {
      return;
    }
    emailInputQNoServiceViewModelUsingGetNP
        .getEmailInputUsingGetNP
        ?.setOneParametersNamedForEmailInputWidget = str;
    emailInputQNoServiceViewModelUsingGetNP
        .notifyStreamEmailInputUsingGetNP();
    return;
  }
}