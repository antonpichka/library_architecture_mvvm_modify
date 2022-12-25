import 'package:flutter/foundation.dart';
import 'package:library_arch_mvvm_modify_firebase_login/model/user/ListUser.dart';
import 'package:library_arch_mvvm_modify_firebase_login/model/user/User.dart';
import 'package:library_arch_mvvm_modify_firebase_login/modelQNamedServiceBackgroundModel/UserQNamedServiceBackgroundModel.dart';
import 'package:library_arch_mvvm_modify_firebase_login/modelQNamedServiceDataSource/userQFirebaseAuthAndTempCacheServiceDataSource/UserQFirebaseAuthAndTempCacheServiceDataSourceUsingCustomStreamForCheckAuthAndSaveToTempCache.dart';
import 'package:library_architecture_mvvm_modify/base_model/interface_model_for_named/i_model_for_named_np.dart';
import 'package:library_architecture_mvvm_modify/base_model/interface_model_for_named/i_model_for_named_tip.dart';
import 'package:firebase_auth/firebase_auth.dart' as firebase_auth;

class UserQFirebaseAuthAndTempCacheServiceBackgroundModelUsingCustomStreamForCheckAuthAndSaveToTempCache<T extends User,Y extends ListUser<T>>
    extends UserQNamedServiceBackgroundModel<T,Y>
{
  final UserQFirebaseAuthAndTempCacheServiceDataSourceUsingCustomStreamForCheckAuthAndSaveToTempCache<T,Y> _dataSource;

  UserQFirebaseAuthAndTempCacheServiceBackgroundModelUsingCustomStreamForCheckAuthAndSaveToTempCache(
      IModelForNamedNP<T> iUserForSuccessWhereParametersEqualsStringNullNP,
      IModelForNamedTIP<T,firebase_auth.User> iUserForFirebaseUserTIP)
      : _dataSource = UserQFirebaseAuthAndTempCacheServiceDataSourceUsingCustomStreamForCheckAuthAndSaveToTempCache(iUserForSuccessWhereParametersEqualsStringNullNP,iUserForFirebaseUserTIP),
        super.thereIsDataSource();

  @protected
  @override
  Object get thisClass => this;

  @protected
  @override
  UserQFirebaseAuthAndTempCacheServiceDataSourceUsingCustomStreamForCheckAuthAndSaveToTempCache<T,Y>? get getModelQNamedServiceDataSource => _dataSource;

  Stream<T>? get getCustomStreamUser {
    incrementForNumberOfExecutedMethodsInThisClass();
    return getModelQNamedServiceDataSource?.getCustomStreamUser;
  }
}