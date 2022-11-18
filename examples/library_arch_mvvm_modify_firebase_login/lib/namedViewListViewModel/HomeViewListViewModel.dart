import 'package:library_arch_mvvm_modify_firebase_login/modelQNamedServiceViewModel/userQFirebaseAuthAndGoogleSignInServiceViewModel/UserQFirebaseAuthAndGoogleSignInServiceViewModelUsingDeleteNPForSignOut.dart';
import 'package:library_arch_mvvm_modify_firebase_login/utility/namedService/FirebaseAuthAndGoogleSignInService.dart';
import 'package:library_architecture_mvvm_modify/base_named_view_list_view_model/base_named_view_list_view_model.dart';

class HomeViewListViewModel
    extends BaseNamedViewListViewModel
{
  final _userQFirebaseAuthAndGoogleSignInServiceViewModelUsingDeleteNPForSignOut =
  UserQFirebaseAuthAndGoogleSignInServiceViewModelUsingDeleteNPForSignOut(FirebaseAuthAndGoogleSignInService());

  @override
  void dispose() {
    _userQFirebaseAuthAndGoogleSignInServiceViewModelUsingDeleteNPForSignOut.dispose();
  }

  Future<void> deleteUserToFirebaseAuthAndGoogleSignInServiceNPAndInGeneralZeroTask()
  async {
    await _userQFirebaseAuthAndGoogleSignInServiceViewModelUsingDeleteNPForSignOut
        .deleteUserToFirebaseAuthAndGoogleSignInServiceNP();
  }
}