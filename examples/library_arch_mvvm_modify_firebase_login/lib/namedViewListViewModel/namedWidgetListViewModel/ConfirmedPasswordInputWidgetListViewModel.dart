import 'package:library_arch_mvvm_modify_firebase_login/model/passwordInput/ListPasswordInputFirstBranchOne.dart';
import 'package:library_arch_mvvm_modify_firebase_login/model/passwordInput/PasswordInputFirstBranchOne.dart';
import 'package:library_arch_mvvm_modify_firebase_login/modelQNamedServiceViewModel/passwordInputQNoServiceViewModel/PasswordInputQNoServiceViewModelUsingGetNP.dart';

class ConfirmedPasswordInputWidgetListViewModel {
  final PasswordInputQNoServiceViewModelUsingGetNP<PasswordInputFirstBranchOne,ListPasswordInputFirstBranchOne<PasswordInputFirstBranchOne>> _passwordInputExtQNoServiceViewModelUsingGetNP;

  ConfirmedPasswordInputWidgetListViewModel(this._passwordInputExtQNoServiceViewModelUsingGetNP);

  Stream<PasswordInputFirstBranchOne>? get getStreamPasswordInputExtUsingUpdateTIP {
    return _passwordInputExtQNoServiceViewModelUsingGetNP.getStreamPasswordInputUsingGetNP;
  }

  void setOneParametersNamedForConfirmedPasswordInputWidgetByPasswordInputExtUsingGetNPAndInGeneralZeroTask(
      String str)
  {
    if(_passwordInputExtQNoServiceViewModelUsingGetNP
        .getPasswordInputUsingGetNP
        ?.getOneParametersNamedForConfirmedPasswordInputWidget == str)
    {
      return;
    }
    _passwordInputExtQNoServiceViewModelUsingGetNP
        .getPasswordInputUsingGetNP
        ?.setOneParametersNamedForConfirmedPasswordInputWidget = str;
    _passwordInputExtQNoServiceViewModelUsingGetNP
        .notifyStreamPasswordInputUsingGetNP();
    return;
  }
}