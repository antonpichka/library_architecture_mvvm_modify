import 'package:library_arch_mvvm_modify_firebase_login/modelQNamedServiceDataSource/userQFirebaseAuthServiceDataSource/UserQFirebaseAuthServiceDataSourceUsingInsertParameterRegistrationLoginAndUpdateParameterRegistrationLogin.dart';
import 'package:library_arch_mvvm_modify_firebase_login/modelQNamedServiceViewModel/UserQNamedServiceViewModel.dart';
import 'package:library_arch_mvvm_modify_firebase_login/utility/namedService/FirebaseAuthService.dart';
import 'package:library_arch_mvvm_modify_firebase_login/utility/namedTypeParameter/RegistrationLoginTypeParameter.dart';
import 'package:library_architecture_mvvm_modify/utility/response.dart';

class UserQFirebaseAuthServiceViewModelUsingInsertParameterRegistrationLoginAndUpdateParameterRegistrationLogin
    extends UserQNamedServiceViewModel
{
  UserQFirebaseAuthServiceViewModelUsingInsertParameterRegistrationLoginAndUpdateParameterRegistrationLogin(FirebaseAuthService firebaseAuthService) : super.thereIsDataSource(UserQFirebaseAuthServiceDataSourceUsingInsertParameterRegistrationLoginAndUpdateParameterRegistrationLogin(firebaseAuthService));

  @override
  Object thisClass() {
    return this;
  }

  Future<Response> insertUserToFirebaseAuthServiceParameterRegistrationLogin(
      RegistrationLoginTypeParameter registrationLoginTypeParameter)
  {
    return insertModelToNamedServiceParameterNamed(registrationLoginTypeParameter);
  }

  Future<Response> updateUserToFirebaseAuthServiceParameterRegistrationLogin(
      RegistrationLoginTypeParameter registrationLoginTypeParameter)
  {
    return updateModelToNamedServiceParameterNamed(registrationLoginTypeParameter);
  }
}