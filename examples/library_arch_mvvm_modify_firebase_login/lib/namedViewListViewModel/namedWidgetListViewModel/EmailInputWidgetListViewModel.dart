import 'package:library_arch_mvvm_modify_firebase_login/model/emailInput/EmailInput.dart';
import 'package:library_arch_mvvm_modify_firebase_login/model/emailInput/ListEmailInput.dart';
import 'package:library_arch_mvvm_modify_firebase_login/modelQNamedServiceViewModel/emailInputQNoServiceViewModel/EmailInputQNoServiceViewModelUsingUpdateTIP.dart';

class EmailInputWidgetListViewModel {
  final EmailInputQNoServiceViewModelUsingUpdateTIP<EmailInput,ListEmailInput> _emailInputQNoServiceViewModelUsingUpdateTIP;

  EmailInputWidgetListViewModel(this._emailInputQNoServiceViewModelUsingUpdateTIP);

  Stream<EmailInput>? get getStreamEmailInputUsingUpdateTIP {
    return _emailInputQNoServiceViewModelUsingUpdateTIP.getStreamEmailInputUsingUpdateTIP;
  }

  void setOneParametersNamedForEmailInputWidgetByEmailInputUsingUpdateTIPAndInGeneralZeroTask(
      String str)
  {
    if(_emailInputQNoServiceViewModelUsingUpdateTIP
        .getEmailInputUsingUpdateTIP
        ?.getOneParametersNamedForEmailInputWidget == str)
    {
      return;
    }
    _emailInputQNoServiceViewModelUsingUpdateTIP
        .getEmailInputUsingUpdateTIP
        ?.setOneParametersNamedForEmailInputWidget = str;
    _emailInputQNoServiceViewModelUsingUpdateTIP
        .notifyStreamEmailInputUsingUpdateTIP();
    return;
  }
}