import 'package:library_arch_mvvm_modify_firebase_login/modelQNamedServiceViewModel/userQFirebaseAuthAndGoogleSignInServiceViewModel/UserQFirebaseAuthAndGoogleSignInServiceViewModelUsingUpdateNPForAuthGoogle.dart';
import 'package:library_architecture_mvvm_modify/base_model_q_there_is_state_view_model/bool_q_there_is_state_view_model.dart';
import 'package:meta/meta.dart';

class GoogleButtonWidgetListViewModel {
  @protected
  final UserQFirebaseAuthAndGoogleSignInServiceViewModelUsingUpdateNPForAuthGoogle userQFirebaseAuthAndGoogleSignInServiceViewModelUsingUpdateNPForAuthGoogle;
  @protected
  final BoolQThereIsStateViewModel boolQThereIsStateViewModelForLoading;

  GoogleButtonWidgetListViewModel(
      this.userQFirebaseAuthAndGoogleSignInServiceViewModelUsingUpdateNPForAuthGoogle,
      this.boolQThereIsStateViewModelForLoading);

  Future<void> updateUserToFirebaseAuthAndGoogleSignInServiceNPAndInGeneralOneTask(
      Function(String message) callbackForException)
  async {
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
    final boolTypeParameter = await userQFirebaseAuthAndGoogleSignInServiceViewModelUsingUpdateNPForAuthGoogle
        .updateUserToFirebaseAuthAndGoogleSignInServiceNP();
    boolQThereIsStateViewModelForLoading
        .getBool
        ?.isField = false;
    boolQThereIsStateViewModelForLoading
        .notifyStreamBool();
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