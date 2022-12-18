import 'package:flutter/foundation.dart';
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
  @protected
  final UserQFirebaseAuthServiceViewModelUsingInsertParameterRegistrationAndUpdateParameterLogin<User,ListUser<User>> userQFirebaseAuthServiceViewModelUsingInsertParameterRegistrationAndUpdateParameterLogin;
  @protected
  final EmailInputQNoServiceViewModelUsingGetNP<EmailInput,ListEmailInput<EmailInput>> emailInputQNoServiceViewModelUsingGetNP;
  @protected
  final PasswordInputQNoServiceViewModelUsingGetNP<PasswordInput,ListPasswordInput<PasswordInput>> passwordInputQNoServiceViewModelUsingGetNP;
  @protected
  final BoolQNoServiceViewModelUsingGetNPForLoading<Bool,ListBool> boolQNoServiceViewModelUsingGetNPForLoading;

  LoginButtonWidgetListViewModel(
      this.userQFirebaseAuthServiceViewModelUsingInsertParameterRegistrationAndUpdateParameterLogin,
      this.emailInputQNoServiceViewModelUsingGetNP,
      this.passwordInputQNoServiceViewModelUsingGetNP,
      this.boolQNoServiceViewModelUsingGetNPForLoading);

  Stream<Bool>? get getStreamBoolUsingGetNPForLoading {
    return boolQNoServiceViewModelUsingGetNPForLoading.getStreamBoolUsingGetNPForLoading;
  }

  Future<void> updateUserToFirebaseAuthServiceParameterLoginAndInGeneralOneTask(
      Function(String message) callbackForException)
  async {
    if(!Formz.validate([emailInputQNoServiceViewModelUsingGetNP.getEmailInputUsingGetNP?.getOneParametersNamedForLoginButtonWidget ?? const Email.pure(), passwordInputQNoServiceViewModelUsingGetNP.getPasswordInputUsingGetNP?.getOneParametersNamedForLoginButtonWidget ?? const Password.pure()])
        .isValidated)
    {
      return;
    }
    if(boolQNoServiceViewModelUsingGetNPForLoading
        .getBoolUsingGetNPForLoading
        !.getParameterIsField)
    {
      return;
    }
    boolQNoServiceViewModelUsingGetNPForLoading
        .getBoolUsingGetNPForLoading
        ?.setParameterIsField = true;
    boolQNoServiceViewModelUsingGetNPForLoading
        .notifyStreamBoolUsingGetNPForLoading();
    // 1
    BoolTypeParameter? boolTypeParameter = await userQFirebaseAuthServiceViewModelUsingInsertParameterRegistrationAndUpdateParameterLogin
        .updateUserToFirebaseAuthServiceParameterLogin(LoginTypeParameter.success(Login(emailInputQNoServiceViewModelUsingGetNP.getEmailInputUsingGetNP?.getTwoParametersNamedForLoginButtonWidget ?? "", passwordInputQNoServiceViewModelUsingGetNP.getPasswordInputUsingGetNP?.getTwoParametersNamedForLoginButtonWidget ?? "")));
    if(boolTypeParameter
        !.exceptionController
        .isExceptionNotEqualsNull())
    {
      boolQNoServiceViewModelUsingGetNPForLoading
          .getBoolUsingGetNPForLoading
          ?.setParameterIsField = false;
      boolQNoServiceViewModelUsingGetNPForLoading
          .notifyStreamBoolUsingGetNPForLoading();
      callbackForException(boolTypeParameter
          .exceptionController
          .getMessageForViewByException);
      return;
    }
    return;
  }

}