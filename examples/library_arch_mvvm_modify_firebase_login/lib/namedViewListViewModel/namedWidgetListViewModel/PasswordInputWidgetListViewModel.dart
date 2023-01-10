import 'package:library_arch_mvvm_modify_firebase_login/model/passwordInput/PasswordInput.dart';
import 'package:library_arch_mvvm_modify_firebase_login/modelQThereIsStateViewModel/passwordInputQThereIsStateViewModel/PasswordInputQThereIsStateViewModel.dart';
import 'package:meta/meta.dart';

class PasswordInputWidgetListViewModel {
  @protected
  final PasswordInputQThereIsStateViewModel passwordInputQThereIsStateViewModel;

  PasswordInputWidgetListViewModel(this.passwordInputQThereIsStateViewModel);

  Stream<PasswordInput?>? get getStreamPasswordInput {
    return passwordInputQThereIsStateViewModel.getStreamPasswordInput;
  }

  void setOneParametersNamedForPasswordInputWidgetByPasswordInputAndInGeneralZeroTask(
      String str)
  {
    if(passwordInputQThereIsStateViewModel
        .getPasswordInput
        ?.getOneParametersNamedForPasswordInputWidget == str)
    {
      return;
    }
    passwordInputQThereIsStateViewModel
        .getPasswordInput
        ?.setOneParametersNamedForPasswordInputWidget = str;
    passwordInputQThereIsStateViewModel
        .notifyStreamPasswordInput();
    return;
  }
}