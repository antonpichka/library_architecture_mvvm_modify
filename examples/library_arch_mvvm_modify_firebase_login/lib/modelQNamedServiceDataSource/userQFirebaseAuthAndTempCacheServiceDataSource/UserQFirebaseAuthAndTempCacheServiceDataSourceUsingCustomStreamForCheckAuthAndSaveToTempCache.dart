import 'package:firebase_auth/firebase_auth.dart' as firebase_auth;
import 'package:flutter/foundation.dart';
import 'package:library_arch_mvvm_modify_firebase_login/model/user/ListUser.dart';
import 'package:library_arch_mvvm_modify_firebase_login/model/user/User.dart';
import 'package:library_arch_mvvm_modify_firebase_login/modelQNamedServiceDataSource/namedService/FirebaseAuthAndTempCacheService.dart';
import 'package:library_architecture_mvvm_modify/base_model/interface_model_for_named/i_model_for_named_np.dart';
import 'package:library_architecture_mvvm_modify/base_model/interface_model_for_named/i_model_for_named_tip.dart';

class UserQFirebaseAuthAndTempCacheServiceDataSourceUsingCustomStreamForCheckAuthAndSaveToTempCache<T extends User,Y extends ListUser<T>> {
  @protected
  final firebaseAuthAndTempCacheService = FirebaseAuthAndTempCacheService();
  @protected
  final IModelForNamedNP<T> userForSuccessWhereParametersEqualsStringNullNP;
  @protected
  final IModelForNamedTIP<T,firebase_auth.User> userForFirebaseUserTIP;

  UserQFirebaseAuthAndTempCacheServiceDataSourceUsingCustomStreamForCheckAuthAndSaveToTempCache(
      this.userForSuccessWhereParametersEqualsStringNullNP,
      this.userForFirebaseUserTIP);

  Stream<T>? get getCustomStreamUser {
    return firebaseAuthAndTempCacheService
        .getFirebaseAuthSingleton
        ?.getFirebaseAuth
        ?.authStateChanges()
        .map((firebase_auth.User? firebaseUser)
    {
      T? user = firebaseUser == null
          ? userForSuccessWhereParametersEqualsStringNullNP.getModelForNamedNP()
          : userForFirebaseUserTIP.getModelForNamedTIP(firebaseUser);
      firebaseAuthAndTempCacheService
          .getTempCacheSingleton
          ?.getTempCache
          ?.write<T>(User.constUserQTempCacheService,user);
      return user!;
    });
  }
}