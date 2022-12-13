import 'package:library_arch_mvvm_modify_firebase_login/model/emailInput/EmailInput.dart';
import 'package:library_arch_mvvm_modify_firebase_login/model/emailInput/ListEmailInput.dart';
import 'package:library_arch_mvvm_modify_firebase_login/modelQNamedServiceViewModel/emailInputQNoServiceViewModel/EmailInputQNoServiceViewModelUsingGetNP.dart';

class EmailInputWidgetListViewModel {
  final EmailInputQNoServiceViewModelUsingGetNP<EmailInput,ListEmailInput<EmailInput>> _emailInputQNoServiceViewModelUsingGetNP;

  EmailInputWidgetListViewModel(this._emailInputQNoServiceViewModelUsingGetNP);

  Stream<EmailInput>? get getStreamEmailInputUsingUpdateTIP {
    return _emailInputQNoServiceViewModelUsingGetNP.getStreamEmailInputUsingGetNP;
  }

  void setOneParametersNamedForEmailInputWidgetByEmailInputUsingGetNPAndInGeneralZeroTask(
      String str)
  {
    if(_emailInputQNoServiceViewModelUsingGetNP
        .getEmailInputUsingGetNP
        ?.getOneParametersNamedForEmailInputWidget == str)
    {
      return;
    }
    _emailInputQNoServiceViewModelUsingGetNP
        .getEmailInputUsingGetNP
        ?.setOneParametersNamedForEmailInputWidget = str;
    _emailInputQNoServiceViewModelUsingGetNP
        .notifyStreamEmailInputUsingGetNP();
    return;
  }
}