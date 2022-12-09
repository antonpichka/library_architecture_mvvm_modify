import 'package:library_arch_mvvm_modify_firebase_login/model/passwordInput/PasswordInput.dart';
import 'package:library_arch_mvvm_modify_firebase_login/modelQNamedServiceViewModel/passwordInputQNoServiceViewModel/PasswordInputQNoServiceViewModelUsingUpdateTIP.dart';

class PasswordInputWidgetListViewModel {
  final PasswordInputQNoServiceViewModelUsingUpdateTIP _passwordInputQNoServiceViewModelUsingUpdateTIP;

  PasswordInputWidgetListViewModel(this._passwordInputQNoServiceViewModelUsingUpdateTIP);

  Stream<PasswordInput>? get getStreamPasswordInputUsingUpdateTIP {
    return _passwordInputQNoServiceViewModelUsingUpdateTIP.getStreamPasswordInputUsingUpdateTIP;
  }

  void setDirtyConstructorFromStrParameterPasswordByPasswordInputUsingUpdateTIPAndInGeneralZeroTask(
      String str)
  {
    if(_passwordInputQNoServiceViewModelUsingUpdateTIP
        .getPasswordInputUsingUpdateTIP
        ?.password
        ?.value == str)
    {
      return;
    }
    _passwordInputQNoServiceViewModelUsingUpdateTIP
        .getPasswordInputUsingUpdateTIP
        ?.setDirtyConstructorFromStrParameterPassword = str;
    _passwordInputQNoServiceViewModelUsingUpdateTIP
        .notifyStreamPasswordInputUsingUpdateTIP();
    return;
  }
}