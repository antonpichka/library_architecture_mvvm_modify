import 'package:flutter/foundation.dart';
import 'package:library_arch_mvvm_modify_firebase_login/model/user/ListUser.dart';
import 'package:library_arch_mvvm_modify_firebase_login/model/user/User.dart';
import 'package:library_arch_mvvm_modify_firebase_login/model/user/fbds/UpdateUserToFirebaseAuthServiceParameterLoginFBDSUsingInsertParameterRegistrationAndUpdateParameterLogin.dart';
import 'package:library_arch_mvvm_modify_firebase_login/modelQNamedServiceDataSource/userQFirebaseAuthServiceDataSource/UserQFirebaseAuthServiceDataSourceUsingInsertParameterRegistrationAndUpdateParameterLogin.dart';
import 'package:library_arch_mvvm_modify_firebase_login/modelQNamedServiceViewModel/UserQNamedServiceViewModel.dart';
import 'package:library_arch_mvvm_modify_firebase_login/utility/namedTypeParameter/LoginTypeParameter.dart';
import 'package:library_arch_mvvm_modify_firebase_login/utility/namedTypeParameter/RegistrationTypeParameter.dart';
import 'package:library_architecture_mvvm_modify/utility/base_type_parameter/bool_type_parameter.dart';

class UserQFirebaseAuthServiceViewModelUsingInsertParameterRegistrationAndUpdateParameterLogin<T extends User,Y extends ListUser<T>>
    extends UserQNamedServiceViewModel<T,Y>
{
  final UserQFirebaseAuthServiceDataSourceUsingInsertParameterRegistrationAndUpdateParameterLogin<T,Y> _dataSource;

  UserQFirebaseAuthServiceViewModelUsingInsertParameterRegistrationAndUpdateParameterLogin(
      super.iCloneStreamModelForSuccess)
      : _dataSource = UserQFirebaseAuthServiceDataSourceUsingInsertParameterRegistrationAndUpdateParameterLogin(),
        super.thereIsDataSource()
  {
    setUpdateModelToNamedServiceParameterNamedFBDS = UpdateUserToFirebaseAuthServiceParameterLoginFBDSUsingInsertParameterRegistrationAndUpdateParameterLogin();
  }

  @protected
  @override
  Object get thisClass => this;

  @protected
  @override
  UserQFirebaseAuthServiceDataSourceUsingInsertParameterRegistrationAndUpdateParameterLogin<T,Y>? get getModelQNamedServiceDataSource => _dataSource;

  Future<BoolTypeParameter?> insertUserToFirebaseAuthServiceParameterRegistration(RegistrationTypeParameter registrationTypeParameter) {
    return insertModelToNamedServiceParameterNamed<BoolTypeParameter,RegistrationTypeParameter>(registrationTypeParameter);
  }

  Future<BoolTypeParameter?> updateUserToFirebaseAuthServiceParameterLogin(LoginTypeParameter loginTypeParameter) {
    return updateModelToNamedServiceParameterNamed<BoolTypeParameter,LoginTypeParameter>(loginTypeParameter);
  }
}