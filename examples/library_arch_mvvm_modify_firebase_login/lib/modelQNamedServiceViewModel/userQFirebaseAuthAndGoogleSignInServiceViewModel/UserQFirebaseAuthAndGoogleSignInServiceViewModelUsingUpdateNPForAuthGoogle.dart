import 'package:firebase_auth/firebase_auth.dart' as firebase_auth;
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:library_arch_mvvm_modify_firebase_login/model/user/ListUser.dart';
import 'package:library_arch_mvvm_modify_firebase_login/model/user/User.dart';
import 'package:library_arch_mvvm_modify_firebase_login/modelQNamedServiceViewModel/namedService/FirebaseAuthService.dart';
import 'package:library_arch_mvvm_modify_firebase_login/modelQNamedServiceViewModel/namedService/GoogleSignInService.dart';
import 'package:library_arch_mvvm_modify_firebase_login/utility/namedException/SignUpAndLogInWithEmailAndPasswordAndGoogleFailureException.dart';
import 'package:library_architecture_mvvm_modify/base_model_q_named_service_view_model/base_model_q_named_service_view_model.dart';
import 'package:library_architecture_mvvm_modify/base_model_q_named_service_view_model/interface_model_q_named_service_data_source/update_model_to_named_service_np_data_source.dart';
import 'package:library_architecture_mvvm_modify/utility/base_exception/local_exception.dart';
import 'package:library_architecture_mvvm_modify/utility/result.dart';
import 'package:meta/meta.dart';

class UserQFirebaseAuthAndGoogleSignInServiceViewModelUsingUpdateNPForAuthGoogle<T extends User,Y extends ListUser<T>>
    extends BaseModelQNamedServiceViewModel<T,Y>
    implements UpdateModelToNamedServiceNPDataSource<bool>
{
  @protected
  final firebaseAuthService = FirebaseAuthService();
  @protected
  final googleSignInService = GoogleSignInService();

  Future<Result<bool>?> updateUserToFirebaseAuthAndGoogleSignInServiceNP() {
    return updateModelToNamedServiceNP<bool>();
  }

  @nonVirtual
  @override
  Object? get modelQNamedServiceDataSource => this;

  @protected
  @override
  Future<Result<bool>?> updateModelToNamedServiceNPDS()
  async {
    try {
      late final firebase_auth.AuthCredential credential;
      if (kIsWeb) {
        final googleProvider = firebase_auth.GoogleAuthProvider();
        final userCredential = await firebaseAuthService
            .getFirebaseAuth
            ?.signInWithPopup(googleProvider);
        credential = userCredential!.credential!;
      } else {
        final googleUser = await googleSignInService
            .getGoogleSignIn
            ?.signIn();
        final googleAuth = await googleUser?.authentication;
        credential = firebase_auth.GoogleAuthProvider.credential(
          accessToken: googleAuth?.accessToken,
          idToken: googleAuth?.idToken,
        );
      }
      await firebaseAuthService
          .getFirebaseAuth
          ?.signInWithCredential(credential);
      return Result<bool>.success(true);
    } on firebase_auth.FirebaseAuthException catch (e) {
      return Result<bool>.exception(SignUpAndLogInWithEmailAndPasswordAndGoogleFailureException.fromCodeForGoogle(this,e.code));
    } catch (_) {
      return Result<bool>.exception(LocalException(this,EnumGuiltyForLocalException.device,_.toString()));
    }
  }
}