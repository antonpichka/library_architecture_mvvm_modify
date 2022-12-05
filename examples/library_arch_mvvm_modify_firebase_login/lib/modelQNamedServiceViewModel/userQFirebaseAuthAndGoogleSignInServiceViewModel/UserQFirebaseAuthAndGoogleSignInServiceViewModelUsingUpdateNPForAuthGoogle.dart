import 'package:library_arch_mvvm_modify_firebase_login/modelQNamedServiceDataSource/userQFirebaseAuthAndGoogleSignInServiceDataSource/UserQFirebaseAuthAndGoogleSignInServiceDataSourceUsingUpdateNPForAuthGoogle.dart';
import 'package:library_arch_mvvm_modify_firebase_login/modelQNamedServiceViewModel/UserQNamedServiceViewModel.dart';
import 'package:library_arch_mvvm_modify_firebase_login/utility/namedService/FirebaseAuthAndGoogleSignInService.dart';
import 'package:library_architecture_mvvm_modify/utility/base_type_parameter/bool_type_parameter.dart';

class UserQFirebaseAuthAndGoogleSignInServiceViewModelUsingUpdateNPForAuthGoogle
    extends UserQNamedServiceViewModel<UserQFirebaseAuthAndGoogleSignInServiceDataSourceUsingUpdateNPForAuthGoogle>
{
  UserQFirebaseAuthAndGoogleSignInServiceViewModelUsingUpdateNPForAuthGoogle() : super.thereIsDataSource(UserQFirebaseAuthAndGoogleSignInServiceDataSourceUsingUpdateNPForAuthGoogle(FirebaseAuthAndGoogleSignInService()));

  @override
  Object thisClass() {
    return this;
  }

  Future<BoolTypeParameter?> updateUserToFirebaseAuthAndGoogleSignInServiceNP() {
    return updateModelToNamedServiceNP<BoolTypeParameter>();
  }
}