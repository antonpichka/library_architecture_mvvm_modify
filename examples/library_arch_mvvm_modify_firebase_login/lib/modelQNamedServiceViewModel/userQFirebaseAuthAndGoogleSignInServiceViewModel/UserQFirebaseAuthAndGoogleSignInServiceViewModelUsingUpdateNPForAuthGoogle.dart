import 'package:library_arch_mvvm_modify_firebase_login/modelQNamedServiceDataSource/userQFirebaseAuthAndGoogleSignInServiceDataSource/UserQFirebaseAuthAndGoogleSignInServiceDataSourceUsingUpdateNPForAuthGoogle.dart';
import 'package:library_arch_mvvm_modify_firebase_login/modelQNamedServiceViewModel/UserQNamedServiceViewModel.dart';
import 'package:library_arch_mvvm_modify_firebase_login/utility/namedService/FirebaseAuthAndGoogleSignInService.dart';
import 'package:library_architecture_mvvm_modify/utility/response.dart';

class UserQFirebaseAuthAndGoogleSignInServiceViewModelUsingUpdateNPForAuthGoogle
    extends UserQNamedServiceViewModel
{
  UserQFirebaseAuthAndGoogleSignInServiceViewModelUsingUpdateNPForAuthGoogle(FirebaseAuthAndGoogleSignInService firebaseAuthAndGoogleSignInService) : super.thereIsDataSource(UserQFirebaseAuthAndGoogleSignInServiceDataSourceUsingUpdateNPForAuthGoogle(firebaseAuthAndGoogleSignInService));

  @override
  Object thisClass() {
    return this;
  }

  Future<Response> updateUserToFirebaseAuthAndGoogleSignInServiceNP() {
    return updateModelToNamedServiceNP();
  }
}