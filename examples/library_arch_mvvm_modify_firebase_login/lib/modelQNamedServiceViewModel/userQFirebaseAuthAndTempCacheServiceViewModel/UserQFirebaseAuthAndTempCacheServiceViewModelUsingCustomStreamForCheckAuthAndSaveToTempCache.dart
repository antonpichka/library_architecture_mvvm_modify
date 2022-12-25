import 'dart:async';
import 'package:firebase_auth/firebase_auth.dart' as firebase_auth;
import 'package:flutter/foundation.dart';
import 'package:library_arch_mvvm_modify_firebase_login/model/user/ListUser.dart';
import 'package:library_arch_mvvm_modify_firebase_login/model/user/User.dart';
import 'package:library_arch_mvvm_modify_firebase_login/modelQNamedServiceDataSource/userQFirebaseAuthAndTempCacheServiceDataSource/UserQFirebaseAuthAndTempCacheServiceDataSourceUsingCustomStreamForCheckAuthAndSaveToTempCache.dart';
import 'package:library_arch_mvvm_modify_firebase_login/modelQNamedServiceViewModel/UserQNamedServiceViewModel.dart';
import 'package:library_architecture_mvvm_modify/base_model/interface_model_for_named/i_model_for_named_np.dart';
import 'package:library_architecture_mvvm_modify/base_model/interface_model_for_named/i_model_for_named_tip.dart';

class UserQFirebaseAuthAndTempCacheServiceViewModelUsingCustomStreamForCheckAuthAndSaveToTempCache<T extends User,Y extends ListUser<T>>
    extends UserQNamedServiceViewModel<T,Y>
{
  final UserQFirebaseAuthAndTempCacheServiceDataSourceUsingCustomStreamForCheckAuthAndSaveToTempCache<T,Y> _dataSource;
  StreamSubscription<User>? _customStreamSubscriptionUser;

  UserQFirebaseAuthAndTempCacheServiceViewModelUsingCustomStreamForCheckAuthAndSaveToTempCache(
      super.iCloneStreamModelForSuccess,
      IModelForNamedNP<T> iUserForSuccessWhereParametersEqualsStringNullNP,
      IModelForNamedTIP<T,firebase_auth.User> iUserForFirebaseUserTIP)
      : _dataSource = UserQFirebaseAuthAndTempCacheServiceDataSourceUsingCustomStreamForCheckAuthAndSaveToTempCache(iUserForSuccessWhereParametersEqualsStringNullNP,iUserForFirebaseUserTIP),
        super.thereIsDataSource();

  @override
  void dispose() {
    _customStreamSubscriptionUser?.cancel();
    super.dispose();
  }

  @protected
  @override
  Object get thisClass => this;

  @protected
  @override
  UserQFirebaseAuthAndTempCacheServiceDataSourceUsingCustomStreamForCheckAuthAndSaveToTempCache<T, Y>? get getModelQNamedServiceDataSource => _dataSource;

  void listensCustomStreamUser(Function(User user) callback) {
    incrementForNumberOfExecutedMethodsInThisClass();
    _customStreamSubscriptionUser = getModelQNamedServiceDataSource
        ?.getCustomStreamUser
        ?.listen((event) {
          callback(event);
        });
  }
}