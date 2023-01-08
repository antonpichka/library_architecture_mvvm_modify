import 'package:formz/formz.dart';
import 'package:library_arch_mvvm_modify_firebase_login/model/emailInput/EmailInput.dart';
import 'package:library_arch_mvvm_modify_firebase_login/model/emailInput/ListEmailInput.dart';
import 'package:library_arch_mvvm_modify_firebase_login/model/passwordInput/ListPasswordInput.dart';
import 'package:library_arch_mvvm_modify_firebase_login/model/passwordInput/PasswordInput.dart';
import 'package:library_arch_mvvm_modify_firebase_login/model/user/ListUser.dart';
import 'package:library_arch_mvvm_modify_firebase_login/model/user/User.dart';
import 'package:library_arch_mvvm_modify_firebase_login/modelQNamedServiceViewModel/userQFirebaseAuthServiceViewModel/UserQFirebaseAuthServiceViewModelUsingInsertParameterRegistrationAndUpdateParameterLogin.dart';
import 'package:library_arch_mvvm_modify_firebase_login/modelQThereIsStateViewModel/boolQThereIsStateViewModel/BoolQThereIsStateViewModelForLoading.dart';
import 'package:library_arch_mvvm_modify_firebase_login/modelQThereIsStateViewModel/emailInputQThereIsStateViewModel/EmailInputQThereIsStateViewModel.dart';
import 'package:library_arch_mvvm_modify_firebase_login/modelQThereIsStateViewModel/passwordInputQThereIsStateViewModel/PasswordInputQThereIsStateViewModel.dart';
import 'package:library_arch_mvvm_modify_firebase_login/utility/Email.dart';
import 'package:library_arch_mvvm_modify_firebase_login/utility/Password.dart';
import 'package:library_arch_mvvm_modify_firebase_login/utility/namedTypeParameter/Login.dart';
import 'package:library_arch_mvvm_modify_firebase_login/utility/namedTypeParameter/LoginTypeParameter.dart';
import 'package:library_architecture_mvvm_modify/base_model/bool.dart';
import 'package:library_architecture_mvvm_modify/base_model/list_bool.dart';
import 'package:meta/meta.dart';

class LoginButtonWidgetListViewModel {
  @protected
  final UserQFirebaseAuthServiceViewModelUsingInsertParameterRegistrationAndUpdateParameterLogin<User,ListUser<User>> userQFirebaseAuthServiceViewModelUsingInsertParameterRegistrationAndUpdateParameterLogin;
  @protected
  final EmailInputQThereIsStateViewModel<EmailInput,ListEmailInput<EmailInput>> emailInputQThereIsStateViewModel;
  @protected
  final PasswordInputQThereIsStateViewModel<PasswordInput,ListPasswordInput<PasswordInput>> passwordInputQThereIsStateViewModel;
  @protected
  final BoolQThereIsStateViewModelForLoading<Bool,ListBool> boolQThereIsStateViewModelForLoading;

  LoginButtonWidgetListViewModel(
      this.userQFirebaseAuthServiceViewModelUsingInsertParameterRegistrationAndUpdateParameterLogin,
      this.emailInputQThereIsStateViewModel,
      this.passwordInputQThereIsStateViewModel,
      this.boolQThereIsStateViewModelForLoading);

  Stream<Bool>? get getStreamBoolForLoading {
    return boolQThereIsStateViewModelForLoading.getStreamBoolForLoading;
  }

  Future<void> updateUserToFirebaseAuthServiceParameterLoginUsingFBDSAndInGeneralOneTask(
      Function(String message) callbackForException)
  async {
    if(!Formz.validate([emailInputQThereIsStateViewModel
        .getEmailInput
        ?.getOneParametersNamedForLoginButtonWidget ?? const Email.pure(),
      passwordInputQThereIsStateViewModel
          .getPasswordInput
          ?.getOneParametersNamedForLoginButtonWidget ?? const Password.pure()])
        .isValidated)
    {
      return;
    }
    if(boolQThereIsStateViewModelForLoading
        .getBoolForLoading
        !.isField)
    {
      return;
    }
    boolQThereIsStateViewModelForLoading
        .getBoolForLoading
        ?.isField = true;
    boolQThereIsStateViewModelForLoading
        .notifyStreamBoolForLoading();
    // 1
    final boolTypeParameter = await userQFirebaseAuthServiceViewModelUsingInsertParameterRegistrationAndUpdateParameterLogin
        .updateUserToFirebaseAuthServiceParameterLoginUsingFBDS(LoginTypeParameter.success(Login(emailInputQThereIsStateViewModel.getEmailInput?.getTwoParametersNamedForLoginButtonWidget ?? "", passwordInputQThereIsStateViewModel.getPasswordInput?.getTwoParametersNamedForLoginButtonWidget ?? "")));
    if(boolTypeParameter
        !.exceptionController
        .isExceptionNotEqualsNull())
    {
      boolQThereIsStateViewModelForLoading
          .getBoolForLoading
          ?.isField = false;
      boolQThereIsStateViewModelForLoading
          .notifyStreamBoolForLoading();
      callbackForException(boolTypeParameter
          .exceptionController
          .getMessageForViewByException);
      return;
    }
    return;
  }

}