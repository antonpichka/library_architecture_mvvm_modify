import 'package:flutter/foundation.dart';
import 'package:library_arch_mvvm_modify_firebase_login/model/user/ListUser.dart';
import 'package:library_arch_mvvm_modify_firebase_login/model/user/User.dart';
import 'package:library_arch_mvvm_modify_firebase_login/modelQNamedServiceDataSource/userQFirebaseAuthAndGoogleSignInServiceDataSource/UserQFirebaseAuthAndGoogleSignInServiceDataSourceUsingDeleteNPForSignOut.dart';
import 'package:library_arch_mvvm_modify_firebase_login/modelQNamedServiceViewModel/UserQNamedServiceViewModel.dart';
import 'package:library_architecture_mvvm_modify/utility/base_type_parameter/bool_type_parameter.dart';

class UserQFirebaseAuthAndGoogleSignInServiceViewModelUsingDeleteNPForSignOut<T extends User,Y extends ListUser<T>>
    extends UserQNamedServiceViewModel<T,Y>
{
  final UserQFirebaseAuthAndGoogleSignInServiceDataSourceUsingDeleteNPForSignOut<T,Y> _dataSource;

  UserQFirebaseAuthAndGoogleSignInServiceViewModelUsingDeleteNPForSignOut(
      super.iCloneStreamModelForSuccess)
      : _dataSource = UserQFirebaseAuthAndGoogleSignInServiceDataSourceUsingDeleteNPForSignOut(),
        super.thereIsDataSource();

  @protected
  @override
  Object get thisClass => this;

  @protected
  @override
  UserQFirebaseAuthAndGoogleSignInServiceDataSourceUsingDeleteNPForSignOut<T, Y>? get getModelQNamedServiceDataSource => _dataSource;

  Future<BoolTypeParameter?> deleteUserToFirebaseAuthAndGoogleSignInServiceNP() {
    return deleteModelToNamedServiceNP<BoolTypeParameter>();
  }
}