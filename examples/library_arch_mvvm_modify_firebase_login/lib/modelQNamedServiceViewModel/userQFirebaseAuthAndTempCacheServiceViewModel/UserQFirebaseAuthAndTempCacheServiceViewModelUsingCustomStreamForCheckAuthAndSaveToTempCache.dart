import 'dart:async';
import 'package:firebase_auth/firebase_auth.dart' as firebase_auth;
import 'package:library_arch_mvvm_modify_firebase_login/model/user/ListUser.dart';
import 'package:library_arch_mvvm_modify_firebase_login/model/user/User.dart';
import 'package:library_arch_mvvm_modify_firebase_login/modelQNamedServiceViewModel/namedService/FirebaseAuthAndTempCacheService.dart';
import 'package:library_architecture_mvvm_modify/base_model_q_named_service_view_model/base_model_q_named_service_view_model.dart';
import 'package:meta/meta.dart';

class UserQFirebaseAuthAndTempCacheServiceViewModelUsingCustomStreamForCheckAuthAndSaveToTempCache
    extends BaseModelQNamedServiceViewModel<User,ListUser>
{
  @protected
  final firebaseAuthAndTempCacheService = FirebaseAuthAndTempCacheService();

  UserQFirebaseAuthAndTempCacheServiceViewModelUsingCustomStreamForCheckAuthAndSaveToTempCache();

  Stream<User>? get getCustomStreamUser {
    return firebaseAuthAndTempCacheService
        .getFirebaseAuthSingleton
        ?.getFirebaseAuth
        ?.authStateChanges()
        .map((firebase_auth.User? firebaseUser)
    {
      final user = firebaseUser == null
          ? getUserWhereFirebaseUserNull()
          : getUserWhereFirebaseUserNotNull(firebaseUser);
      firebaseAuthAndTempCacheService
          .getTempCacheSingleton
          ?.getTempCache
          ?.write(User.constUserQTempCacheService,user);
      return user;
    });
  }

  @protected
  @override
  Object? get modelQNamedServiceDataSource => this;

  @protected
  User getUserWhereFirebaseUserNull() {
    return User.getUserForSuccessWhereParametersEqualsNull;
  }

  @protected
  User getUserWhereFirebaseUserNotNull(firebase_auth.User firebaseUser) {
    return User.success(
        firebaseUser.uid,
        firebaseUser.email,
        firebaseUser.displayName,
        firebaseUser.photoURL);
  }
}