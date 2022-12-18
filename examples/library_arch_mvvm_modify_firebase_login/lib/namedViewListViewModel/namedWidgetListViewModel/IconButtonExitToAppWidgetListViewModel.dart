import 'package:flutter/foundation.dart';
import 'package:library_arch_mvvm_modify_firebase_login/model/user/ListUser.dart';
import 'package:library_arch_mvvm_modify_firebase_login/model/user/User.dart';
import 'package:library_arch_mvvm_modify_firebase_login/modelQNamedServiceViewModel/userQFirebaseAuthAndGoogleSignInServiceViewModel/UserQFirebaseAuthAndGoogleSignInServiceViewModelUsingDeleteNPForSignOut.dart';

class IconButtonExitToAppWidgetListViewModel {
  @protected
  final UserQFirebaseAuthAndGoogleSignInServiceViewModelUsingDeleteNPForSignOut<User,ListUser<User>> userQFirebaseAuthAndGoogleSignInServiceViewModelUsingDeleteNPForSignOut;

  IconButtonExitToAppWidgetListViewModel(this.userQFirebaseAuthAndGoogleSignInServiceViewModelUsingDeleteNPForSignOut);

  Future<void> deleteUserToFirebaseAuthAndGoogleSignInServiceNPAndInGeneralOneTask()
  async {
    // 1
    await userQFirebaseAuthAndGoogleSignInServiceViewModelUsingDeleteNPForSignOut
        .deleteUserToFirebaseAuthAndGoogleSignInServiceNP();
    return;
  }
}