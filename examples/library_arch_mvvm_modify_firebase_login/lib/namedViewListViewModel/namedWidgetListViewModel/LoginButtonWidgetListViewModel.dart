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
import 'package:library_arch_mvvm_modify_firebase_login/utility/Email.dart';
import 'package:library_arch_mvvm_modify_firebase_login/utility/Password.dart';
import 'package:library_arch_mvvm_modify_firebase_login/utility/namedTypeParameter/Login.dart';
import 'package:library_arch_mvvm_modify_firebase_login/utility/namedTypeParameter/LoginTypeParameter.dart';
import 'package:library_architecture_mvvm_modify/base_model/bool.dart';
import 'package:library_architecture_mvvm_modify/base_model/list_bool.dart';
import 'package:library_architecture_mvvm_modify/utility/base_type_parameter/bool_type_parameter.dart';

class LoginButtonWidgetListViewModel {
  final UserQFirebaseAuthServiceViewModelUsingInsertParameterRegistrationAndUpdateParameterLogin<User,ListUser<User>> _userQFirebaseAuthServiceViewModelUsingInsertParameterRegistrationAndUpdateParameterLogin;
  final EmailInputQNoServiceViewModelUsingGetNP<EmailInput,ListEmailInput<EmailInput>> _emailInputQNoServiceViewModelUsingGetNP;
  final PasswordInputQNoServiceViewModelUsingGetNP<PasswordInput,ListPasswordInput<PasswordInput>> _passwordInputQNoServiceViewModelUsingGetNP;
  final BoolQNoServiceViewModelUsingGetNPForLoading<Bool,ListBool> _boolQNoServiceViewModelUsingGetNPForLoading;

  LoginButtonWidgetListViewModel(
      this._userQFirebaseAuthServiceViewModelUsingInsertParameterRegistrationAndUpdateParameterLogin,
      this._emailInputQNoServiceViewModelUsingGetNP,
      this._passwordInputQNoServiceViewModelUsingGetNP,
      this._boolQNoServiceViewModelUsingGetNPForLoading);

  Stream<Bool>? get getStreamBoolUsingGetNPForLoading {
    return _boolQNoServiceViewModelUsingGetNPForLoading.getStreamBoolUsingGetNPForLoading;
  }

  Future<void> updateUserToFirebaseAuthServiceParameterLoginAndInGeneralOneTask(
      Function(String message) callbackForException)
  async {
    if(!Formz.validate([_emailInputQNoServiceViewModelUsingGetNP.getEmailInputUsingGetNP?.getOneParametersNamedForLoginButtonWidget ?? const Email.pure(), _passwordInputQNoServiceViewModelUsingGetNP.getPasswordInputUsingGetNP?.getOneParametersNamedForLoginButtonWidget ?? const Password.pure()])
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
        .updateUserToFirebaseAuthServiceParameterLogin(LoginTypeParameter.success(Login(_emailInputQNoServiceViewModelUsingGetNP.getEmailInputUsingGetNP?.getTwoParametersNamedForLoginButtonWidget ?? "", _passwordInputQNoServiceViewModelUsingGetNP.getPasswordInputUsingGetNP?.getTwoParametersNamedForLoginButtonWidget ?? "")));
    if(boolTypeParameter
        !.exceptionController
        .isExceptionNotEqualsNull())
    {
      _boolQNoServiceViewModelUsingGetNPForLoading
          .getBoolUsingGetNPForLoading
          ?.setParameterIsField = false;
      _boolQNoServiceViewModelUsingGetNPForLoading
          .notifyStreamBoolUsingGetNPForLoading();
      callbackForException(boolTypeParameter
          .exceptionController
          .getMessageForViewByException);
      return;
    }
    return;
  }

}