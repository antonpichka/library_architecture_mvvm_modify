import 'dart:async';
import 'package:firebase_auth/firebase_auth.dart' as firebase_auth;
import 'package:library_arch_mvvm_modify_firebase_login/model/user/ListUser.dart';
import 'package:library_arch_mvvm_modify_firebase_login/model/user/User.dart';
import 'package:library_arch_mvvm_modify_firebase_login/modelQNamedServiceViewModel/namedService/FirebaseAuthAndTempCacheService.dart';
import 'package:library_architecture_mvvm_modify/base_model/interface_model_for_named/i_model_for_named_np.dart';
import 'package:library_architecture_mvvm_modify/base_model/interface_model_for_named/i_model_for_named_tip.dart';
import 'package:library_architecture_mvvm_modify/base_model_q_named_service_view_model/base_model_q_named_service_view_model.dart';
import 'package:meta/meta.dart';

class UserQFirebaseAuthAndTempCacheServiceViewModelUsingCustomStreamForCheckAuthAndSaveToTempCache<T extends User,Y extends ListUser<T>>
    extends BaseModelQNamedServiceViewModel<T,Y>
{
  @protected
  final firebaseAuthAndTempCacheService = FirebaseAuthAndTempCacheService();
  @protected
  final IModelForNamedNP<T> userForSuccessWhereParametersEqualsStringNullNP;
  @protected
  final IModelForNamedTIP<T,firebase_auth.User> userForFirebaseUserTIP;

  UserQFirebaseAuthAndTempCacheServiceViewModelUsingCustomStreamForCheckAuthAndSaveToTempCache(
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

  @protected
  @override
  Object? get modelQNamedServiceDataSource => this;
}