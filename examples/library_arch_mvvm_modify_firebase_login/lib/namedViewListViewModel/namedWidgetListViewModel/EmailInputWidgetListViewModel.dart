import 'package:library_arch_mvvm_modify_firebase_login/model/emailInput/EmailInput.dart';
import 'package:library_arch_mvvm_modify_firebase_login/modelQThereIsStateViewModel/emailInputQThereIsStateViewModel/EmailInputQThereIsStateViewModel.dart';
import 'package:meta/meta.dart';

base class EmailInputWidgetListViewModel {
  @protected
  final EmailInputQThereIsStateViewModel emailInputQThereIsStateViewModel;

  EmailInputWidgetListViewModel(this.emailInputQThereIsStateViewModel);

  Stream<EmailInput?>? get getStreamEmailInput {
    return emailInputQThereIsStateViewModel.getStreamEmailInput;
  }

  void setOneParametersNamedForEmailInputWidgetByEmailInputAndInGeneralZeroTask(
      String str) {
    if (emailInputQThereIsStateViewModel
            .getEmailInput?.getOneParametersNamedForEmailInputWidget ==
        str) {
      return;
    }
    emailInputQThereIsStateViewModel
        .getEmailInput?.setOneParametersNamedForEmailInputWidget = str;
    emailInputQThereIsStateViewModel.notifyStreamEmailInput();
    return;
  }
}
