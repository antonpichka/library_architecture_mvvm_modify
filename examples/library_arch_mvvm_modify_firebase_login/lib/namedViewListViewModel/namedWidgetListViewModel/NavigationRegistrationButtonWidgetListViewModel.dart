import 'package:library_arch_mvvm_modify_firebase_login/modelQNamedServiceViewModel/boolQNoServiceViewModel/BoolQNoServiceViewModelUsingGetNPForLoading.dart';
import 'package:library_architecture_mvvm_modify/base_model/bool.dart';
import 'package:library_architecture_mvvm_modify/base_model/list_bool.dart';

class NavigationRegistrationButtonWidgetListViewModel {
  final BoolQNoServiceViewModelUsingGetNPForLoading<Bool,ListBool<Bool>> _boolQNoServiceViewModelUsingGetNPForLoading;

  NavigationRegistrationButtonWidgetListViewModel(this._boolQNoServiceViewModelUsingGetNPForLoading);

  void checkIsLoadingAndInGeneralZeroTask(
      Function() callbackForNavigationIfLoadingFalse)
  {
    if(_boolQNoServiceViewModelUsingGetNPForLoading
        .getBoolUsingGetNPForLoading
        !.getParameterIsField)
    {
      return;
    }
    callbackForNavigationIfLoadingFalse();
    return;
  }
}