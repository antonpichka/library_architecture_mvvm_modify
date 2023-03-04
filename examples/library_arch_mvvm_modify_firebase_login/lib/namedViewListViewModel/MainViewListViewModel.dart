import 'package:library_arch_mvvm_modify_firebase_login/model/user/User.dart';
import 'package:library_arch_mvvm_modify_firebase_login/model/user/initializedStreamUser/InitializedStreamUser.dart';
import 'package:library_arch_mvvm_modify_firebase_login/modelQNamedServiceViewModel/userQFirebaseAuthAndTempCacheServiceViewModel/UserQFirebaseAuthAndTempCacheServiceViewModelUsingCustomStreamForCheckAuthAndSaveToTempCache.dart';
import 'package:library_arch_mvvm_modify_firebase_login/modelQNamedServiceViewModel/userQTempCacheServiceViewModel/UserQTempCacheServiceViewModelUsingUpdateParameterUserAndGetNPAndDeleteNP.dart';
import 'package:library_arch_mvvm_modify_firebase_login/modelQThereIsStateViewModel/userQThereIsStateViewModel/UserQThereIsStateViewModel.dart';
import 'package:library_architecture_mvvm_modify/base_named_view_list_view_model/base_named_view_list_view_model.dart';

class MainViewListViewModel extends BaseNamedViewListViewModel {
  // ModelQThereIsStateViewModel
  final _userQThereIsStateViewModel =
      UserQThereIsStateViewModel(InitializedStreamUser());

  // ModelQNamedServiceViewModel
  final _userQFirebaseAuthAndTempCacheServiceViewModelUsingCustomStreamForCheckAuthAndSaveToTempCache =
      UserQFirebaseAuthAndTempCacheServiceViewModelUsingCustomStreamForCheckAuthAndSaveToTempCache();
  final _userQTempCacheServiceViewModelUsingUpdateParameterUserAndGetNPAndDeleteNP =
      UserQTempCacheServiceViewModelUsingUpdateParameterUserAndGetNPAndDeleteNP();

  @override
  void dispose() {
    _userQThereIsStateViewModel.dispose();
  }

  Stream<User?>? get getStreamUser {
    return _userQThereIsStateViewModel.getStreamUser;
  }

  void customListenStreamUserAndInGeneralZeroTask() {
    _userQThereIsStateViewModel.customListenStreamUser(
        _userQFirebaseAuthAndTempCacheServiceViewModelUsingCustomStreamForCheckAuthAndSaveToTempCache
            .getCustomStreamUser,
        _setUserAndInGeneralZeroTask);
  }

  Future<void> getUserFromTempCacheServiceNPAndInGeneralOneTask() async {
    // 1
    final user =
        await _userQTempCacheServiceViewModelUsingUpdateParameterUserAndGetNPAndDeleteNP
            .getUserFromTempCacheServiceNP();
    _setUserAndInGeneralZeroTask(user);
  }

  void _setUserAndInGeneralZeroTask(User? user) {
    _userQThereIsStateViewModel.setUser = user!;
    _userQThereIsStateViewModel.notifyStreamUser();
  }
}
