import 'package:library_arch_mvvm_modify_firebase_login/model/user/ListUser.dart';
import 'package:library_arch_mvvm_modify_firebase_login/model/user/User.dart';
import 'package:library_arch_mvvm_modify_firebase_login/model/user/cloneStreamUserForSuccess/CloneStreamUserForSuccess.dart';
import 'package:library_arch_mvvm_modify_firebase_login/modelQNamedServiceViewModel/userQFirebaseAuthAndGoogleSignInServiceViewModel/UserQFirebaseAuthAndGoogleSignInServiceViewModelUsingDeleteNPForSignOut.dart';
import 'package:library_arch_mvvm_modify_firebase_login/namedViewListViewModel/namedWidgetListViewModel/IconButtonExitToAppWidgetListViewModel.dart';
import 'package:library_architecture_mvvm_modify/base_named_view_list_view_model/base_named_view_list_view_model.dart';

class HomeViewListViewModel
    extends BaseNamedViewListViewModel
{
  // ModelQNamedServiceViewModel
  final _userQFirebaseAuthAndGoogleSignInServiceViewModelUsingDeleteNPForSignOut =
  UserQFirebaseAuthAndGoogleSignInServiceViewModelUsingDeleteNPForSignOut<User,ListUser<User>>(CloneStreamUserForSuccess());

  // NamedWidgetListViewModel
  late final IconButtonExitToAppWidgetListViewModel iconButtonExitToAppWidgetListViewModel;

  HomeViewListViewModel() {
    iconButtonExitToAppWidgetListViewModel = IconButtonExitToAppWidgetListViewModel(_userQFirebaseAuthAndGoogleSignInServiceViewModelUsingDeleteNPForSignOut);
  }

  @override
  void dispose() {
    _userQFirebaseAuthAndGoogleSignInServiceViewModelUsingDeleteNPForSignOut.dispose();
  }
}