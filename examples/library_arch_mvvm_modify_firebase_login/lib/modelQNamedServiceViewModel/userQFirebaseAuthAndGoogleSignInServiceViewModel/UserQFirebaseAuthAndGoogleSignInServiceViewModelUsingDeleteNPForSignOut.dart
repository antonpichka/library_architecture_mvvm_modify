import 'package:library_arch_mvvm_modify_firebase_login/model/user/ListUser.dart';
import 'package:library_arch_mvvm_modify_firebase_login/model/user/User.dart';
import 'package:library_arch_mvvm_modify_firebase_login/modelQNamedServiceViewModel/namedService/FirebaseAuthService.dart';
import 'package:library_arch_mvvm_modify_firebase_login/modelQNamedServiceViewModel/namedService/GoogleSignInService.dart';
import 'package:library_architecture_mvvm_modify/base_model_q_named_service_view_model/base_model_q_named_service_view_model.dart';
import 'package:library_architecture_mvvm_modify/base_model_q_named_service_view_model/interface_model_q_named_service_data_source/delete_model_to_named_service_np_data_source.dart';
import 'package:library_architecture_mvvm_modify/utility/base_exception/local_exception.dart';
import 'package:library_architecture_mvvm_modify/utility/result.dart';
import 'package:meta/meta.dart';

base class UserQFirebaseAuthAndGoogleSignInServiceViewModelUsingDeleteNPForSignOut<
        T extends User,
        Y extends ListUser<T>> extends BaseModelQNamedServiceViewModel<T, Y>
    implements DeleteModelToNamedServiceNPDataSource<bool> {
  @protected
  final firebaseAuthService = FirebaseAuthService();
  @protected
  final googleSignInService = GoogleSignInService();

  Future<Result<bool>?> deleteUserToFirebaseAuthAndGoogleSignInServiceNP() {
    return deleteModelToNamedServiceNP<bool>();
  }

  @nonVirtual
  @override
  Object? get modelQNamedServiceDataSource => this;

  @protected
  @override
  Future<Result<bool>?> deleteModelToNamedServiceNPDS() async {
    try {
      await firebaseAuthService.getFirebaseAuth?.signOut();
      await googleSignInService.getGoogleSignIn?.signOut();
      return Result<bool>.success(true);
    } catch (_) {
      return Result<bool>.exception(LocalException(
          this, EnumGuiltyForLocalException.device, _.toString()));
    }
  }
}
