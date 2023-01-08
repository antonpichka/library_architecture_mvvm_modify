import 'package:library_arch_mvvm_modify_firebase_login/model/user/ListUser.dart';
import 'package:library_arch_mvvm_modify_firebase_login/model/user/User.dart';
import 'package:library_arch_mvvm_modify_firebase_login/model/user/initializedStreamUser/InitializedStreamUser.dart';
import 'package:library_arch_mvvm_modify_firebase_login/model/user/userForNamed/UserForFirebaseUserTIP.dart';
import 'package:library_arch_mvvm_modify_firebase_login/model/user/userForNamed/UserForLocalExceptionTIP.dart';
import 'package:library_arch_mvvm_modify_firebase_login/model/user/userForNamed/UserForObjectTIP.dart';
import 'package:library_arch_mvvm_modify_firebase_login/model/user/userForNamed/UserForSuccessWhereParametersEqualsStringNullNP.dart';
import 'package:library_arch_mvvm_modify_firebase_login/modelQNamedServiceViewModel/userQFirebaseAuthAndTempCacheServiceViewModel/UserQFirebaseAuthAndTempCacheServiceViewModelUsingCustomStreamForCheckAuthAndSaveToTempCache.dart';
import 'package:library_arch_mvvm_modify_firebase_login/modelQNamedServiceViewModel/userQTempCacheServiceViewModel/UserQTempCacheServiceViewModelUsingUpdateParameterUserAndGetNPAndDeleteNP.dart';
import 'package:library_arch_mvvm_modify_firebase_login/modelQThereIsStateViewModel/userQThereIsStateViewModel/UserQThereIsStateViewModel.dart';
import 'package:library_arch_mvvm_modify_firebase_login/modelQThereIsStateViewModel/userQThereIsStateViewModel/UserQThereIsStateViewModelForCheckAuthAndSaveToTempCache.dart';
import 'package:library_architecture_mvvm_modify/base_named_view_list_view_model/base_named_view_list_view_model.dart';

class MainViewListViewModel
    extends BaseNamedViewListViewModel
{
  // ModelQThereIsStateViewModel
  final _userQThereIsStateViewModel =
  UserQThereIsStateViewModel<User,ListUser<User>>(
      InitializedStreamUser());
  final _userQThereIsStateViewModelForCheckAuthAndSaveToTempCache =
  UserQThereIsStateViewModelForCheckAuthAndSaveToTempCache<User,ListUser<User>>(
      InitializedStreamUser());

  // ModelQNamedServiceViewModel
  final _userQFirebaseAuthAndTempCacheServiceViewModelUsingCustomStreamForCheckAuthAndSaveToTempCache =
  UserQFirebaseAuthAndTempCacheServiceViewModelUsingCustomStreamForCheckAuthAndSaveToTempCache<User,ListUser<User>>(
      UserForSuccessWhereParametersEqualsStringNullNP(),
      UserForFirebaseUserTIP());
  final _userQTempCacheServiceViewModelUsingUpdateParameterUserAndGetNPAndDeleteNP =
  UserQTempCacheServiceViewModelUsingUpdateParameterUserAndGetNPAndDeleteNP<User,ListUser<User>>(
      UserForLocalExceptionTIP(),
      UserForObjectTIP());

  @override
  void dispose() {
    _userQThereIsStateViewModel.dispose();
    _userQThereIsStateViewModelForCheckAuthAndSaveToTempCache.dispose();
  }

  Stream<User>? get getStreamUser {
    return _userQThereIsStateViewModel.getStreamUser;
  }

  void listensCustomStreamUserAndInGeneralZeroTask(
      Function(User user) callback)
  {
    _userQThereIsStateViewModelForCheckAuthAndSaveToTempCache
        .listensCustomStreamUser(_userQFirebaseAuthAndTempCacheServiceViewModelUsingCustomStreamForCheckAuthAndSaveToTempCache.getCustomStreamUser, callback);
  }

  void setUserAndInGeneralZeroTask(
      User user)
  {
    _userQThereIsStateViewModel
        .setUser = user;
    _userQThereIsStateViewModel
        .notifyStreamUser();
  }

  Future<void> getUserFromTempCacheServiceNPAndInGeneralOneTask()
  async {
    // 1
    final user = await _userQTempCacheServiceViewModelUsingUpdateParameterUserAndGetNPAndDeleteNP
        .getUserFromTempCacheServiceNP();
    _userQThereIsStateViewModel
        .setUser = user!;
    _userQThereIsStateViewModel
        .notifyStreamUser();
  }
}