import 'dart:async';
import 'package:firebase_auth/firebase_auth.dart' as firebase_auth;
import 'package:library_arch_mvvm_modify_firebase_login/model/user/ListUser.dart';
import 'package:library_arch_mvvm_modify_firebase_login/model/user/User.dart';
import 'package:library_arch_mvvm_modify_firebase_login/modelQNamedServiceViewModel/namedService/FirebaseAuthService.dart';
import 'package:library_arch_mvvm_modify_firebase_login/modelQNamedServiceViewModel/namedService/TempCacheService.dart';
import 'package:library_architecture_mvvm_modify/base_model_q_named_service_view_model/base_model_q_named_service_view_model.dart';
import 'package:meta/meta.dart';

class UserQFirebaseAuthAndTempCacheServiceViewModelUsingCustomStreamForCheckAuthAndSaveToTempCache<T extends User,Y extends ListUser<T>>
    extends BaseModelQNamedServiceViewModel<T,Y>
{
  @protected
  final firebaseAuthService = FirebaseAuthService();
  @protected
  final tempCacheService = TempCacheService();

  Stream<T?>? get getCustomStreamUser {
    return firebaseAuthService
        .getFirebaseAuth
        ?.authStateChanges()
        .map((firebase_auth.User? firebaseUser)
    {
      final user = firebaseUser == null
          ? getUserWhereFirebaseUserNull()
          : getUserWhereFirebaseUserNotNull(firebaseUser);
      tempCacheService
          .getTempCache
          ?.write(User.constUserQTempCacheService,user);
      return user;
    });
  }

  @nonVirtual
  @override
  Object? get modelQNamedServiceDataSource => this;

  @protected
  T? getUserWhereFirebaseUserNull() {
    return User.getUserForSuccessWhereParametersEqualsNull as T?;
  }

  @protected
  T? getUserWhereFirebaseUserNotNull(firebase_auth.User firebaseUser) {
    return User.success(
        firebaseUser.uid,
        firebaseUser.email,
        firebaseUser.displayName,
        firebaseUser.photoURL) as T?;
  }
}