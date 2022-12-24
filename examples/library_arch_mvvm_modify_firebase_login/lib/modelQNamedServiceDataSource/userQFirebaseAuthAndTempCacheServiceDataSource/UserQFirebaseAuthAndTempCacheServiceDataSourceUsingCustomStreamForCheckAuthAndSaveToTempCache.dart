import 'package:firebase_auth/firebase_auth.dart' as firebase_auth;
import 'package:library_arch_mvvm_modify_firebase_login/model/user/ListUser.dart';
import 'package:library_arch_mvvm_modify_firebase_login/model/user/User.dart';
import 'package:library_arch_mvvm_modify_firebase_login/modelQNamedServiceDataSource/namedService/FirebaseAuthAndTempCacheService.dart';
import 'package:library_architecture_mvvm_modify/base_model/interface_model_for_named/i_model_for_named_np.dart';
import 'package:library_architecture_mvvm_modify/base_model/interface_model_for_named/i_model_for_named_tip.dart';

class UserQFirebaseAuthAndTempCacheServiceDataSourceUsingCustomStreamForCheckAuthAndSaveToTempCache<T extends User,Y extends ListUser<T>> {
  final _firebaseAuthAndTempCacheService = FirebaseAuthAndTempCacheService();
  final IModelForNamedNP<T> _userForSuccessWhereParametersEqualsStringNullNP;
  final IModelForNamedTIP<T,firebase_auth.User> _userForFirebaseUserTIP;

  UserQFirebaseAuthAndTempCacheServiceDataSourceUsingCustomStreamForCheckAuthAndSaveToTempCache(this._userForSuccessWhereParametersEqualsStringNullNP, this._userForFirebaseUserTIP);

  Stream<T>? get getCustomStreamUser {
    return _firebaseAuthAndTempCacheService
        .getFirebaseAuthSingleton
        ?.getFirebaseAuth
        ?.authStateChanges()
        .map((firebase_auth.User? firebaseUser)
    {
      T? user = firebaseUser == null
          ? _userForSuccessWhereParametersEqualsStringNullNP.getModelForNamedNP()
          : _userForFirebaseUserTIP.getModelForNamedTIP(firebaseUser);
      _firebaseAuthAndTempCacheService
          .getTempCacheSingleton
          ?.getTempCache
          ?.write<T>(User.constUserQTempCacheService,user);
      return user!;
    });
  }
}