import 'package:library_arch_mvvm_modify_firebase_login/model/emailInput/EmailInput.dart';
import 'package:library_arch_mvvm_modify_firebase_login/model/emailInput/ListEmailInput.dart';
import 'package:library_arch_mvvm_modify_firebase_login/modelQNamedServiceViewModel/emailInputQNoServiceViewModel/EmailInputQNoServiceViewModelUsingGetNP.dart';

class EmailInputWidgetListViewModel {
  final EmailInputQNoServiceViewModelUsingGetNP<EmailInput,ListEmailInput> _emailInputQNoServiceViewModelUsingUpdateTIP;

  EmailInputWidgetListViewModel(this._emailInputQNoServiceViewModelUsingUpdateTIP);

  Stream<EmailInput>? get getStreamEmailInputUsingUpdateTIP {
    return _emailInputQNoServiceViewModelUsingUpdateTIP.getStreamEmailInputUsingGetNP;
  }

  void setOneParametersNamedForEmailInputWidgetByEmailInputUsingUpdateTIPAndInGeneralZeroTask(
      String str)
  {
    if(_emailInputQNoServiceViewModelUsingUpdateTIP
        .getEmailInputUsingGetNP
        ?.getOneParametersNamedForEmailInputWidget == str)
    {
      return;
    }
    _emailInputQNoServiceViewModelUsingUpdateTIP
        .getEmailInputUsingGetNP
        ?.setOneParametersNamedForEmailInputWidget = str;
    _emailInputQNoServiceViewModelUsingUpdateTIP
        .notifyStreamEmailInputUsingGetNP();
    return;
  }
}