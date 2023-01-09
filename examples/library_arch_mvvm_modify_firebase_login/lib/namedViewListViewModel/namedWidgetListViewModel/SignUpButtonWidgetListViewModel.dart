import 'package:formz/formz.dart';
import 'package:library_arch_mvvm_modify_firebase_login/model/emailInput/EmailInput.dart';
import 'package:library_arch_mvvm_modify_firebase_login/model/emailInput/ListEmailInput.dart';
import 'package:library_arch_mvvm_modify_firebase_login/model/passwordInput/ListPasswordInputFirstBranchOne.dart';
import 'package:library_arch_mvvm_modify_firebase_login/model/passwordInput/PasswordInputFirstBranchOne.dart';
import 'package:library_arch_mvvm_modify_firebase_login/model/user/ListUser.dart';
import 'package:library_arch_mvvm_modify_firebase_login/model/user/User.dart';
import 'package:library_arch_mvvm_modify_firebase_login/modelQNamedServiceViewModel/userQFirebaseAuthServiceViewModel/UserQFirebaseAuthServiceViewModelUsingInsertParameterRegistrationAndUpdateParameterLogin.dart';
import 'package:library_arch_mvvm_modify_firebase_login/modelQThereIsStateViewModel/boolQThereIsStateViewModel/BoolQThereIsStateViewModelForLoading.dart';
import 'package:library_arch_mvvm_modify_firebase_login/modelQThereIsStateViewModel/emailInputQThereIsStateViewModel/EmailInputQThereIsStateViewModel.dart';
import 'package:library_arch_mvvm_modify_firebase_login/modelQThereIsStateViewModel/passwordInputQThereIsStateViewModel/PasswordInputQThereIsStateViewModel.dart';
import 'package:library_arch_mvvm_modify_firebase_login/utility/ConfirmedPassword.dart';
import 'package:library_arch_mvvm_modify_firebase_login/utility/Email.dart';
import 'package:library_arch_mvvm_modify_firebase_login/utility/Password.dart';
import 'package:library_arch_mvvm_modify_firebase_login/utility/Registration.dart';
import 'package:library_architecture_mvvm_modify/base_model/bool.dart';
import 'package:library_architecture_mvvm_modify/base_model/list_bool.dart';
import 'package:meta/meta.dart';

class SignUpButtonWidgetListViewModel {
  @protected
  final UserQFirebaseAuthServiceViewModelUsingInsertParameterRegistrationAndUpdateParameterLogin<User,ListUser<User>> userQFirebaseAuthServiceViewModelUsingInsertParameterRegistrationAndUpdateParameterLogin;
  @protected
  final EmailInputQThereIsStateViewModel<EmailInput,ListEmailInput<EmailInput>> emailInputQThereIsStateViewModel;
  @protected
  final PasswordInputQThereIsStateViewModel<PasswordInputFirstBranchOne,ListPasswordInputFirstBranchOne<PasswordInputFirstBranchOne>> passwordInputQThereIsStateViewModel;
  @protected
  final BoolQThereIsStateViewModelForLoading<Bool,ListBool<Bool>> boolQThereIsStateViewModelForLoading;

  SignUpButtonWidgetListViewModel(
      this.userQFirebaseAuthServiceViewModelUsingInsertParameterRegistrationAndUpdateParameterLogin,
      this.emailInputQThereIsStateViewModel,
      this.passwordInputQThereIsStateViewModel,
      this.boolQThereIsStateViewModelForLoading);

  Stream<Bool>? get getStreamBoolUsingGetNPForLoading {
    return boolQThereIsStateViewModelForLoading.getStreamBoolForLoading;
  }

  Future<void> insertUserToFirebaseAuthServiceParameterRegistrationAndInGeneralOneTask(
      Function(String message) callbackForException,
      Function() callbackForSuccess)
  async {
    if(!Formz.validate([
      emailInputQThereIsStateViewModel
          .getEmailInput
          ?.getOneParametersNamedForSignUpButtonWidget ?? const Email.pure(),
      passwordInputQThereIsStateViewModel
          .getPasswordInput
          ?.getOneParametersNamedForSignUpButtonWidget ?? const Password.pure(),
      passwordInputQThereIsStateViewModel
          .getPasswordInput
          ?.getTwoParametersNamedForSignUpButtonWidget ?? const ConfirmedPassword.pure()])
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
    final result = await userQFirebaseAuthServiceViewModelUsingInsertParameterRegistrationAndUpdateParameterLogin
        .insertUserToFirebaseAuthServiceParameterRegistration(Registration(emailInputQThereIsStateViewModel.getEmailInput?.getTwoParametersNamedForSignUpButtonWidget ?? "", passwordInputQThereIsStateViewModel.getPasswordInput!.getThreeParametersNamedForSignUpButtonWidget ?? ""));
    boolQThereIsStateViewModelForLoading
        .getBoolForLoading
        ?.isField = false;
    boolQThereIsStateViewModelForLoading
        .notifyStreamBoolForLoading();
    if(result
        !.exceptionController
        .isExceptionNotEqualsNull())
    {
      callbackForException(result
          .exceptionController
          .getMessageForViewByException);
      return;
    }
    callbackForSuccess();
    return;
  }
}