import 'package:library_arch_mvvm_modify_firebase_login/model/user/ListUser.dart';
import 'package:library_arch_mvvm_modify_firebase_login/model/user/User.dart';
import 'package:library_arch_mvvm_modify_firebase_login/modelQNamedServiceDataSource/userQFirebaseAuthAndGoogleSignInServiceDataSource/UserQFirebaseAuthAndGoogleSignInServiceDataSourceUsingUpdateNPForAuthGoogle.dart';
import 'package:library_arch_mvvm_modify_firebase_login/modelQNamedServiceViewModel/UserQNamedServiceViewModel.dart';
import 'package:library_architecture_mvvm_modify/base_model/interface_clone_stream_model_for_success/i_clone_stream_model_for_success.dart';
import 'package:library_architecture_mvvm_modify/utility/base_type_parameter/bool_type_parameter.dart';

class UserQFirebaseAuthAndGoogleSignInServiceViewModelUsingUpdateNPForAuthGoogle<T extends User,Y extends ListUser>
    extends UserQNamedServiceViewModel<T,Y,UserQFirebaseAuthAndGoogleSignInServiceDataSourceUsingUpdateNPForAuthGoogle<T,Y>>
{
  UserQFirebaseAuthAndGoogleSignInServiceViewModelUsingUpdateNPForAuthGoogle(ICloneStreamModelForSuccess<T,Y> iCloneStreamModelForSuccess) : super.thereIsDataSource(UserQFirebaseAuthAndGoogleSignInServiceDataSourceUsingUpdateNPForAuthGoogle(),iCloneStreamModelForSuccess);

  @override
  Object thisClass() {
    return this;
  }

  Future<BoolTypeParameter?> updateUserToFirebaseAuthAndGoogleSignInServiceNP() {
    return updateModelToNamedServiceNP<BoolTypeParameter>();
  }
}