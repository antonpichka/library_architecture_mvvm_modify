import 'package:formz/formz.dart';
import 'package:library_arch_mvvm_modify_firebase_login/modelQNamedServiceViewModel/userQFirebaseAuthServiceViewModel/UserQFirebaseAuthServiceViewModelUsingInsertParameterRegistrationAndUpdateParameterLogin.dart';
import 'package:library_arch_mvvm_modify_firebase_login/modelQThereIsStateViewModel/emailInputQThereIsStateViewModel/EmailInputQThereIsStateViewModel.dart';
import 'package:library_arch_mvvm_modify_firebase_login/modelQThereIsStateViewModel/passwordInputQThereIsStateViewModel/PasswordInputFirstBranchOneQThereIsStateViewModel.dart';
import 'package:library_arch_mvvm_modify_firebase_login/utility/ConfirmedPassword.dart';
import 'package:library_arch_mvvm_modify_firebase_login/utility/Email.dart';
import 'package:library_arch_mvvm_modify_firebase_login/utility/Password.dart';
import 'package:library_arch_mvvm_modify_firebase_login/utility/Registration.dart';
import 'package:library_architecture_mvvm_modify/base_model/bool.dart';
import 'package:library_architecture_mvvm_modify/base_model_q_there_is_state_view_model/bool_q_there_is_state_view_model.dart';
import 'package:meta/meta.dart';

class SignUpButtonWidgetListViewModel {
  @protected
  final UserQFirebaseAuthServiceViewModelUsingInsertParameterRegistrationAndUpdateParameterLogin userQFirebaseAuthServiceViewModelUsingInsertParameterRegistrationAndUpdateParameterLogin;
  @protected
  final EmailInputQThereIsStateViewModel emailInputQThereIsStateViewModel;
  @protected
  final PasswordInputFirstBranchOneQThereIsStateViewModel passwordInputFirstBranchOneQThereIsStateViewModel;
  @protected
  final BoolQThereIsStateViewModel boolQThereIsStateViewModelForLoading;

  SignUpButtonWidgetListViewModel(
      this.userQFirebaseAuthServiceViewModelUsingInsertParameterRegistrationAndUpdateParameterLogin,
      this.emailInputQThereIsStateViewModel,
      this.passwordInputFirstBranchOneQThereIsStateViewModel,
      this.boolQThereIsStateViewModelForLoading);

  Stream<Bool?>? get getStreamBoolForLoading {
    return boolQThereIsStateViewModelForLoading.getStreamBool;
  }

  Future<void> insertUserToFirebaseAuthServiceParameterRegistrationAndInGeneralOneTask(
      Function(String message) callbackForException,
      Function() callbackForSuccess)
  async {
    if(!Formz.validate([emailInputQThereIsStateViewModel
          .getEmailInput
          ?.getOneParametersNamedForSignUpButtonWidget ?? const Email.pure(),
      passwordInputFirstBranchOneQThereIsStateViewModel
          .getPasswordInput
          ?.getOneParametersNamedForSignUpButtonWidget ?? const Password.pure(),
      passwordInputFirstBranchOneQThereIsStateViewModel
          .getPasswordInput
          ?.getTwoParametersNamedForSignUpButtonWidget ?? const ConfirmedPassword.pure()])
        .isValidated)
    {
      return;
    }
    if(boolQThereIsStateViewModelForLoading
        .getBool
        !.isField)
    {
      return;
    }
    boolQThereIsStateViewModelForLoading
        .getBool
        ?.isField = true;
    boolQThereIsStateViewModelForLoading
        .notifyStreamBool();
    // 1
    final result = await userQFirebaseAuthServiceViewModelUsingInsertParameterRegistrationAndUpdateParameterLogin
        .insertUserToFirebaseAuthServiceParameterRegistration(Registration(emailInputQThereIsStateViewModel.getEmailInput?.getTwoParametersNamedForSignUpButtonWidget ?? "", passwordInputFirstBranchOneQThereIsStateViewModel.getPasswordInput!.getThreeParametersNamedForSignUpButtonWidget ?? ""));
    boolQThereIsStateViewModelForLoading
        .getBool
        ?.isField = false;
    boolQThereIsStateViewModelForLoading
        .notifyStreamBool();
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