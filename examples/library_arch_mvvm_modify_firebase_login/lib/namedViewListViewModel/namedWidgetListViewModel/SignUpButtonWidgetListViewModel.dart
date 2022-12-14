import 'package:formz/formz.dart';
import 'package:library_arch_mvvm_modify_firebase_login/model/emailInput/EmailInput.dart';
import 'package:library_arch_mvvm_modify_firebase_login/model/emailInput/ListEmailInput.dart';
import 'package:library_arch_mvvm_modify_firebase_login/model/passwordInput/ListPasswordInputExt.dart';
import 'package:library_arch_mvvm_modify_firebase_login/model/passwordInput/PasswordInputExt.dart';
import 'package:library_arch_mvvm_modify_firebase_login/model/user/ListUser.dart';
import 'package:library_arch_mvvm_modify_firebase_login/model/user/User.dart';
import 'package:library_arch_mvvm_modify_firebase_login/modelQNamedServiceViewModel/boolQNoServiceViewModel/BoolQNoServiceViewModelUsingGetNPForLoading.dart';
import 'package:library_arch_mvvm_modify_firebase_login/modelQNamedServiceViewModel/emailInputQNoServiceViewModel/EmailInputQNoServiceViewModelUsingGetNP.dart';
import 'package:library_arch_mvvm_modify_firebase_login/modelQNamedServiceViewModel/passwordInputQNoServiceViewModel/PasswordInputQNoServiceViewModelUsingGetNP.dart';
import 'package:library_arch_mvvm_modify_firebase_login/modelQNamedServiceViewModel/userQFirebaseAuthServiceViewModel/UserQFirebaseAuthServiceViewModelUsingInsertParameterRegistrationAndUpdateParameterLogin.dart';
import 'package:library_arch_mvvm_modify_firebase_login/utility/ConfirmedPassword.dart';
import 'package:library_arch_mvvm_modify_firebase_login/utility/Email.dart';
import 'package:library_arch_mvvm_modify_firebase_login/utility/Password.dart';
import 'package:library_arch_mvvm_modify_firebase_login/utility/namedTypeParameter/Registration.dart';
import 'package:library_arch_mvvm_modify_firebase_login/utility/namedTypeParameter/RegistrationTypeParameter.dart';
import 'package:library_architecture_mvvm_modify/base_model/bool.dart';
import 'package:library_architecture_mvvm_modify/base_model/list_bool.dart';
import 'package:library_architecture_mvvm_modify/utility/base_type_parameter/bool_type_parameter.dart';

class SignUpButtonWidgetListViewModel {
  final UserQFirebaseAuthServiceViewModelUsingInsertParameterRegistrationAndUpdateParameterLogin<User,ListUser<User>> _userQFirebaseAuthServiceViewModelUsingInsertParameterRegistrationAndUpdateParameterLogin;
  final EmailInputQNoServiceViewModelUsingGetNP<EmailInput,ListEmailInput<EmailInput>> _emailInputQNoServiceViewModelUsingGetNP;
  final PasswordInputQNoServiceViewModelUsingGetNP<PasswordInputExt,ListPasswordInputExt<PasswordInputExt>> _passwordInputExtQNoServiceViewModelUsingGetNP;
  final BoolQNoServiceViewModelUsingGetNPForLoading<Bool,ListBool<Bool>> _boolQNoServiceViewModelUsingGetNPForLoading;

  SignUpButtonWidgetListViewModel(
      this._userQFirebaseAuthServiceViewModelUsingInsertParameterRegistrationAndUpdateParameterLogin,
      this._emailInputQNoServiceViewModelUsingGetNP,
      this._passwordInputExtQNoServiceViewModelUsingGetNP,
      this._boolQNoServiceViewModelUsingGetNPForLoading);

  Stream<Bool>? get getStreamBoolUsingGetNPForLoading {
    return _boolQNoServiceViewModelUsingGetNPForLoading.getStreamBoolUsingGetNPForLoading;
  }

  Future<void> insertUserToFirebaseAuthServiceParameterRegistrationAndInGeneralOneTask(
      Function(String message) callbackForException,
      Function() callbackForSuccess)
  async {
    if(!Formz.validate([_emailInputQNoServiceViewModelUsingGetNP.getEmailInputUsingGetNP?.getOneParametersNamedForSignUpButtonWidget ?? const Email.pure(), _passwordInputExtQNoServiceViewModelUsingGetNP.getPasswordInputUsingGetNP?.getOneParametersNamedForSignUpButtonWidget ?? const Password.pure(), _passwordInputExtQNoServiceViewModelUsingGetNP.getPasswordInputUsingGetNP?.getTwoParametersNamedForSignUpButtonWidget ?? const ConfirmedPassword.pure()])
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
        .insertUserToFirebaseAuthServiceParameterRegistration(RegistrationTypeParameter.success(Registration(_emailInputQNoServiceViewModelUsingGetNP.getEmailInputUsingGetNP?.getTwoParametersNamedForSignUpButtonWidget ?? "", _passwordInputExtQNoServiceViewModelUsingGetNP.getPasswordInputUsingGetNP!.getThreeParametersNamedForSignUpButtonWidget ?? "")));
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
    callbackForSuccess();
    return;
  }
}