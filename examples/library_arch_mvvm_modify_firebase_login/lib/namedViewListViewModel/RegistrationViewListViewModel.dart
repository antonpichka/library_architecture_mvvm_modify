import 'package:library_arch_mvvm_modify_firebase_login/model/emailInput/EmailInput.dart';
import 'package:library_arch_mvvm_modify_firebase_login/model/emailInput/ListEmailInput.dart';
import 'package:library_arch_mvvm_modify_firebase_login/model/emailInput/initializedStreamEmailInput/InitializedStreamEmailInput.dart';
import 'package:library_arch_mvvm_modify_firebase_login/model/passwordInput/ListPasswordInputFirstBranchOne.dart';
import 'package:library_arch_mvvm_modify_firebase_login/model/passwordInput/PasswordInputFirstBranchOne.dart';
import 'package:library_arch_mvvm_modify_firebase_login/model/passwordInput/initializedStreamPasswordInput/InitializedStreamPasswordInputFirstBranchOne.dart';
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
import 'package:library_architecture_mvvm_modify/base_model/interface_initialized_stream_model/initialized_stream_bool.dart';
import 'package:library_architecture_mvvm_modify/base_model/list_bool.dart';
import 'package:library_architecture_mvvm_modify/base_named_view_list_view_model/base_named_view_list_view_model.dart';

class RegistrationViewListViewModel
    extends BaseNamedViewListViewModel
{
  // ModelQThereIsStateViewModel
  final _emailInputQThereIsStateViewModel =
  EmailInputQThereIsStateViewModel<EmailInput,ListEmailInput<EmailInput>>(
      InitializedStreamEmailInput());
  final _passwordInputQThereIsStateViewModel =
  PasswordInputQThereIsStateViewModel<PasswordInputFirstBranchOne,ListPasswordInputFirstBranchOne<PasswordInputFirstBranchOne>>(
      InitializedStreamPasswordInputFirstBranchOne());
  final _boolQThereIsStateViewModelForLoading =
  BoolQThereIsStateViewModelForLoading<Bool,ListBool<Bool>>(
      InitializedStreamBool());

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