import 'package:library_arch_mvvm_modify_firebase_login/model/user/ListUser.dart';
import 'package:library_arch_mvvm_modify_firebase_login/model/user/User.dart';
import 'package:library_arch_mvvm_modify_firebase_login/model/user/cloneStreamUserForSuccess/CloneStreamUserForSuccess.dart';
import 'package:library_arch_mvvm_modify_firebase_login/model/user/userForNamed/UserForFirebaseUserTIP.dart';
import 'package:library_arch_mvvm_modify_firebase_login/model/user/userForNamed/UserForLocalExceptionTIP.dart';
import 'package:library_arch_mvvm_modify_firebase_login/model/user/userForNamed/UserForSuccessWhereParametersEqualsStringNullNP.dart';
import 'package:library_arch_mvvm_modify_firebase_login/modelQNamedServiceViewModel/userQFirebaseAuthAndTempCacheServiceViewModel/UserQFirebaseAuthAndTempCacheServiceViewModelUsingCustomStreamForCheckAuthAndSaveToTempCache.dart';
import 'package:library_arch_mvvm_modify_firebase_login/modelQNamedServiceViewModel/userQTempCacheServiceViewModel/UserQTempCacheServiceViewModelUsingUpdateParameterUserAndGetNPAndDeleteNP.dart';
import 'package:library_architecture_mvvm_modify/base_named_view_list_view_model/base_named_view_list_view_model.dart';

class MainViewListViewModel
    extends BaseNamedViewListViewModel
{
  // ModelQNamedServiceViewModel
  final _userQFirebaseAuthAndTempCacheServiceViewModelUsingCustomStreamForCheckAuthAndSaveToTempCache =
  UserQFirebaseAuthAndTempCacheServiceViewModelUsingCustomStreamForCheckAuthAndSaveToTempCache<User,ListUser<User>>(CloneStreamUserForSuccess(),UserForSuccessWhereParametersEqualsStringNullNP(),UserForFirebaseUserTIP());
  final _userQTempCacheServiceViewModelUsingUpdateParameterUserAndGetNPAndDeleteNP =
  UserQTempCacheServiceViewModelUsingUpdateParameterUserAndGetNPAndDeleteNP<User,ListUser<User>>(CloneStreamUserForSuccess(),UserForLocalExceptionTIP());

  @override
  void dispose() {
    _userQFirebaseAuthAndTempCacheServiceViewModelUsingCustomStreamForCheckAuthAndSaveToTempCache.dispose();
    _userQTempCacheServiceViewModelUsingUpdateParameterUserAndGetNPAndDeleteNP.dispose();
  }

  Stream<User>? get getStreamUserUsingGetNP {
    return _userQTempCacheServiceViewModelUsingUpdateParameterUserAndGetNPAndDeleteNP.getStreamUserUsingGetNP;
  }

  void listensCustomStreamUserAndInGeneralZeroTask(
      Function(User user) callback)
  {
    _userQFirebaseAuthAndTempCacheServiceViewModelUsingCustomStreamForCheckAuthAndSaveToTempCache
        .listensCustomStreamUser(callback);
  }

  void setUserUsingGetNPAndInGeneralZeroTask(
      User user)
  {
    _userQTempCacheServiceViewModelUsingUpdateParameterUserAndGetNPAndDeleteNP
        .setUserUsingGetNP(user);
    _userQTempCacheServiceViewModelUsingUpdateParameterUserAndGetNPAndDeleteNP
        .notifyStreamUserUsingGetNP();
  }

  Future<void> getUserFromTempCacheServiceNPAndSetUserAndInGeneralOneTask()
  async {
    // 1
    await _userQTempCacheServiceViewModelUsingUpdateParameterUserAndGetNPAndDeleteNP
        .getUserFromTempCacheServiceNPAndSetUser();
    _userQTempCacheServiceViewModelUsingUpdateParameterUserAndGetNPAndDeleteNP
        .notifyStreamUserUsingGetNP();
  }
}