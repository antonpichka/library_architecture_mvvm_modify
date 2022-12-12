import 'package:library_arch_mvvm_modify_firebase_login/model/passwordInput/ListPasswordInput.dart';
import 'package:library_arch_mvvm_modify_firebase_login/model/passwordInput/PasswordInput.dart';
import 'package:library_arch_mvvm_modify_firebase_login/modelQNamedServiceViewModel/passwordInputQNoServiceViewModel/PasswordInputQNoServiceViewModelUsingGetNP.dart';

class PasswordInputWidgetListViewModel {
  final PasswordInputQNoServiceViewModelUsingGetNP<PasswordInput,ListPasswordInput> _passwordInputQNoServiceViewModelUsingUpdateTIP;

  PasswordInputWidgetListViewModel(this._passwordInputQNoServiceViewModelUsingUpdateTIP);

  Stream<PasswordInput>? get getStreamPasswordInputUsingUpdateTIP {
    return _passwordInputQNoServiceViewModelUsingUpdateTIP.getStreamPasswordInputUsingGetNP;
  }

  void setOneParametersNamedForPasswordInputWidgetByPasswordInputUsingUpdateTIPAndInGeneralZeroTask(
      String str)
  {
    if(_passwordInputQNoServiceViewModelUsingUpdateTIP
        .getPasswordInputUsingGetNP
        ?.getOneParametersNamedForPasswordInputWidget == str)
    {
      return;
    }
    _passwordInputQNoServiceViewModelUsingUpdateTIP
        .getPasswordInputUsingGetNP
        ?.setOneParametersNamedForPasswordInputWidget = str;
    _passwordInputQNoServiceViewModelUsingUpdateTIP
        .notifyStreamPasswordInputUsingGetNP();
    return;
  }
}