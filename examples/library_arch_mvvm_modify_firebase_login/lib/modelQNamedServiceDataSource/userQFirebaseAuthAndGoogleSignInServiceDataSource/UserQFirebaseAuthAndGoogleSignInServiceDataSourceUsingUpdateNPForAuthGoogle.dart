import 'package:firebase_auth/firebase_auth.dart' as firebase_auth;
import 'package:firebase_auth/firebase_auth.dart';
import 'package:library_arch_mvvm_modify_firebase_login/utility/namedException/SignUpAndLogInWithEmailAndPasswordAndGoogleFailureException.dart';
import 'package:library_arch_mvvm_modify_firebase_login/utility/namedService/FirebaseAuthAndGoogleSignInService.dart';
import 'package:library_architecture_mvvm_modify/interface_model_q_named_service_data_source/update_model_to_named_service_np_data_source.dart';
import 'package:library_architecture_mvvm_modify/utility/base_exception/local_exception.dart';
import 'package:library_architecture_mvvm_modify/utility/response.dart';

class UserQFirebaseAuthAndGoogleSignInServiceDataSourceUsingUpdateNPForAuthGoogle
    implements UpdateModelToNamedServiceNPDataSource
{
  final FirebaseAuthAndGoogleSignInService _firebaseAuthAndGoogleSignInService;

  UserQFirebaseAuthAndGoogleSignInServiceDataSourceUsingUpdateNPForAuthGoogle(this._firebaseAuthAndGoogleSignInService);

  @override
  Future<Response> updateModelToNamedServiceNP()
  async {
    try {
      final googleUser = await _firebaseAuthAndGoogleSignInService
          .getGoogleSignInSingleton
          .getGoogleSignIn
          .signIn();
      final googleAuth = await googleUser.authentication;
      firebase_auth.AuthCredential credential = firebase_auth.GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );
      await _firebaseAuthAndGoogleSignInService
          .getFirebaseAuthSingleton
          .getFirebaseAuth
          .signInWithCredential(credential);
      return Response.success(true);
    } on FirebaseAuthException catch (e) {
      return Response.exception(SignUpAndLogInWithEmailAndPasswordAndGoogleFailureException.fromCodeForGoogle(this,e.code));
    } catch (_) {
      return Response.exception(LocalException(this,EnumGuiltyForLocalException.device,_.toString()));
    }
  }
}