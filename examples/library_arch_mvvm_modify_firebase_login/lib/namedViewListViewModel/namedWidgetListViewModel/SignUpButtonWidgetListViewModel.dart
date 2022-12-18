import 'package:flutter/foundation.dart';
import 'package:formz/formz.dart';
import 'package:library_arch_mvvm_modify_firebase_login/model/emailInput/EmailInput.dart';
import 'package:library_arch_mvvm_modify_firebase_login/model/emailInput/ListEmailInput.dart';
import 'package:library_arch_mvvm_modify_firebase_login/model/passwordInput/ListPasswordInputFirstBranchOne.dart';
import 'package:library_arch_mvvm_modify_firebase_login/model/passwordInput/PasswordInputFirstBranchOne.dart';
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
  @protected
  final UserQFirebaseAuthServiceViewModelUsingInsertParameterRegistrationAndUpdateParameterLogin<User,ListUser<User>> userQFirebaseAuthServiceViewModelUsingInsertParameterRegistrationAndUpdateParameterLogin;
  @protected
  final EmailInputQNoServiceViewModelUsingGetNP<EmailInput,ListEmailInput<EmailInput>> emailInputQNoServiceViewModelUsingGetNP;
  @protected
  final PasswordInputQNoServiceViewModelUsingGetNP<PasswordInputFirstBranchOne,ListPasswordInputFirstBranchOne<PasswordInputFirstBranchOne>> passwordInputQNoServiceViewModelUsingGetNP;
  @protected
  final BoolQNoServiceViewModelUsingGetNPForLoading<Bool,ListBool<Bool>> boolQNoServiceViewModelUsingGetNPForLoading;

  SignUpButtonWidgetListViewModel(
      this.userQFirebaseAuthServiceViewModelUsingInsertParameterRegistrationAndUpdateParameterLogin,
      this.emailInputQNoServiceViewModelUsingGetNP,
      this.passwordInputQNoServiceViewModelUsingGetNP,
      this.boolQNoServiceViewModelUsingGetNPForLoading);

  Stream<Bool>? get getStreamBoolUsingGetNPForLoading {
    return boolQNoServiceViewModelUsingGetNPForLoading.getStreamBoolUsingGetNPForLoading;
  }

  Future<void> insertUserToFirebaseAuthServiceParameterRegistrationAndInGeneralOneTask(
      Function(String message) callbackForException,
      Function() callbackForSuccess)
  async {
    if(!Formz.validate([emailInputQNoServiceViewModelUsingGetNP.getEmailInputUsingGetNP?.getOneParametersNamedForSignUpButtonWidget ?? const Email.pure(), passwordInputQNoServiceViewModelUsingGetNP.getPasswordInputUsingGetNP?.getOneParametersNamedForSignUpButtonWidget ?? const Password.pure(), passwordInputQNoServiceViewModelUsingGetNP.getPasswordInputUsingGetNP?.getTwoParametersNamedForSignUpButtonWidget ?? const ConfirmedPassword.pure()])
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
        .insertUserToFirebaseAuthServiceParameterRegistration(RegistrationTypeParameter.success(Registration(emailInputQNoServiceViewModelUsingGetNP.getEmailInputUsingGetNP?.getTwoParametersNamedForSignUpButtonWidget ?? "", passwordInputQNoServiceViewModelUsingGetNP.getPasswordInputUsingGetNP!.getThreeParametersNamedForSignUpButtonWidget ?? "")));
    boolQNoServiceViewModelUsingGetNPForLoading
        .getBoolUsingGetNPForLoading
        ?.setParameterIsField = false;
    boolQNoServiceViewModelUsingGetNPForLoading
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