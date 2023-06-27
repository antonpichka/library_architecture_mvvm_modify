import 'package:library_arch_mvvm_modify_firebase_login/model/passwordInput/PasswordInputFirstBranchOne.dart';
import 'package:library_arch_mvvm_modify_firebase_login/modelQThereIsStateViewModel/passwordInputQThereIsStateViewModel/PasswordInputFirstBranchOneQThereIsStateViewModel.dart';
import 'package:meta/meta.dart';

base class ConfirmedPasswordInputWidgetListViewModel {
  @protected
  final PasswordInputFirstBranchOneQThereIsStateViewModel
      passwordInputFirstBranchOneQThereIsStateViewModel;

  ConfirmedPasswordInputWidgetListViewModel(
      this.passwordInputFirstBranchOneQThereIsStateViewModel);

  Stream<PasswordInputFirstBranchOne?>? get getStreamPasswordInput {
    return passwordInputFirstBranchOneQThereIsStateViewModel
        .getStreamPasswordInput;
  }

  void
      setOneParametersNamedForConfirmedPasswordInputWidgetByPasswordInputAndInGeneralZeroTask(
          String str) {
    if (passwordInputFirstBranchOneQThereIsStateViewModel.getPasswordInput
            ?.getOneParametersNamedForConfirmedPasswordInputWidget ==
        str) {
      return;
    }
    passwordInputFirstBranchOneQThereIsStateViewModel.getPasswordInput
        ?.setOneParametersNamedForConfirmedPasswordInputWidget = str;
    passwordInputFirstBranchOneQThereIsStateViewModel
        .notifyStreamPasswordInput();
    return;
  }
}
