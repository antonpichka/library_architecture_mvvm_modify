import 'package:library_arch_mvvm_modify_firebase_login/modelQNamedServiceViewModel/userQFirebaseAuthAndGoogleSignInServiceViewModel/UserQFirebaseAuthAndGoogleSignInServiceViewModelUsingDeleteNPForSignOut.dart';
import 'package:meta/meta.dart';

class IconButtonExitToAppWidgetListViewModel {
  @protected
  final UserQFirebaseAuthAndGoogleSignInServiceViewModelUsingDeleteNPForSignOut
      userQFirebaseAuthAndGoogleSignInServiceViewModelUsingDeleteNPForSignOut;

  IconButtonExitToAppWidgetListViewModel(
      this.userQFirebaseAuthAndGoogleSignInServiceViewModelUsingDeleteNPForSignOut);

  Future<void>
      deleteUserToFirebaseAuthAndGoogleSignInServiceNPAndInGeneralOneTask() async {
    // 1
    await userQFirebaseAuthAndGoogleSignInServiceViewModelUsingDeleteNPForSignOut
        .deleteUserToFirebaseAuthAndGoogleSignInServiceNP();
    return;
  }
}
