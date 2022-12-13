import 'package:library_arch_mvvm_modify_firebase_login/model/passwordInput/ListPasswordInput.dart';
import 'package:library_arch_mvvm_modify_firebase_login/model/passwordInput/PasswordInput.dart';
import 'package:library_arch_mvvm_modify_firebase_login/modelQNamedServiceViewModel/passwordInputQNoServiceViewModel/PasswordInputQNoServiceViewModelUsingGetNP.dart';

class PasswordInputWidgetListViewModel {
  final PasswordInputQNoServiceViewModelUsingGetNP<PasswordInput,ListPasswordInput<PasswordInput>> _passwordInputQNoServiceViewModelUsingGetNP;

  PasswordInputWidgetListViewModel(this._passwordInputQNoServiceViewModelUsingGetNP);

  Stream<PasswordInput>? get getStreamPasswordInputUsingUpdateTIP {
    return _passwordInputQNoServiceViewModelUsingGetNP.getStreamPasswordInputUsingGetNP;
  }

  void setOneParametersNamedForPasswordInputWidgetByPasswordInputUsingGetNPAndInGeneralZeroTask(
      String str)
  {
    if(_passwordInputQNoServiceViewModelUsingGetNP
        .getPasswordInputUsingGetNP
        ?.getOneParametersNamedForPasswordInputWidget == str)
    {
      return;
    }
    _passwordInputQNoServiceViewModelUsingGetNP
        .getPasswordInputUsingGetNP
        ?.setOneParametersNamedForPasswordInputWidget = str;
    _passwordInputQNoServiceViewModelUsingGetNP
        .notifyStreamPasswordInputUsingGetNP();
    return;
  }
}