import 'package:library_arch_mvvm_modify_firebase_login/model/emailInput/initializedStreamEmailInput/InitializedStreamEmailInput.dart';
import 'package:library_arch_mvvm_modify_firebase_login/model/passwordInput/initializedStreamPasswordInput/InitializedStreamPasswordInput.dart';
import 'package:library_arch_mvvm_modify_firebase_login/modelQNamedServiceViewModel/userQFirebaseAuthAndGoogleSignInServiceViewModel/UserQFirebaseAuthAndGoogleSignInServiceViewModelUsingUpdateNPForAuthGoogle.dart';
import 'package:library_arch_mvvm_modify_firebase_login/modelQNamedServiceViewModel/userQFirebaseAuthServiceViewModel/UserQFirebaseAuthServiceViewModelUsingInsertParameterRegistrationAndUpdateParameterLogin.dart';
import 'package:library_arch_mvvm_modify_firebase_login/modelQThereIsStateViewModel/emailInputQThereIsStateViewModel/EmailInputQThereIsStateViewModel.dart';
import 'package:library_arch_mvvm_modify_firebase_login/modelQThereIsStateViewModel/passwordInputQThereIsStateViewModel/PasswordInputQThereIsStateViewModel.dart';
import 'package:library_arch_mvvm_modify_firebase_login/namedViewListViewModel/namedWidgetListViewModel/EmailInputWidgetListViewModel.dart';
import 'package:library_arch_mvvm_modify_firebase_login/namedViewListViewModel/namedWidgetListViewModel/GoogleButtonWidgetListViewModel.dart';
import 'package:library_arch_mvvm_modify_firebase_login/namedViewListViewModel/namedWidgetListViewModel/LoginButtonWidgetListViewModel.dart';
import 'package:library_arch_mvvm_modify_firebase_login/namedViewListViewModel/namedWidgetListViewModel/PasswordInputWidgetListViewModel.dart';
import 'package:library_arch_mvvm_modify_firebase_login/namedViewListViewModel/namedWidgetListViewModel/NavigationRegistrationButtonWidgetListViewModel.dart';
import 'package:library_architecture_mvvm_modify/base_model/interface_initialized_stream_model/initialized_stream_bool.dart';
import 'package:library_architecture_mvvm_modify/base_model_q_there_is_state_view_model/bool_q_there_is_state_view_model.dart';
import 'package:library_architecture_mvvm_modify/base_named_view_list_view_model/base_named_view_list_view_model.dart';

class LoginViewListViewModel extends BaseNamedViewListViewModel {
  // ModelQThereIsStateViewModel
  final _emailInputQThereIsStateViewModel =
      EmailInputQThereIsStateViewModel(InitializedStreamEmailInput());
  final _passwordInputQThereIsStateViewModel =
      PasswordInputQThereIsStateViewModel(InitializedStreamPasswordInput());
  final _boolQThereIsStateViewModelForLoading =
      BoolQThereIsStateViewModel(InitializedStreamBool());

  // ModelQNamedServiceViewModel
  final _userQFirebaseAuthServiceViewModelUsingInsertParameterRegistrationAndUpdateParameterLogin =
      UserQFirebaseAuthServiceViewModelUsingInsertParameterRegistrationAndUpdateParameterLogin();
  final _userQFirebaseAuthAndGoogleSignInServiceViewModelUsingUpdateNPForAuthGoogle =
      UserQFirebaseAuthAndGoogleSignInServiceViewModelUsingUpdateNPForAuthGoogle();

  // NamedWidgetListViewModel
  late final EmailInputWidgetListViewModel emailInputWidgetListViewModel;
  late final PasswordInputWidgetListViewModel passwordInputWidgetListViewModel;
  late final LoginButtonWidgetListViewModel loginButtonWidgetListViewModel;
  late final GoogleButtonWidgetListViewModel googleButtonWidgetListViewModel;
  late final NavigationRegistrationButtonWidgetListViewModel
      navigationRegistrationButtonWidgetListViewModel;

  LoginViewListViewModel() {
    emailInputWidgetListViewModel =
        EmailInputWidgetListViewModel(_emailInputQThereIsStateViewModel);
    passwordInputWidgetListViewModel =
        PasswordInputWidgetListViewModel(_passwordInputQThereIsStateViewModel);
    loginButtonWidgetListViewModel = LoginButtonWidgetListViewModel(
        _userQFirebaseAuthServiceViewModelUsingInsertParameterRegistrationAndUpdateParameterLogin,
        _emailInputQThereIsStateViewModel,
        _passwordInputQThereIsStateViewModel,
        _boolQThereIsStateViewModelForLoading);
    googleButtonWidgetListViewModel = GoogleButtonWidgetListViewModel(
        _userQFirebaseAuthAndGoogleSignInServiceViewModelUsingUpdateNPForAuthGoogle,
        _boolQThereIsStateViewModelForLoading);
    navigationRegistrationButtonWidgetListViewModel =
        NavigationRegistrationButtonWidgetListViewModel(
            _boolQThereIsStateViewModelForLoading);
  }

  @override
  void dispose() {
    _emailInputQThereIsStateViewModel.dispose();
    _passwordInputQThereIsStateViewModel.dispose();
    _boolQThereIsStateViewModelForLoading.dispose();
  }
}
