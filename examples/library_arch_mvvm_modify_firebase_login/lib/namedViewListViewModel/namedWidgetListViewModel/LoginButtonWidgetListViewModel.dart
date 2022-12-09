import 'package:formz/formz.dart';
import 'package:library_arch_mvvm_modify_firebase_login/modelQNamedServiceViewModel/boolQNoServiceViewModel/BoolQNoServiceViewModelUsingGetNPForLoading.dart';
import 'package:library_arch_mvvm_modify_firebase_login/modelQNamedServiceViewModel/emailInputQNoServiceViewModel/EmailInputQNoServiceViewModelUsingUpdateTIP.dart';
import 'package:library_arch_mvvm_modify_firebase_login/modelQNamedServiceViewModel/passwordInputQNoServiceViewModel/PasswordInputQNoServiceViewModelUsingUpdateTIP.dart';
import 'package:library_arch_mvvm_modify_firebase_login/modelQNamedServiceViewModel/userQFirebaseAuthServiceViewModel/UserQFirebaseAuthServiceViewModelUsingInsertParameterRegistrationAndUpdateParameterLogin.dart';
import 'package:library_arch_mvvm_modify_firebase_login/utility/Email.dart';
import 'package:library_arch_mvvm_modify_firebase_login/utility/Password.dart';
import 'package:library_arch_mvvm_modify_firebase_login/utility/namedTypeParameter/Login.dart';
import 'package:library_arch_mvvm_modify_firebase_login/utility/namedTypeParameter/LoginTypeParameter.dart';
import 'package:library_architecture_mvvm_modify/base_model/bool.dart';
import 'package:library_architecture_mvvm_modify/utility/base_type_parameter/bool_type_parameter.dart';

class LoginButtonWidgetListViewModel {
  final UserQFirebaseAuthServiceViewModelUsingInsertParameterRegistrationAndUpdateParameterLogin _userQFirebaseAuthServiceViewModelUsingInsertParameterRegistrationAndUpdateParameterLogin;
  final EmailInputQNoServiceViewModelUsingUpdateTIP _emailInputQNoServiceViewModelUsingUpdateTIP;
  final PasswordInputQNoServiceViewModelUsingUpdateTIP _passwordInputQNoServiceViewModelUsingUpdateTIP;
  final BoolQNoServiceViewModelUsingGetNPForLoading _boolQNoServiceViewModelUsingGetNPForLoading;

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
    if(!Formz.validate([_emailInputQNoServiceViewModelUsingUpdateTIP.getEmailInputUsingUpdateTIP!.email ?? Email.pure(), _passwordInputQNoServiceViewModelUsingUpdateTIP.getPasswordInputUsingUpdateTIP!.password ?? Password.pure()])
        .isValidated)
    {
      return;
    }
    if(_boolQNoServiceViewModelUsingGetNPForLoading
        .getBoolUsingGetNPForLoading
        !.isField)
    {
      return;
    }
    _boolQNoServiceViewModelUsingGetNPForLoading
        .getBoolUsingGetNPForLoading
        ?.isField = true;
    _boolQNoServiceViewModelUsingGetNPForLoading
        .notifyStreamBoolUsingGetNPForLoading();
    // 1
    BoolTypeParameter? boolTypeParameter = await _userQFirebaseAuthServiceViewModelUsingInsertParameterRegistrationAndUpdateParameterLogin
        .updateUserToFirebaseAuthServiceParameterLogin(LoginTypeParameter.success(Login(_emailInputQNoServiceViewModelUsingUpdateTIP.getEmailInputUsingUpdateTIP?.email?.value, _passwordInputQNoServiceViewModelUsingUpdateTIP.getPasswordInputUsingUpdateTIP?.password?.value)));
    _boolQNoServiceViewModelUsingGetNPForLoading
        .getBoolUsingGetNPForLoading
        ?.isField = false;
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