import 'package:library_arch_mvvm_modify_firebase_login/modelQNamedServiceDataSource/userQFirebaseAuthServiceDataSource/UserQFirebaseAuthServiceDataSourceUsingInsertParameterRegistrationAndUpdateParameterLogin.dart';
import 'package:library_arch_mvvm_modify_firebase_login/modelQNamedServiceViewModel/UserQNamedServiceViewModel.dart';
import 'package:library_arch_mvvm_modify_firebase_login/utility/namedService/FirebaseAuthService.dart';
import 'package:library_arch_mvvm_modify_firebase_login/utility/namedTypeParameter/LoginTypeParameter.dart';
import 'package:library_arch_mvvm_modify_firebase_login/utility/namedTypeParameter/RegistrationTypeParameter.dart';
import 'package:library_architecture_mvvm_modify/utility/response.dart';

class UserQFirebaseAuthServiceViewModelUsingInsertParameterRegistrationAndUpdateParameterLogin
    extends UserQNamedServiceViewModel
{
  UserQFirebaseAuthServiceViewModelUsingInsertParameterRegistrationAndUpdateParameterLogin(FirebaseAuthService firebaseAuthService) : super.thereIsDataSource(UserQFirebaseAuthServiceDataSourceUsingInsertParameterRegistrationAndUpdateParameterLogin(firebaseAuthService));

  @override
  Object thisClass() {
    return this;
  }

  Future<Response> insertUserToFirebaseAuthServiceParameterRegistration(
      RegistrationTypeParameter registrationTypeParameter)
  {
    return insertModelToNamedServiceParameterNamed(registrationTypeParameter);
  }

  Future<Response> updateUserToFirebaseAuthServiceParameterLogin(
      LoginTypeParameter loginTypeParameter)
  {
    return updateModelToNamedServiceParameterNamed(loginTypeParameter);
  }
}