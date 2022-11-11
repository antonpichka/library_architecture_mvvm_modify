import 'package:firebase_auth/firebase_auth.dart' as firebase_auth;
import 'package:library_arch_mvvm_modify_firebase_login/model/userFirebaseAuthAndTempCache/UserFirebaseAuthAndTempCache.dart';
import 'package:library_arch_mvvm_modify_firebase_login/model/userTempCache/UserTempCache.dart';
import 'package:library_arch_mvvm_modify_firebase_login/modelNamedDataSource/userFirebaseAuthAndTempCacheDataSource/UserFirebaseAuthAndTempCacheDataSource.dart';

class UserFirebaseAuthAndTempCacheDataSourceUsingStreamNPForCheckAuthAndSaveToTempCache
    extends UserFirebaseAuthAndTempCacheDataSource
{
  Stream<UserFirebaseAuthAndTempCache> get getStreamUserFromFirebaseAuthAndTempCacheNP {
    return getDefaultFirebaseAuthDataSource
        .getFirebaseAuth
        .authStateChanges()
        .map((firebase_auth.User firebaseUser)
    {
      UserFirebaseAuthAndTempCache userFirebaseAuthAndTempCacheDatabase = firebaseUser == null
          ? UserFirebaseAuthAndTempCache.getUserFirebaseAuthAndTempCache
          : UserFirebaseAuthAndTempCache.fromFirebaseUser(firebaseUser);
      getDefaultTempCacheDataSource
          .getTempCache
          .write<UserFirebaseAuthAndTempCache>(UserTempCache.constUserTempCache,userFirebaseAuthAndTempCacheDatabase);
      return userFirebaseAuthAndTempCacheDatabase;
    });
  }
}