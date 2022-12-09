import 'package:library_arch_mvvm_modify_firebase_login/model/emailInput/EmailInput.dart';
import 'package:library_arch_mvvm_modify_firebase_login/modelQNamedServiceViewModel/emailInputQNoServiceViewModel/EmailInputQNoServiceViewModelUsingUpdateTIP.dart';

class EmailInputWidgetListViewModel {
  final EmailInputQNoServiceViewModelUsingUpdateTIP _emailInputQNoServiceViewModelUsingUpdateTIP;

  EmailInputWidgetListViewModel(this._emailInputQNoServiceViewModelUsingUpdateTIP);

  Stream<EmailInput>? get getStreamEmailInputUsingUpdateTIP {
    return _emailInputQNoServiceViewModelUsingUpdateTIP.getStreamEmailInputUsingUpdateTIP;
  }

  void setDirtyConstructorFromStrParameterEmailByEmailInputUsingUpdateTIPAndInGeneralZeroTask(
      String str)
  {
    if(_emailInputQNoServiceViewModelUsingUpdateTIP
        .getEmailInputUsingUpdateTIP
        ?.email
        ?.value == str)
    {
      return;
    }
    _emailInputQNoServiceViewModelUsingUpdateTIP
        .getEmailInputUsingUpdateTIP
        ?.setDirtyConstructorFromStrParameterEmail = str;
    _emailInputQNoServiceViewModelUsingUpdateTIP
        .notifyStreamEmailInputUsingUpdateTIP();
    return;
  }
}