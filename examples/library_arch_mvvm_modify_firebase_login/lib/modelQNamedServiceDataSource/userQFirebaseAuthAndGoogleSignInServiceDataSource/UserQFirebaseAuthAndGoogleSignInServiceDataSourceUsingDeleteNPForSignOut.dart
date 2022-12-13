import 'package:library_arch_mvvm_modify_firebase_login/model/user/ListUser.dart';
import 'package:library_arch_mvvm_modify_firebase_login/model/user/User.dart';
import 'package:library_arch_mvvm_modify_firebase_login/modelQNamedServiceDataSource/namedService/FirebaseAuthAndGoogleSignInService.dart';
import 'package:library_architecture_mvvm_modify/interface_model_q_named_service_data_source/delete_model_to_named_service_np_data_source.dart';
import 'package:library_architecture_mvvm_modify/utility/base_exception/local_exception.dart';
import 'package:library_architecture_mvvm_modify/utility/base_type_parameter/bool_type_parameter.dart';

class UserQFirebaseAuthAndGoogleSignInServiceDataSourceUsingDeleteNPForSignOut<T extends User,Y extends ListUser<T>>
    implements DeleteModelToNamedServiceNPDataSource<BoolTypeParameter>
{
  final _firebaseAuthAndGoogleSignInService = FirebaseAuthAndGoogleSignInService();

  UserQFirebaseAuthAndGoogleSignInServiceDataSourceUsingDeleteNPForSignOut();

  @override
  Future<BoolTypeParameter> deleteModelToNamedServiceNP()
  async {
    try {
      await _firebaseAuthAndGoogleSignInService
          .getFirebaseAuthSingleton
          ?.getFirebaseAuth
          ?.signOut();
      await _firebaseAuthAndGoogleSignInService
          .getGoogleSignInSingleton
          ?.getGoogleSignIn
          ?.signOut();
      return BoolTypeParameter.success(true);
    } catch (_) {
      return BoolTypeParameter.exception(LocalException(this,EnumGuiltyForLocalException.device,_.toString()));
    }
  }

}