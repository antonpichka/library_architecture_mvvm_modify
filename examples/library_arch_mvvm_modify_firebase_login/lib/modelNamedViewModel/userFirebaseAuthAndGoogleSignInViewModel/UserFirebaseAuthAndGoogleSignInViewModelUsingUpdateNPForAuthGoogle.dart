import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:library_arch_mvvm_modify_firebase_login/modelNamedDataSource/userFirebaseAuthAndGoogleSignInDataSource/UserFirebaseAuthAndGoogleSignInDataSourceUsingUpdateNPForAuthGoogle.dart';
import 'package:library_arch_mvvm_modify_firebase_login/modelNamedViewModel/userFirebaseAuthAndGoogleSignInViewModel/UserFirebaseAuthAndGoogleSignInViewModel.dart';
import 'package:library_architecture_mvvm_modify/utility/response.dart';

class UserFirebaseAuthAndGoogleSignInViewModelUsingUpdateNPForAuthGoogle
    extends UserFirebaseAuthAndGoogleSignInViewModel
{
  UserFirebaseAuthAndGoogleSignInViewModelUsingUpdateNPForAuthGoogle(FirebaseAuth firebaseAuth,GoogleSignIn googleSignIn) : super.thereIsDataSource(UserFirebaseAuthAndGoogleSignInDataSourceUsingUpdateNPForAuthGoogle(firebaseAuth, googleSignIn));

  @override
  Object thisClass() {
    return this;
  }

  Future<Response> updateUserToFirebaseAuthAndGoogleSignInNP() {
    return super.updateModelToNamedNP();
  }
}