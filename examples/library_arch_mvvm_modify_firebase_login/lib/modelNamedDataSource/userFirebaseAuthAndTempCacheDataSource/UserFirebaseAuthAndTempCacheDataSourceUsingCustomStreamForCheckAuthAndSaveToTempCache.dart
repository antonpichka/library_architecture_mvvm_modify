import 'package:firebase_auth/firebase_auth.dart' as firebase_auth;
import 'package:library_arch_mvvm_modify_firebase_login/modelNamed/userFirebaseAuthAndTempCache/UserFirebaseAuthAndTempCache.dart';
import 'package:library_arch_mvvm_modify_firebase_login/modelNamed/userTempCache/UserTempCache.dart';
import 'package:library_arch_mvvm_modify_firebase_login/utility/TempCache.dart';

class UserFirebaseAuthAndTempCacheDataSourceUsingCustomStreamForCheckAuthAndSaveToTempCache {
  final firebase_auth.FirebaseAuth _firebaseAuth;
  final TempCache _tempCache;

  UserFirebaseAuthAndTempCacheDataSourceUsingCustomStreamForCheckAuthAndSaveToTempCache(this._firebaseAuth, this._tempCache);

  Stream<UserFirebaseAuthAndTempCache> get getCustomStreamUserFirebaseAuthAndTempCache {
    return _firebaseAuth
        .authStateChanges()
        .map((firebase_auth.User firebaseUser)
    {
      UserFirebaseAuthAndTempCache userFirebaseAuthAndTempCache = firebaseUser == null
          ? UserFirebaseAuthAndTempCache.getUserFirebaseAuthAndTempCache
          : UserFirebaseAuthAndTempCache.fromFirebaseUser(firebaseUser);
      _tempCache
          .write<UserFirebaseAuthAndTempCache>(UserTempCache.constUserTempCache,userFirebaseAuthAndTempCache);
      return userFirebaseAuthAndTempCache;
    });
  }
}