import 'package:firebase_auth/firebase_auth.dart' as firebase_auth;
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:library_arch_mvvm_modify_firebase_login/utility/namedException/SignUpAndLogInWithEmailAndPasswordAndGoogleFailureException.dart';
import 'package:library_architecture_mvvm_modify/interface_data_source/update_model_to_named_np_data_source.dart';
import 'package:library_architecture_mvvm_modify/utility/base_exception/local_exception.dart';
import 'package:library_architecture_mvvm_modify/utility/response.dart';

class UserFirebaseAuthAndGoogleSignInDataSourceUsingUpdateNPForAuthGoogle
    implements UpdateModelToNamedNPDataSource
{
  final FirebaseAuth _firebaseAuth;
  final GoogleSignIn _googleSignIn;

  UserFirebaseAuthAndGoogleSignInDataSourceUsingUpdateNPForAuthGoogle(this._firebaseAuth,this._googleSignIn);

  @override
  Future<Response> updateModelToNamedNP()
  async {
    try {
      final googleUser = await _googleSignIn.signIn();
      final googleAuth = await googleUser.authentication;
      firebase_auth.AuthCredential credential = firebase_auth.GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );
      await _firebaseAuth.signInWithCredential(credential);
      return Response.success(true);
    } on FirebaseAuthException catch (e) {
      return Response.exception(SignUpAndLogInWithEmailAndPasswordAndGoogleFailureException.fromCodeForGoogle(this,e.code));
    } catch (_) {
      return Response.exception(LocalException(this,EnumGuiltyForLocalException.deviceOrDeveloper,_.toString()));
    }
  }
}