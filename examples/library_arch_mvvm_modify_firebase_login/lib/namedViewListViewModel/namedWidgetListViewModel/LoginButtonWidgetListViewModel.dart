import 'package:formz/formz.dart';
import 'package:library_arch_mvvm_modify_firebase_login/model/emailInput/EmailInput.dart';
import 'package:library_arch_mvvm_modify_firebase_login/model/emailInput/ListEmailInput.dart';
import 'package:library_arch_mvvm_modify_firebase_login/model/passwordInput/ListPasswordInput.dart';
import 'package:library_arch_mvvm_modify_firebase_login/model/passwordInput/PasswordInput.dart';
import 'package:library_arch_mvvm_modify_firebase_login/model/user/ListUser.dart';
import 'package:library_arch_mvvm_modify_firebase_login/model/user/User.dart';
import 'package:library_arch_mvvm_modify_firebase_login/modelQNamedServiceViewModel/boolQNoServiceViewModel/BoolQNoServiceViewModelUsingGetNPForLoading.dart';
import 'package:library_arch_mvvm_modify_firebase_login/modelQNamedServiceViewModel/emailInputQNoServiceViewModel/EmailInputQNoServiceViewModelUsingGetNP.dart';
import 'package:library_arch_mvvm_modify_firebase_login/modelQNamedServiceViewModel/passwordInputQNoServiceViewModel/PasswordInputQNoServiceViewModelUsingGetNP.dart';
import 'package:library_arch_mvvm_modify_firebase_login/modelQNamedServiceViewModel/userQFirebaseAuthServiceViewModel/UserQFirebaseAuthServiceViewModelUsingInsertParameterRegistrationAndUpdateParameterLogin.dart';
import 'package:library_arch_mvvm_modify_firebase_login/utility/namedTypeParameter/Login.dart';
import 'package:library_arch_mvvm_modify_firebase_login/utility/namedTypeParameter/LoginTypeParameter.dart';
import 'package:library_architecture_mvvm_modify/base_model/bool.dart';
import 'package:library_architecture_mvvm_modify/base_model/list_bool.dart';
import 'package:library_architecture_mvvm_modify/utility/base_type_parameter/bool_type_parameter.dart';

class LoginButtonWidgetListViewModel {
  final UserQFirebaseAuthServiceViewModelUsingInsertParameterRegistrationAndUpdateParameterLogin<User,ListUser> _userQFirebaseAuthServiceViewModelUsingInsertParameterRegistrationAndUpdateParameterLogin;
  final EmailInputQNoServiceViewModelUsingGetNP<EmailInput,ListEmailInput> _emailInputQNoServiceViewModelUsingUpdateTIP;
  final PasswordInputQNoServiceViewModelUsingGetNP<PasswordInput,ListPasswordInput> _passwordInputQNoServiceViewModelUsingUpdateTIP;
  final BoolQNoServiceViewModelUsingGetNPForLoading<Bool,ListBool> _boolQNoServiceViewModelUsingGetNPForLoading;

  LoginButtonWidgetListViewModel(
      this._userQFirebaseAuthServiceViewModelUsingInsertParameterRegistrationAndUpdateParameterLogin,
      this._emailInputQNoServiceViewModelUsingUpdateTIP,
      this._passwordInputQNoServiceViewModelUsingUpdateTIP,
      this._boolQNoServiceViewModelUsingGetNPForLoading);

  Stream<Bool>? get getStreamBoolUsingGetNPForLoading {
    return _boolQNoServiceViewModelUsingGetNPForLoading.getStreamBoolUsingGetNPForLoading;
  }

  Future<void> updateUserToFirebaseAuthServiceParameterLoginAndInGeneralOneTask(
      Function(String message) callbackForException)
  async {
    if(!Formz.validate([_emailInputQNoServiceViewModelUsingUpdateTIP.getEmailInputUsingGetNP!.getOneParametersNamedForLoginButtonWidget, _passwordInputQNoServiceViewModelUsingUpdateTIP.getPasswordInputUsingGetNP!.getOneParametersNamedForLoginButtonWidget])
        .isValidated)
    {
      return;
    }
    if(_boolQNoServiceViewModelUsingGetNPForLoading
        .getBoolUsingGetNPForLoading
        !.getParameterIsField)
    {
      return;
    }
    _boolQNoServiceViewModelUsingGetNPForLoading
        .getBoolUsingGetNPForLoading
        ?.setParameterIsField = true;
    _boolQNoServiceViewModelUsingGetNPForLoading
        .notifyStreamBoolUsingGetNPForLoading();
    // 1
    BoolTypeParameter? boolTypeParameter = await _userQFirebaseAuthServiceViewModelUsingInsertParameterRegistrationAndUpdateParameterLogin
        .updateUserToFirebaseAuthServiceParameterLogin(LoginTypeParameter.success(Login(_emailInputQNoServiceViewModelUsingUpdateTIP.getEmailInputUsingGetNP!.getTwoParametersNamedForLoginButtonWidget, _passwordInputQNoServiceViewModelUsingUpdateTIP.getPasswordInputUsingGetNP!.getTwoParametersNamedForLoginButtonWidget)));
    _boolQNoServiceViewModelUsingGetNPForLoading
        .getBoolUsingGetNPForLoading
        ?.setParameterIsField = false;
    _boolQNoServiceViewModelUsingGetNPForLoading
        .notifyStreamBoolUsingGetNPForLoading();
    if(boolTypeParameter
        !.exceptionController
        .isExceptionNotEqualsNull())
    {
      callbackForException(boolTypeParameter
          .exceptionController
          .getMessageForViewByException);
      return;
    }
    return;
  }

}