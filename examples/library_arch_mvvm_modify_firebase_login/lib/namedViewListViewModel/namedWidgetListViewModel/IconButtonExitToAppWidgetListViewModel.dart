import 'package:library_arch_mvvm_modify_firebase_login/model/user/ListUser.dart';
import 'package:library_arch_mvvm_modify_firebase_login/model/user/User.dart';
import 'package:library_arch_mvvm_modify_firebase_login/modelQNamedServiceViewModel/userQFirebaseAuthAndGoogleSignInServiceViewModel/UserQFirebaseAuthAndGoogleSignInServiceViewModelUsingDeleteNPForSignOut.dart';

class IconButtonExitToAppWidgetListViewModel {
  final UserQFirebaseAuthAndGoogleSignInServiceViewModelUsingDeleteNPForSignOut<User,ListUser> _userQFirebaseAuthAndGoogleSignInServiceViewModelUsingDeleteNPForSignOut;

  IconButtonExitToAppWidgetListViewModel(this._userQFirebaseAuthAndGoogleSignInServiceViewModelUsingDeleteNPForSignOut);

  Future<void> deleteUserToFirebaseAuthAndGoogleSignInServiceNPAndInGeneralOneTask()
  async {
    // 1
    await _userQFirebaseAuthAndGoogleSignInServiceViewModelUsingDeleteNPForSignOut
        .deleteUserToFirebaseAuthAndGoogleSignInServiceNP();
    return;
  }
}