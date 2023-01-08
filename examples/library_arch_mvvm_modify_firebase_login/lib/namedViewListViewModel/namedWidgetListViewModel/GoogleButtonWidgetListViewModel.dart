import 'package:library_arch_mvvm_modify_firebase_login/model/user/ListUser.dart';
import 'package:library_arch_mvvm_modify_firebase_login/model/user/User.dart';
import 'package:library_arch_mvvm_modify_firebase_login/modelQNamedServiceViewModel/userQFirebaseAuthAndGoogleSignInServiceViewModel/UserQFirebaseAuthAndGoogleSignInServiceViewModelUsingUpdateNPForAuthGoogle.dart';
import 'package:library_arch_mvvm_modify_firebase_login/modelQThereIsStateViewModel/boolQThereIsStateViewModel/BoolQThereIsStateViewModelForLoading.dart';
import 'package:library_architecture_mvvm_modify/base_model/bool.dart';
import 'package:library_architecture_mvvm_modify/base_model/list_bool.dart';
import 'package:meta/meta.dart';

class GoogleButtonWidgetListViewModel {
  @protected
  final UserQFirebaseAuthAndGoogleSignInServiceViewModelUsingUpdateNPForAuthGoogle<User,ListUser<User>> userQFirebaseAuthAndGoogleSignInServiceViewModelUsingUpdateNPForAuthGoogle;
  @protected
  final BoolQThereIsStateViewModelForLoading<Bool,ListBool<Bool>> boolQThereIsStateViewModelForLoading;

  GoogleButtonWidgetListViewModel(
      this.userQFirebaseAuthAndGoogleSignInServiceViewModelUsingUpdateNPForAuthGoogle,
      this.boolQThereIsStateViewModelForLoading);

  Future<void> updateUserToFirebaseAuthAndGoogleSignInServiceNPAndInGeneralOneTask(
      Function(String message) callbackForException)
  async {
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
    final boolTypeParameter = await userQFirebaseAuthAndGoogleSignInServiceViewModelUsingUpdateNPForAuthGoogle
        .updateUserToFirebaseAuthAndGoogleSignInServiceNP();
    boolQThereIsStateViewModelForLoading
        .getBoolForLoading
        ?.isField = false;
    boolQThereIsStateViewModelForLoading
        .notifyStreamBoolForLoading();
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