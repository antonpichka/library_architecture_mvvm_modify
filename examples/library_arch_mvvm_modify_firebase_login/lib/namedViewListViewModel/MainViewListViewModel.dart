import 'package:library_arch_mvvm_modify_firebase_login/model/user/ListUser.dart';
import 'package:library_arch_mvvm_modify_firebase_login/model/user/User.dart';
import 'package:library_arch_mvvm_modify_firebase_login/model/user/cloneUserForSuccess/CloneStreamUserForSuccess.dart';
import 'package:library_arch_mvvm_modify_firebase_login/model/user/cloneUserForSuccess/CloneUserForSuccess.dart';
import 'package:library_arch_mvvm_modify_firebase_login/model/user/userForNamed/UserForFirebaseUserTIP.dart';
import 'package:library_arch_mvvm_modify_firebase_login/model/user/userForNamed/UserForLocalExceptionTIP.dart';
import 'package:library_arch_mvvm_modify_firebase_login/model/user/userForNamed/UserForSuccessWhereParametersEqualsStringNullNP.dart';
import 'package:library_arch_mvvm_modify_firebase_login/modelQNamedServiceViewModel/userQFirebaseAuthAndTempCacheServiceViewModel/UserQFirebaseAuthAndTempCacheServiceViewModelUsingCustomStreamForCheckAuthAndSaveToTempCache.dart';
import 'package:library_arch_mvvm_modify_firebase_login/modelQNamedServiceViewModel/userQTempCacheServiceViewModel/UserQTempCacheServiceViewModelUsingUpdateTIPAndGetNPAndDeleteNP.dart';
import 'package:library_architecture_mvvm_modify/base_named_view_list_view_model/base_named_view_list_view_model.dart';

class MainViewListViewModel
    extends BaseNamedViewListViewModel
{
  // ModelQNamedServiceViewModel
  final _userQFirebaseAuthAndTempCacheServiceViewModelUsingCustomStreamForCheckAuthAndSaveToTempCache =
  UserQFirebaseAuthAndTempCacheServiceViewModelUsingCustomStreamForCheckAuthAndSaveToTempCache<User,ListUser>(CloneUserForSuccess(),CloneStreamUserForSuccess(),UserForSuccessWhereParametersEqualsStringNullNP(),UserForFirebaseUserTIP());
  final _userQTempCacheServiceViewModelUsingUpdateTIPAndGetNPAndDeleteNP =
  UserQTempCacheServiceViewModelUsingUpdateTIPAndGetNPAndDeleteNP<User,ListUser>(CloneUserForSuccess(),CloneStreamUserForSuccess(),UserForLocalExceptionTIP());

  @override
  void dispose() {
    _userQFirebaseAuthAndTempCacheServiceViewModelUsingCustomStreamForCheckAuthAndSaveToTempCache.dispose();
    _userQTempCacheServiceViewModelUsingUpdateTIPAndGetNPAndDeleteNP.dispose();
  }

  Stream<User>? get getStreamUserUsingGetNP {
    return _userQTempCacheServiceViewModelUsingUpdateTIPAndGetNPAndDeleteNP.getStreamUserUsingGetNP;
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
    _userQTempCacheServiceViewModelUsingUpdateTIPAndGetNPAndDeleteNP
        .setUserUsingGetNP(user);
    _userQTempCacheServiceViewModelUsingUpdateTIPAndGetNPAndDeleteNP
        .notifyStreamUserUsingGetNP();
  }

  Future<void> getUserFromTempCacheServiceNPAndSetUserAndInGeneralOneTask()
  async {
    // 1
    await _userQTempCacheServiceViewModelUsingUpdateTIPAndGetNPAndDeleteNP
        .getUserFromTempCacheServiceNPAndSetUser();
    _userQTempCacheServiceViewModelUsingUpdateTIPAndGetNPAndDeleteNP
        .notifyStreamUserUsingGetNP();
  }
}