import 'package:firebase_auth/firebase_auth.dart' as firebase_auth;
import 'package:firebase_auth/firebase_auth.dart';
import 'package:library_arch_mvvm_modify_firebase_login/modelNamedDataSource/userFirebaseAuthAndGoogleSignInDataSource/UserFirebaseAuthAndGoogleSignInDataSource.dart';
import 'package:library_arch_mvvm_modify_firebase_login/utility/customException/SignUpAndLogInWithEmailAndPasswordAndGoogleFailureException.dart';
import 'package:library_architecture_mvvm_modify/base_exception/base_exception.dart';
import 'package:library_architecture_mvvm_modify/base_exception/local_exception.dart';
import 'package:library_architecture_mvvm_modify/base_type_parameter/bool_type_parameter.dart';
import 'package:library_architecture_mvvm_modify/interface_data_source/update_model_to_named_np_data_source.dart';
import 'package:library_architecture_mvvm_modify/response/response.dart';

class UserFirebaseAuthAndGoogleSignInDataSourceUsingUpdateNPForAuthGoogle
    extends UserFirebaseAuthAndGoogleSignInDataSource
    implements UpdateModelToNamedNPDataSource
{
  @override
  Future<Response<BoolTypeParameter, BaseException>> updateModelToNamedNP()
  async {
    try {
      final googleUser = await getDefaultGoogleSignInDataSource
          .getGoogleSignIn
          .signIn();
      final googleAuth = await googleUser.authentication;
      firebase_auth.AuthCredential credential = firebase_auth.GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );
      await getDefaultFirebaseAuthDataSource
          .getFirebaseAuth
          .signInWithCredential(credential);
      return Response.success(BoolTypeParameter(true));
    } on FirebaseAuthException catch (e) {
      return Response.getException(SignUpAndLogInWithEmailAndPasswordAndGoogleFailureException.fromCodeForGoogle(this,e.code));
    } catch (_) {
      return Response.getException(LocalException(this,EnumGuiltyForLocalException.deviceOrDeveloper,_.toString()));
    }
  }
}