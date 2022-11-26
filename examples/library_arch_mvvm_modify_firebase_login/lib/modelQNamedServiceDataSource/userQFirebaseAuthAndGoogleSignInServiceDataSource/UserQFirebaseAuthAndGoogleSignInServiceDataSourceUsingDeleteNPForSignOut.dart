import 'package:library_arch_mvvm_modify_firebase_login/utility/namedService/FirebaseAuthAndGoogleSignInService.dart';
import 'package:library_architecture_mvvm_modify/interface_model_q_named_service_data_source/delete_model_to_named_service_np_data_source.dart';
import 'package:library_architecture_mvvm_modify/utility/base_exception/local_exception.dart';
import 'package:library_architecture_mvvm_modify/utility/response.dart';

class UserQFirebaseAuthAndGoogleSignInServiceDataSourceUsingDeleteNPForSignOut
    implements DeleteModelToNamedServiceNPDataSource
{
  final FirebaseAuthAndGoogleSignInService _firebaseAuthAndGoogleSignInService;

  UserQFirebaseAuthAndGoogleSignInServiceDataSourceUsingDeleteNPForSignOut(this._firebaseAuthAndGoogleSignInService);

  @override
  Future<Response> deleteModelToNamedServiceNP()
  async {
    try {
      await Future.wait([
        _firebaseAuthAndGoogleSignInService
            .getFirebaseAuthSingleton
            .getFirebaseAuth
            .signOut(),
        _firebaseAuthAndGoogleSignInService
            .getGoogleSignInSingleton
            .getGoogleSignIn
            .signOut(),
      ]);
      return Response.success(true);
    } catch (_) {
      return Response.exception(LocalException(this,EnumGuiltyForLocalException.device,_.toString()));
    }
  }

}