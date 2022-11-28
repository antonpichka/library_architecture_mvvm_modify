import 'package:library_arch_mvvm_modify_firebase_login/model/loginInput/LoginInput.dart';
import 'package:library_arch_mvvm_modify_firebase_login/modelQNamedServiceViewModel/loginInputQNoServiceViewModel/LoginInputQNoServiceViewModelUsingUpdateTIP.dart';

class LoginInputQNoServiceListViewModelForEmailInputWidget {
  final LoginInputQNoServiceViewModelUsingUpdateTIP _loginInputQNoServiceViewModelUsingUpdateTIP;

  LoginInputQNoServiceListViewModelForEmailInputWidget(this._loginInputQNoServiceViewModelUsingUpdateTIP);

  Stream<LoginInput>? get getStreamLoginInputUsingUpdateTIP {
    return _loginInputQNoServiceViewModelUsingUpdateTIP.getStreamLoginInputUsingUpdateTIP;
  }

  void setDirtyConstructorFromStrParameterEmailByLoginInputUsingUpdateTIPAndInGeneralZeroTask(
      String str)
  {
    if(_loginInputQNoServiceViewModelUsingUpdateTIP
        .getLoginInputUsingUpdateTIP
        ?.email
        ?.value == str)
    {
      return;
    }
    _loginInputQNoServiceViewModelUsingUpdateTIP
        .getLoginInputUsingUpdateTIP
        ?.setDirtyConstructorFromStrParameterEmail = str;
    _loginInputQNoServiceViewModelUsingUpdateTIP
        .notifyStreamLoginInputUsingUpdateTIP();
    return;
  }
}