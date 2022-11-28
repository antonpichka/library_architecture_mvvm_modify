import 'package:firebase_auth/firebase_auth.dart' as firebase_auth;
import 'package:library_arch_mvvm_modify_firebase_login/model/user/User.dart';
import 'package:library_arch_mvvm_modify_firebase_login/utility/namedService/FirebaseAuthAndTempCacheService.dart';

class UserQFirebaseAuthAndTempCacheServiceDataSourceUsingCustomStreamForCheckAuthAndSaveToTempCache {
  final FirebaseAuthAndTempCacheService _firebaseAuthAndTempCacheService;

  UserQFirebaseAuthAndTempCacheServiceDataSourceUsingCustomStreamForCheckAuthAndSaveToTempCache(this._firebaseAuthAndTempCacheService);

  Stream<User>? get getCustomStreamUser {
    return _firebaseAuthAndTempCacheService
        .getFirebaseAuthSingleton
        ?.getFirebaseAuth
        ?.authStateChanges()
        .map((firebase_auth.User? firebaseUser)
    {
      User user = firebaseUser == null
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