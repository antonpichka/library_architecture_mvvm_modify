import 'package:library_arch_mvvm_modify_firebase_login/modelQNamedServiceDataSource/userQFirebaseAuthAndGoogleSignInServiceDataSource/UserQFirebaseAuthAndGoogleSignInServiceDataSourceUsingDeleteNPForSignOut.dart';
import 'package:library_arch_mvvm_modify_firebase_login/modelQNamedServiceViewModel/UserQNamedServiceViewModel.dart';
import 'package:library_arch_mvvm_modify_firebase_login/utility/namedService/FirebaseAuthAndGoogleSignInService.dart';
import 'package:library_architecture_mvvm_modify/utility/response.dart';

class UserQFirebaseAuthAndGoogleSignInServiceViewModelUsingDeleteNPForSignOut
    extends UserQNamedServiceViewModel
{
  UserQFirebaseAuthAndGoogleSignInServiceViewModelUsingDeleteNPForSignOut(FirebaseAuthAndGoogleSignInService firebaseAuthAndGoogleSignInService) : super.thereIsDataSource(UserQFirebaseAuthAndGoogleSignInServiceDataSourceUsingDeleteNPForSignOut(firebaseAuthAndGoogleSignInService));

  @override
  Object thisClass() {
    return this;
  }

  Future<Response> deleteUserToFirebaseAuthAndGoogleSignInServiceNP() {
    return deleteModelToNamedServiceNP();
  }
}