import 'package:library_arch_mvvm_modify_firebase_login/model/emailInput/EmailInput.dart';
import 'package:library_arch_mvvm_modify_firebase_login/model/emailInput/ListEmailInput.dart';
import 'package:library_arch_mvvm_modify_firebase_login/model/emailInput/streamEmailInputForSuccess/StreamEmailInputForSuccess.dart';
import 'package:library_arch_mvvm_modify_firebase_login/model/passwordInput/ListPasswordInputFirstBranchOne.dart';
import 'package:library_arch_mvvm_modify_firebase_login/model/passwordInput/PasswordInputFirstBranchOne.dart';
import 'package:library_arch_mvvm_modify_firebase_login/model/passwordInput/streamPasswordInputForSuccess/StreamPasswordInputFirstBranchOneForSuccess.dart';
import 'package:library_arch_mvvm_modify_firebase_login/model/user/ListUser.dart';
import 'package:library_arch_mvvm_modify_firebase_login/model/user/User.dart';
import 'package:library_arch_mvvm_modify_firebase_login/modelQNamedServiceViewModel/userQFirebaseAuthServiceViewModel/UserQFirebaseAuthServiceViewModelUsingInsertParameterRegistrationAndUpdateParameterLogin.dart';
import 'package:library_arch_mvvm_modify_firebase_login/modelQThereIsStateViewModel/boolQThereIsStateViewModel/BoolQThereIsStateViewModelForLoading.dart';
import 'package:library_arch_mvvm_modify_firebase_login/modelQThereIsStateViewModel/emailInputQThereIsStateViewModel/EmailInputQThereIsStateViewModel.dart';
import 'package:library_arch_mvvm_modify_firebase_login/modelQThereIsStateViewModel/passwordInputQThereIsStateViewModel/PasswordInputQThereIsStateViewModel.dart';
import 'package:library_arch_mvvm_modify_firebase_login/namedViewListViewModel/namedWidgetListViewModel/ConfirmedPasswordInputWidgetListViewModel.dart';
import 'package:library_arch_mvvm_modify_firebase_login/namedViewListViewModel/namedWidgetListViewModel/EmailInputWidgetListViewModel.dart';
import 'package:library_arch_mvvm_modify_firebase_login/namedViewListViewModel/namedWidgetListViewModel/PasswordInputWidgetListViewModel.dart';
import 'package:library_arch_mvvm_modify_firebase_login/namedViewListViewModel/namedWidgetListViewModel/SignUpButtonWidgetListViewModel.dart';
import 'package:library_architecture_mvvm_modify/base_model/bool.dart';
import 'package:library_architecture_mvvm_modify/base_model/interface_stream_model_for_success/stream_bool_for_success.dart';
import 'package:library_architecture_mvvm_modify/base_model/list_bool.dart';
import 'package:library_architecture_mvvm_modify/base_named_view_list_view_model/base_named_view_list_view_model.dart';

class RegistrationViewListViewModel
    extends BaseNamedViewListViewModel
{
  // ModelQThereIsStateViewModel
  final _emailInputQThereIsStateViewModel =
  EmailInputQThereIsStateViewModel<EmailInput,ListEmailInput<EmailInput>>(
      StreamEmailInputForSuccess());
  final _passwordInputQThereIsStateViewModel =
  PasswordInputQThereIsStateViewModel<PasswordInputFirstBranchOne,ListPasswordInputFirstBranchOne<PasswordInputFirstBranchOne>>(
      StreamPasswordInputFirstBranchOneForSuccess());
  final _boolQThereIsStateViewModelForLoading =
  BoolQThereIsStateViewModelForLoading<Bool,ListBool<Bool>>(
      StreamBoolForSuccess());

  // ModelQNamedServiceViewModel
  final _userQFirebaseAuthServiceViewModelUsingInsertParameterRegistrationAndUpdateParameterLogin =
  UserQFirebaseAuthServiceViewModelUsingInsertParameterRegistrationAndUpdateParameterLogin<User,ListUser<User>>();

  // NamedWidgetListViewModel
  late final EmailInputWidgetListViewModel emailInputWidgetListViewModel;
  late final PasswordInputWidgetListViewModel passwordInputWidgetListViewModel;
  late final ConfirmedPasswordInputWidgetListViewModel confirmedPasswordInputWidgetListViewModel;
  late final SignUpButtonWidgetListViewModel signUpButtonWidgetListViewModel;

  RegistrationViewListViewModel() {
    emailInputWidgetListViewModel = EmailInputWidgetListViewModel(_emailInputQThereIsStateViewModel);
    passwordInputWidgetListViewModel = PasswordInputWidgetListViewModel(_passwordInputQThereIsStateViewModel);
    confirmedPasswordInputWidgetListViewModel = ConfirmedPasswordInputWidgetListViewModel(_passwordInputQThereIsStateViewModel);
    signUpButtonWidgetListViewModel = SignUpButtonWidgetListViewModel(
        _userQFirebaseAuthServiceViewModelUsingInsertParameterRegistrationAndUpdateParameterLogin,
        _emailInputQThereIsStateViewModel,
        _passwordInputQThereIsStateViewModel,
        _boolQThereIsStateViewModelForLoading);
  }

  @override
  void dispose() {
    _emailInputQThereIsStateViewModel.dispose();
    _passwordInputQThereIsStateViewModel.dispose();
    _boolQThereIsStateViewModelForLoading.dispose();
  }
}