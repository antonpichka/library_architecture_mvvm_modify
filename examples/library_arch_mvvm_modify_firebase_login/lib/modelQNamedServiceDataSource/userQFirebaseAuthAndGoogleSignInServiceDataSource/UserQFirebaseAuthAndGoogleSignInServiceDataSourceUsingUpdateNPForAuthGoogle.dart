import 'package:firebase_auth/firebase_auth.dart' as firebase_auth;
import 'package:flutter/foundation.dart' show kIsWeb, protected;
import 'package:library_arch_mvvm_modify_firebase_login/model/user/ListUser.dart';
import 'package:library_arch_mvvm_modify_firebase_login/model/user/User.dart';
import 'package:library_arch_mvvm_modify_firebase_login/utility/namedException/SignUpAndLogInWithEmailAndPasswordAndGoogleFailureException.dart';
import 'package:library_arch_mvvm_modify_firebase_login/modelQNamedServiceDataSource/namedService/FirebaseAuthAndGoogleSignInService.dart';
import 'package:library_architecture_mvvm_modify/interface_model_q_named_service_data_source/update_model_to_named_service_np_data_source.dart';
import 'package:library_architecture_mvvm_modify/utility/base_exception/local_exception.dart';
import 'package:library_architecture_mvvm_modify/utility/base_type_parameter/bool_type_parameter.dart';

class UserQFirebaseAuthAndGoogleSignInServiceDataSourceUsingUpdateNPForAuthGoogle<T extends User,Y extends ListUser<T>>
    implements UpdateModelToNamedServiceNPDataSource<BoolTypeParameter>
{
  @protected
  final firebaseAuthAndGoogleSignInService = FirebaseAuthAndGoogleSignInService();

  UserQFirebaseAuthAndGoogleSignInServiceDataSourceUsingUpdateNPForAuthGoogle();

  @override
  Future<BoolTypeParameter> updateModelToNamedServiceNP()
  async {
    try {
      late final firebase_auth.AuthCredential credential;
      if (kIsWeb) {
        final googleProvider = firebase_auth.GoogleAuthProvider();
        final userCredential = await firebaseAuthAndGoogleSignInService
            .getFirebaseAuthSingleton
            ?.getFirebaseAuth
            ?.signInWithPopup(googleProvider,);
        credential = userCredential!.credential!;
      } else {
        final googleUser = await firebaseAuthAndGoogleSignInService
            .getGoogleSignInSingleton
            ?.getGoogleSignIn
            ?.signIn();
        final googleAuth = await googleUser?.authentication;
        credential = firebase_auth.GoogleAuthProvider.credential(
          accessToken: googleAuth?.accessToken,
          idToken: googleAuth?.idToken,
        );
      }
      await firebaseAuthAndGoogleSignInService
          .getFirebaseAuthSingleton
          ?.getFirebaseAuth
          ?.signInWithCredential(credential);
      return BoolTypeParameter.success(true);
    } on firebase_auth.FirebaseAuthException catch (e) {
      return BoolTypeParameter.exception(SignUpAndLogInWithEmailAndPasswordAndGoogleFailureException.fromCodeForGoogle(this,e.code));
    } catch (_) {
      return BoolTypeParameter.exception(LocalException(this,EnumGuiltyForLocalException.device,_.toString()));
    }
  }
}