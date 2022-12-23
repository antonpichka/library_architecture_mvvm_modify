import 'package:library_arch_mvvm_modify_firebase_login/model/user/ListUser.dart';
import 'package:library_arch_mvvm_modify_firebase_login/model/user/User.dart';
import 'package:library_arch_mvvm_modify_firebase_login/modelQNamedServiceBackgroundModel/UserQNamedServiceBackgroundModel.dart';
import 'package:library_arch_mvvm_modify_firebase_login/modelQNamedServiceDataSource/userQFirebaseAuthAndTempCacheServiceDataSource/UserQFirebaseAuthAndTempCacheServiceDataSourceUsingCustomStreamForCheckAuthAndSaveToTempCache.dart';
import 'package:library_architecture_mvvm_modify/base_model/interface_model_for_named/i_model_for_named_np.dart';
import 'package:library_architecture_mvvm_modify/base_model/interface_model_for_named/i_model_for_named_tip.dart';
import 'package:firebase_auth/firebase_auth.dart' as firebase_auth;

class UserQFirebaseAuthAndTempCacheServiceBackgroundModelUsingCustomStreamForCheckAuthAndSaveToTempCache<T extends User,Y extends ListUser<T>>
    extends UserQNamedServiceBackgroundModel<T,Y,UserQFirebaseAuthAndTempCacheServiceDataSourceUsingCustomStreamForCheckAuthAndSaveToTempCache<T,Y>>
{
  UserQFirebaseAuthAndTempCacheServiceBackgroundModelUsingCustomStreamForCheckAuthAndSaveToTempCache(IModelForNamedNP<T> userForSuccessWhereParametersEqualsStringNullNP,IModelForNamedTIP<T,firebase_auth.User> userForFirebaseUserTIP) : super.thereIsDataSource(UserQFirebaseAuthAndTempCacheServiceDataSourceUsingCustomStreamForCheckAuthAndSaveToTempCache(userForSuccessWhereParametersEqualsStringNullNP,userForFirebaseUserTIP));

  @override
  Object thisClass() {
    return this;
  }

  Stream<T>? get getCustomStreamUser {
    incrementForNumberOfExecutedMethodsInThisClass();
    return modelQNamedServiceDataSource?.getCustomStreamUser;
  }
}