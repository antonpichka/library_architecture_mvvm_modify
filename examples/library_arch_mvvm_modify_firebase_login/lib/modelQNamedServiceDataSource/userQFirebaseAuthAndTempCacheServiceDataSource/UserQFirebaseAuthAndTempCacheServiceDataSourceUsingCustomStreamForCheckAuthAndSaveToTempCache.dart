import 'package:firebase_auth/firebase_auth.dart' as firebase_auth;
import 'package:library_arch_mvvm_modify_firebase_login/model/user/User.dart';
import 'package:library_arch_mvvm_modify_firebase_login/modelQNamedServiceDataSource/namedService/FirebaseAuthAndTempCacheService.dart';

class UserQFirebaseAuthAndTempCacheServiceDataSourceUsingCustomStreamForCheckAuthAndSaveToTempCache<T extends User> {
  final _firebaseAuthAndTempCacheService = FirebaseAuthAndTempCacheService();

  UserQFirebaseAuthAndTempCacheServiceDataSourceUsingCustomStreamForCheckAuthAndSaveToTempCache();

  Stream<T>? get getCustomStreamUser {
    return _firebaseAuthAndTempCacheService
        .getFirebaseAuthSingleton
        ?.getFirebaseAuth
        ?.authStateChanges()
        .map((firebase_auth.User? firebaseUser)
    {
      T user = firebaseUser == null
          ? User.getUserForSuccessWhereParametersEqualsStringNull
          : User.fromFirebaseUserForSuccess(firebaseUser);
      _firebaseAuthAndTempCacheService
          .getTempCacheSingleton
          ?.getTempCache
          ?.write<User>(User.constUserQTempCacheService,user);
      return user;
    });
  }
}