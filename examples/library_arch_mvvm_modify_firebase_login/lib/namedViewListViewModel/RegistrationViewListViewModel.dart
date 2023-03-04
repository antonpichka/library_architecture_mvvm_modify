import 'package:library_arch_mvvm_modify_firebase_login/model/emailInput/initializedStreamEmailInput/InitializedStreamEmailInput.dart';
import 'package:library_arch_mvvm_modify_firebase_login/model/passwordInput/initializedStreamPasswordInput/InitializedStreamPasswordInputFirstBranchOne.dart';
import 'package:library_arch_mvvm_modify_firebase_login/modelQNamedServiceViewModel/userQFirebaseAuthServiceViewModel/UserQFirebaseAuthServiceViewModelUsingInsertParameterRegistrationAndUpdateParameterLogin.dart';
import 'package:library_arch_mvvm_modify_firebase_login/modelQThereIsStateViewModel/emailInputQThereIsStateViewModel/EmailInputQThereIsStateViewModel.dart';
import 'package:library_arch_mvvm_modify_firebase_login/modelQThereIsStateViewModel/passwordInputQThereIsStateViewModel/PasswordInputFirstBranchOneQThereIsStateViewModel.dart';
import 'package:library_arch_mvvm_modify_firebase_login/namedViewListViewModel/namedWidgetListViewModel/ConfirmedPasswordInputWidgetListViewModel.dart';
import 'package:library_arch_mvvm_modify_firebase_login/namedViewListViewModel/namedWidgetListViewModel/EmailInputWidgetListViewModel.dart';
import 'package:library_arch_mvvm_modify_firebase_login/namedViewListViewModel/namedWidgetListViewModel/PasswordInputWidgetListViewModel.dart';
import 'package:library_arch_mvvm_modify_firebase_login/namedViewListViewModel/namedWidgetListViewModel/SignUpButtonWidgetListViewModel.dart';
import 'package:library_architecture_mvvm_modify/base_model/interface_initialized_stream_model/initialized_stream_bool.dart';
import 'package:library_architecture_mvvm_modify/base_model_q_there_is_state_view_model/bool_q_there_is_state_view_model.dart';
import 'package:library_architecture_mvvm_modify/base_named_view_list_view_model/base_named_view_list_view_model.dart';

class RegistrationViewListViewModel extends BaseNamedViewListViewModel {
  // ModelQThereIsStateViewModel
  final _emailInputQThereIsStateViewModel =
      EmailInputQThereIsStateViewModel(InitializedStreamEmailInput());
  final _passwordInputFirstBranchOneQThereIsStateViewModel =
      PasswordInputFirstBranchOneQThereIsStateViewModel(
          InitializedStreamPasswordInputFirstBranchOne());
  final _boolQThereIsStateViewModelForLoading =
      BoolQThereIsStateViewModel(InitializedStreamBool());

  // ModelQNamedServiceViewModel
  final _userQFirebaseAuthServiceViewModelUsingInsertParameterRegistrationAndUpdateParameterLogin =
      UserQFirebaseAuthServiceViewModelUsingInsertParameterRegistrationAndUpdateParameterLogin();

  // NamedWidgetListViewModel
  late final EmailInputWidgetListViewModel emailInputWidgetListViewModel;
  late final PasswordInputWidgetListViewModel passwordInputWidgetListViewModel;
  late final ConfirmedPasswordInputWidgetListViewModel
      confirmedPasswordInputWidgetListViewModel;
  late final SignUpButtonWidgetListViewModel signUpButtonWidgetListViewModel;

  RegistrationViewListViewModel() {
    emailInputWidgetListViewModel =
        EmailInputWidgetListViewModel(_emailInputQThereIsStateViewModel);
    passwordInputWidgetListViewModel = PasswordInputWidgetListViewModel(
        _passwordInputFirstBranchOneQThereIsStateViewModel);
    confirmedPasswordInputWidgetListViewModel =
        ConfirmedPasswordInputWidgetListViewModel(
            _passwordInputFirstBranchOneQThereIsStateViewModel);
    signUpButtonWidgetListViewModel = SignUpButtonWidgetListViewModel(
        _userQFirebaseAuthServiceViewModelUsingInsertParameterRegistrationAndUpdateParameterLogin,
        _emailInputQThereIsStateViewModel,
        _passwordInputFirstBranchOneQThereIsStateViewModel,
        _boolQThereIsStateViewModelForLoading);
  }

  @override
  void dispose() {
    _emailInputQThereIsStateViewModel.dispose();
    _passwordInputFirstBranchOneQThereIsStateViewModel.dispose();
    _boolQThereIsStateViewModelForLoading.dispose();
  }
}
