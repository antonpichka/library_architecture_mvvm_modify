import 'package:formz/formz.dart';
import 'package:library_arch_mvvm_modify_firebase_login/modelQNamedServiceViewModel/userQFirebaseAuthServiceViewModel/UserQFirebaseAuthServiceViewModelUsingInsertParameterRegistrationAndUpdateParameterLogin.dart';
import 'package:library_arch_mvvm_modify_firebase_login/modelQThereIsStateViewModel/emailInputQThereIsStateViewModel/EmailInputQThereIsStateViewModel.dart';
import 'package:library_arch_mvvm_modify_firebase_login/modelQThereIsStateViewModel/passwordInputQThereIsStateViewModel/PasswordInputQThereIsStateViewModel.dart';
import 'package:library_arch_mvvm_modify_firebase_login/utility/Email.dart';
import 'package:library_arch_mvvm_modify_firebase_login/utility/Login.dart';
import 'package:library_arch_mvvm_modify_firebase_login/utility/Password.dart';
import 'package:library_architecture_mvvm_modify/base_model/bool.dart';
import 'package:library_architecture_mvvm_modify/base_model_q_there_is_state_view_model/bool_q_there_is_state_view_model.dart';
import 'package:meta/meta.dart';

base class LoginButtonWidgetListViewModel {
  @protected
  final UserQFirebaseAuthServiceViewModelUsingInsertParameterRegistrationAndUpdateParameterLogin
      userQFirebaseAuthServiceViewModelUsingInsertParameterRegistrationAndUpdateParameterLogin;
  @protected
  final EmailInputQThereIsStateViewModel emailInputQThereIsStateViewModel;
  @protected
  final PasswordInputQThereIsStateViewModel passwordInputQThereIsStateViewModel;
  @protected
  final BoolQThereIsStateViewModel boolQThereIsStateViewModelForLoading;

  LoginButtonWidgetListViewModel(
      this.userQFirebaseAuthServiceViewModelUsingInsertParameterRegistrationAndUpdateParameterLogin,
      this.emailInputQThereIsStateViewModel,
      this.passwordInputQThereIsStateViewModel,
      this.boolQThereIsStateViewModelForLoading);

  Stream<Bool?>? get getStreamBool {
    return boolQThereIsStateViewModelForLoading.getStreamBool;
  }

  Future<void>
      updateUserToFirebaseAuthServiceParameterLoginUsingFBDSAndInGeneralOneTask(
          Function(String message) callbackForException) async {
    if (!Formz.validate([
      emailInputQThereIsStateViewModel
              .getEmailInput?.getOneParametersNamedForLoginButtonWidget ??
          const Email.pure(),
      passwordInputQThereIsStateViewModel
              .getPasswordInput?.getOneParametersNamedForLoginButtonWidget ??
          const Password.pure()
    ]).isValidated) {
      return;
    }
    if (boolQThereIsStateViewModelForLoading.getBool!.isField) {
      return;
    }
    boolQThereIsStateViewModelForLoading.getBool?.isField = true;
    boolQThereIsStateViewModelForLoading.notifyStreamBool();
    // 1
    final result =
        await userQFirebaseAuthServiceViewModelUsingInsertParameterRegistrationAndUpdateParameterLogin
            .updateUserToFirebaseAuthServiceParameterLoginUsingFBDS(Login(
                emailInputQThereIsStateViewModel.getEmailInput
                        ?.getTwoParametersNamedForLoginButtonWidget ??
                    "",
                passwordInputQThereIsStateViewModel.getPasswordInput
                        ?.getTwoParametersNamedForLoginButtonWidget ??
                    ""));
    if (result!.exceptionController.isNotEqualsNullParameterException()) {
      boolQThereIsStateViewModelForLoading.getBool?.isField = false;
      boolQThereIsStateViewModelForLoading.notifyStreamBool();
      callbackForException(
          result.exceptionController.getMessageForViewParameterException!);
      return;
    }
    return;
  }
}
