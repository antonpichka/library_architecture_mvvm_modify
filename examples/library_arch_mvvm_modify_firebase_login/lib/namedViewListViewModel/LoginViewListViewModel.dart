import 'package:library_arch_mvvm_modify_firebase_login/model/emailInput/EmailInput.dart';
import 'package:library_arch_mvvm_modify_firebase_login/model/emailInput/ListEmailInput.dart';
import 'package:library_arch_mvvm_modify_firebase_login/model/emailInput/streamEmailInputForSuccess/StreamEmailInputForSuccess.dart';
import 'package:library_arch_mvvm_modify_firebase_login/model/passwordInput/ListPasswordInput.dart';
import 'package:library_arch_mvvm_modify_firebase_login/model/passwordInput/PasswordInput.dart';
import 'package:library_arch_mvvm_modify_firebase_login/model/passwordInput/streamPasswordInputForSuccess/StreamPasswordInputForSuccess.dart';
import 'package:library_arch_mvvm_modify_firebase_login/model/user/ListUser.dart';
import 'package:library_arch_mvvm_modify_firebase_login/model/user/User.dart';
import 'package:library_arch_mvvm_modify_firebase_login/modelQNamedServiceViewModel/userQFirebaseAuthAndGoogleSignInServiceViewModel/UserQFirebaseAuthAndGoogleSignInServiceViewModelUsingUpdateNPForAuthGoogle.dart';
import 'package:library_arch_mvvm_modify_firebase_login/modelQNamedServiceViewModel/userQFirebaseAuthServiceViewModel/UserQFirebaseAuthServiceViewModelUsingInsertParameterRegistrationAndUpdateParameterLogin.dart';
import 'package:library_arch_mvvm_modify_firebase_login/modelQThereIsStateViewModel/boolQThereIsStateViewModel/BoolQThereIsStateViewModelForLoading.dart';
import 'package:library_arch_mvvm_modify_firebase_login/modelQThereIsStateViewModel/emailInputQThereIsStateViewModel/EmailInputQThereIsStateViewModel.dart';
import 'package:library_arch_mvvm_modify_firebase_login/modelQThereIsStateViewModel/passwordInputQThereIsStateViewModel/PasswordInputQThereIsStateViewModel.dart';
import 'package:library_arch_mvvm_modify_firebase_login/namedViewListViewModel/namedWidgetListViewModel/EmailInputWidgetListViewModel.dart';
import 'package:library_arch_mvvm_modify_firebase_login/namedViewListViewModel/namedWidgetListViewModel/GoogleButtonWidgetListViewModel.dart';
import 'package:library_arch_mvvm_modify_firebase_login/namedViewListViewModel/namedWidgetListViewModel/LoginButtonWidgetListViewModel.dart';
import 'package:library_arch_mvvm_modify_firebase_login/namedViewListViewModel/namedWidgetListViewModel/PasswordInputWidgetListViewModel.dart';
import 'package:library_arch_mvvm_modify_firebase_login/namedViewListViewModel/namedWidgetListViewModel/NavigationRegistrationButtonWidgetListViewModel.dart';
import 'package:library_architecture_mvvm_modify/base_model/bool.dart';
import 'package:library_architecture_mvvm_modify/base_model/interface_stream_model_for_success/stream_bool_for_success.dart';
import 'package:library_architecture_mvvm_modify/base_model/list_bool.dart';
import 'package:library_architecture_mvvm_modify/base_named_view_list_view_model/base_named_view_list_view_model.dart';

class LoginViewListViewModel
    extends BaseNamedViewListViewModel
{
  // ModelQThereIsStateViewModel
  final _emailInputQThereIsStateViewModel =
  EmailInputQThereIsStateViewModel<EmailInput,ListEmailInput<EmailInput>>(StreamEmailInputForSuccess());
  final _passwordInputQThereIsStateViewModel =
  PasswordInputQThereIsStateViewModel<PasswordInput,ListPasswordInput<PasswordInput>>(StreamPasswordInputForSuccess());
  final _boolQThereIsStateViewModelForLoading =
  BoolQThereIsStateViewModelForLoading<Bool,ListBool<Bool>>(StreamBoolForSuccess());

  // ModelQNamedServiceViewModel
  final _userQFirebaseAuthServiceViewModelUsingInsertParameterRegistrationAndUpdateParameterLogin =
  UserQFirebaseAuthServiceViewModelUsingInsertParameterRegistrationAndUpdateParameterLogin<User,ListUser<User>>();
  final _userQFirebaseAuthAndGoogleSignInServiceViewModelUsingUpdateNPForAuthGoogle =
  UserQFirebaseAuthAndGoogleSignInServiceViewModelUsingUpdateNPForAuthGoogle<User,ListUser<User>>();

  // NamedWidgetListViewModel
  late final EmailInputWidgetListViewModel emailInputWidgetListViewModel;
  late final PasswordInputWidgetListViewModel passwordInputWidgetListViewModel;
  late final LoginButtonWidgetListViewModel loginButtonWidgetListViewModel;
  late final GoogleButtonWidgetListViewModel googleButtonWidgetListViewModel;
  late final NavigationRegistrationButtonWidgetListViewModel navigationRegistrationButtonWidgetListViewModel;

  LoginViewListViewModel() {
    emailInputWidgetListViewModel = EmailInputWidgetListViewModel(
        _emailInputQThereIsStateViewModel);
    passwordInputWidgetListViewModel = PasswordInputWidgetListViewModel(
        _passwordInputQThereIsStateViewModel);
    loginButtonWidgetListViewModel = LoginButtonWidgetListViewModel(
        _userQFirebaseAuthServiceViewModelUsingInsertParameterRegistrationAndUpdateParameterLogin,
        _emailInputQThereIsStateViewModel,
        _passwordInputQThereIsStateViewModel,
        _boolQThereIsStateViewModelForLoading);
    googleButtonWidgetListViewModel = GoogleButtonWidgetListViewModel(
        _userQFirebaseAuthAndGoogleSignInServiceViewModelUsingUpdateNPForAuthGoogle,
        _boolQThereIsStateViewModelForLoading);
    navigationRegistrationButtonWidgetListViewModel = NavigationRegistrationButtonWidgetListViewModel(
        _boolQThereIsStateViewModelForLoading);
  }

  @override
  void dispose() {
    _emailInputQThereIsStateViewModel.dispose();
    _passwordInputQThereIsStateViewModel.dispose();
    _boolQThereIsStateViewModelForLoading.dispose();
  }

}