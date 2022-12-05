import 'package:library_arch_mvvm_modify_firebase_login/modelQNamedServiceDataSource/userQFirebaseAuthAndGoogleSignInServiceDataSource/UserQFirebaseAuthAndGoogleSignInServiceDataSourceUsingDeleteNPForSignOut.dart';
import 'package:library_arch_mvvm_modify_firebase_login/modelQNamedServiceViewModel/UserQNamedServiceViewModel.dart';
import 'package:library_arch_mvvm_modify_firebase_login/utility/namedService/FirebaseAuthAndGoogleSignInService.dart';
import 'package:library_architecture_mvvm_modify/utility/base_type_parameter/bool_type_parameter.dart';

class UserQFirebaseAuthAndGoogleSignInServiceViewModelUsingDeleteNPForSignOut
    extends UserQNamedServiceViewModel<UserQFirebaseAuthAndGoogleSignInServiceDataSourceUsingDeleteNPForSignOut>
{
  UserQFirebaseAuthAndGoogleSignInServiceViewModelUsingDeleteNPForSignOut() : super.thereIsDataSource(UserQFirebaseAuthAndGoogleSignInServiceDataSourceUsingDeleteNPForSignOut(FirebaseAuthAndGoogleSignInService()));

  @override
  Object thisClass() {
    return this;
  }

  Future<BoolTypeParameter?> deleteUserToFirebaseAuthAndGoogleSignInServiceNP() {
    return deleteModelToNamedServiceNP<BoolTypeParameter>();
  }
}