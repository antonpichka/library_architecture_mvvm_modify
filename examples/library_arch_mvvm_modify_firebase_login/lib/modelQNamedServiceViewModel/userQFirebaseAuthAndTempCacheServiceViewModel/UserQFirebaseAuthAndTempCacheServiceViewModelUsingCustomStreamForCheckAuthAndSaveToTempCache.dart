import 'dart:async';
import 'package:firebase_auth/firebase_auth.dart' as firebase_auth;
import 'package:library_arch_mvvm_modify_firebase_login/model/user/ListUser.dart';
import 'package:library_arch_mvvm_modify_firebase_login/model/user/User.dart';
import 'package:library_arch_mvvm_modify_firebase_login/modelQNamedServiceDataSource/userQFirebaseAuthAndTempCacheServiceDataSource/UserQFirebaseAuthAndTempCacheServiceDataSourceUsingCustomStreamForCheckAuthAndSaveToTempCache.dart';
import 'package:library_arch_mvvm_modify_firebase_login/modelQNamedServiceViewModel/UserQNamedServiceViewModel.dart';
import 'package:library_architecture_mvvm_modify/base_model/interface_clone_model_for_success/i_clone_model_for_success.dart';
import 'package:library_architecture_mvvm_modify/base_model/interface_clone_model_for_success/i_clone_stream_model_for_success.dart';
import 'package:library_architecture_mvvm_modify/base_model/interface_model_for_named/i_model_for_named_np.dart';
import 'package:library_architecture_mvvm_modify/base_model/interface_model_for_named/i_model_for_named_tip.dart';

class UserQFirebaseAuthAndTempCacheServiceViewModelUsingCustomStreamForCheckAuthAndSaveToTempCache<T extends User,Y extends ListUser>
    extends UserQNamedServiceViewModel<T,Y,UserQFirebaseAuthAndTempCacheServiceDataSourceUsingCustomStreamForCheckAuthAndSaveToTempCache<T,Y>>
{
  StreamSubscription<User>? _customStreamSubscriptionUser;

  UserQFirebaseAuthAndTempCacheServiceViewModelUsingCustomStreamForCheckAuthAndSaveToTempCache(ICloneModelForSuccess<T,Y> iCloneModelForSuccess,ICloneStreamModelForSuccess<T,Y> iCloneStreamModelForSuccess,IModelForNamedNP<T> userForSuccessWhereParametersEqualsStringNullNP,IModelForNamedTIP<T,firebase_auth.User> userForFirebaseUserTIP) : super.thereIsDataSource(UserQFirebaseAuthAndTempCacheServiceDataSourceUsingCustomStreamForCheckAuthAndSaveToTempCache(userForSuccessWhereParametersEqualsStringNullNP,userForFirebaseUserTIP),iCloneModelForSuccess,iCloneStreamModelForSuccess);

  @override
  void dispose() {
    _customStreamSubscriptionUser?.cancel();
    super.dispose();
  }

  @override
  Object thisClass() {
    return this;
  }

  void listensCustomStreamUser(Function(User user) callback) {
    _customStreamSubscriptionUser = modelQNamedServiceDataSource
        ?.getCustomStreamUser
        ?.listen((event) {
          callback(event);
        });
  }
}