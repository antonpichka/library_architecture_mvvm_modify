import 'package:library_arch_mvvm_modify_firebase_login/model/passwordInput/ListPasswordInput.dart';
import 'package:library_arch_mvvm_modify_firebase_login/model/passwordInput/PasswordInput.dart';
import 'package:library_arch_mvvm_modify_firebase_login/modelQNamedServiceViewModel/passwordInputQNoServiceViewModel/PasswordInputQNoServiceViewModelUsingUpdateTIP.dart';

class PasswordInputWidgetListViewModel {
  final PasswordInputQNoServiceViewModelUsingUpdateTIP<PasswordInput,ListPasswordInput> _passwordInputQNoServiceViewModelUsingUpdateTIP;

  PasswordInputWidgetListViewModel(this._passwordInputQNoServiceViewModelUsingUpdateTIP);

  Stream<PasswordInput>? get getStreamPasswordInputUsingUpdateTIP {
    return _passwordInputQNoServiceViewModelUsingUpdateTIP.getStreamPasswordInputUsingUpdateTIP;
  }

  void setOneParametersNamedForPasswordInputWidgetByPasswordInputUsingUpdateTIPAndInGeneralZeroTask(
      String str)
  {
    if(_passwordInputQNoServiceViewModelUsingUpdateTIP
        .getPasswordInputUsingUpdateTIP
        ?.getOneParametersNamedForPasswordInputWidget == str)
    {
      return;
    }
    _passwordInputQNoServiceViewModelUsingUpdateTIP
        .getPasswordInputUsingUpdateTIP
        ?.setOneParametersNamedForPasswordInputWidget = str;
    _passwordInputQNoServiceViewModelUsingUpdateTIP
        .notifyStreamPasswordInputUsingUpdateTIP();
    return;
  }
}