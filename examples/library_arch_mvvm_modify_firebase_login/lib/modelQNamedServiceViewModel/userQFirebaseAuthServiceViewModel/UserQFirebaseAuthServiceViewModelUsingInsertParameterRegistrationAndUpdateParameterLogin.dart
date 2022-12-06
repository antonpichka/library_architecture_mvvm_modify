import 'package:library_arch_mvvm_modify_firebase_login/modelQNamedServiceDataSource/userQFirebaseAuthServiceDataSource/UserQFirebaseAuthServiceDataSourceUsingInsertParameterRegistrationAndUpdateParameterLogin.dart';
import 'package:library_arch_mvvm_modify_firebase_login/modelQNamedServiceViewModel/UserQNamedServiceViewModel.dart';
import 'package:library_arch_mvvm_modify_firebase_login/modelQNamedServiceDataSource/namedService/FirebaseAuthService.dart';
import 'package:library_arch_mvvm_modify_firebase_login/utility/namedTypeParameter/LoginTypeParameter.dart';
import 'package:library_arch_mvvm_modify_firebase_login/utility/namedTypeParameter/RegistrationTypeParameter.dart';
import 'package:library_architecture_mvvm_modify/utility/base_type_parameter/bool_type_parameter.dart';

class UserQFirebaseAuthServiceViewModelUsingInsertParameterRegistrationAndUpdateParameterLogin
    extends UserQNamedServiceViewModel<UserQFirebaseAuthServiceDataSourceUsingInsertParameterRegistrationAndUpdateParameterLogin>
{
  UserQFirebaseAuthServiceViewModelUsingInsertParameterRegistrationAndUpdateParameterLogin() : super.thereIsDataSource(UserQFirebaseAuthServiceDataSourceUsingInsertParameterRegistrationAndUpdateParameterLogin(FirebaseAuthService()));

  @override
  Object thisClass() {
    return this;
  }

  Future<BoolTypeParameter?> insertUserToFirebaseAuthServiceParameterRegistration(
      RegistrationTypeParameter registrationTypeParameter)
  {
    return insertModelToNamedServiceParameterNamed<BoolTypeParameter,RegistrationTypeParameter>(registrationTypeParameter);
  }

  Future<BoolTypeParameter?> updateUserToFirebaseAuthServiceParameterLogin(
      LoginTypeParameter loginTypeParameter)
  {
    return updateModelToNamedServiceParameterNamed<BoolTypeParameter,LoginTypeParameter>(loginTypeParameter);
  }
}