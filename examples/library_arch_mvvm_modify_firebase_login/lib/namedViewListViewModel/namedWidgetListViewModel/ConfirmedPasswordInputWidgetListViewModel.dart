import 'package:library_arch_mvvm_modify_firebase_login/model/passwordInput/ListPasswordInputFirstBranchOne.dart';
import 'package:library_arch_mvvm_modify_firebase_login/model/passwordInput/PasswordInputFirstBranchOne.dart';
import 'package:library_arch_mvvm_modify_firebase_login/modelQThereIsStateViewModel/passwordInputQThereIsStateViewModel/PasswordInputQThereIsStateViewModel.dart';
import 'package:meta/meta.dart';

class ConfirmedPasswordInputWidgetListViewModel {
  @protected
  final PasswordInputQThereIsStateViewModel<PasswordInputFirstBranchOne,ListPasswordInputFirstBranchOne<PasswordInputFirstBranchOne>> passwordInputQThereIsStateViewModel;

  ConfirmedPasswordInputWidgetListViewModel(this.passwordInputQThereIsStateViewModel);

  Stream<PasswordInputFirstBranchOne>? get getStreamPasswordInput {
    return passwordInputQThereIsStateViewModel.getStreamPasswordInput;
  }

  void setOneParametersNamedForConfirmedPasswordInputWidgetByPasswordInputAndInGeneralZeroTask(
      String str)
  {
    if(passwordInputQThereIsStateViewModel
        .getPasswordInput
        ?.getOneParametersNamedForConfirmedPasswordInputWidget == str)
    {
      return;
    }
    passwordInputQThereIsStateViewModel
        .getPasswordInput
        ?.setOneParametersNamedForConfirmedPasswordInputWidget = str;
    passwordInputQThereIsStateViewModel
        .notifyStreamPasswordInput();
    return;
  }
}