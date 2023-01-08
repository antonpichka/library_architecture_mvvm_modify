import 'package:library_arch_mvvm_modify_firebase_login/model/user/ListUser.dart';
import 'package:library_arch_mvvm_modify_firebase_login/model/user/User.dart';
import 'package:library_arch_mvvm_modify_firebase_login/modelQNamedServiceViewModel/namedService/FirebaseAuthAndGoogleSignInService.dart';
import 'package:library_architecture_mvvm_modify/base_model_q_named_service_view_model/base_model_q_named_service_view_model.dart';
import 'package:library_architecture_mvvm_modify/interface_model_q_named_service_data_source/delete_model_to_named_service_np_data_source.dart';
import 'package:library_architecture_mvvm_modify/utility/base_exception/local_exception.dart';
import 'package:library_architecture_mvvm_modify/utility/base_type_parameter/bool_type_parameter.dart';
import 'package:meta/meta.dart';

class UserQFirebaseAuthAndGoogleSignInServiceViewModelUsingDeleteNPForSignOut<T extends User,Y extends ListUser<T>>
    extends BaseModelQNamedServiceViewModel<T,Y>
    implements DeleteModelToNamedServiceNPDataSource<BoolTypeParameter>
{
  @protected
  final firebaseAuthAndGoogleSignInService = FirebaseAuthAndGoogleSignInService();

  Future<BoolTypeParameter?> deleteUserToFirebaseAuthAndGoogleSignInServiceNP() {
    return deleteModelToNamedServiceNP<BoolTypeParameter>();
  }

  @protected
  @override
  Object? get modelQNamedServiceDataSource => this;

  @protected
  @override
  Future<BoolTypeParameter> deleteModelToNamedServiceNPDS()
  async {
    try {
      await firebaseAuthAndGoogleSignInService
          .getFirebaseAuthSingleton
          ?.getFirebaseAuth
          ?.signOut();
      await firebaseAuthAndGoogleSignInService
          .getGoogleSignInSingleton
          ?.getGoogleSignIn
          ?.signOut();
      return BoolTypeParameter.success(true);
    } catch (_) {
      return BoolTypeParameter.exception(LocalException(this,EnumGuiltyForLocalException.device,_.toString()));
    }
  }
}