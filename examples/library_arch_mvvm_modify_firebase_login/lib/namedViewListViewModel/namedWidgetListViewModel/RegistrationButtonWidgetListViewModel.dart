import 'package:library_arch_mvvm_modify_firebase_login/modelQNamedServiceViewModel/boolQNoServiceViewModel/BoolQNoServiceViewModelUsingGetNPForLoading.dart';

class RegistrationButtonWidgetListViewModel {
  final BoolQNoServiceViewModelUsingGetNPForLoading _boolQNoServiceViewModelUsingGetNPForLoading;

  RegistrationButtonWidgetListViewModel(this._boolQNoServiceViewModelUsingGetNPForLoading);

  void checkIsLoadingAndInGeneralZeroTask(
      Function() callbackForNavigationIfLoadingFalse)
  {
    if(_boolQNoServiceViewModelUsingGetNPForLoading
        .getBoolUsingGetNPForLoading
        !.isField)
    {
      return;
    }
    callbackForNavigationIfLoadingFalse();
    return;
  }
}