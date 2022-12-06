import 'dart:async';
import 'package:library_arch_mvvm_modify_firebase_login/model/user/User.dart';
import 'package:library_arch_mvvm_modify_firebase_login/modelQNamedServiceDataSource/userQFirebaseAuthAndTempCacheServiceDataSource/UserQFirebaseAuthAndTempCacheServiceDataSourceUsingCustomStreamForCheckAuthAndSaveToTempCache.dart';
import 'package:library_arch_mvvm_modify_firebase_login/modelQNamedServiceViewModel/UserQNamedServiceViewModel.dart';
import 'package:library_arch_mvvm_modify_firebase_login/modelQNamedServiceDataSource/namedService/FirebaseAuthAndTempCacheService.dart';

class UserQFirebaseAuthAndTempCacheServiceViewModelUsingCustomStreamForCheckAuthAndSaveToTempCache
    extends UserQNamedServiceViewModel<UserQFirebaseAuthAndTempCacheServiceDataSourceUsingCustomStreamForCheckAuthAndSaveToTempCache>
{
  StreamSubscription<User>? _customStreamSubscriptionUser;

  UserQFirebaseAuthAndTempCacheServiceViewModelUsingCustomStreamForCheckAuthAndSaveToTempCache() : super.thereIsDataSource(UserQFirebaseAuthAndTempCacheServiceDataSourceUsingCustomStreamForCheckAuthAndSaveToTempCache(FirebaseAuthAndTempCacheService()));

  @override
  void dispose() {
    if(_customStreamSubscriptionUser != null) {
      _customStreamSubscriptionUser?.cancel();
    }
    super.dispose();
  }

  @override
  Object thisClass() {
    return this;
  }

  void listensCustomStreamUser(
      Function(User user) callback)
  {
    _customStreamSubscriptionUser = modelQNamedServiceDataSource
        ?.getCustomStreamUser
        ?.listen((event) {
          callback(event);
        });
  }
}