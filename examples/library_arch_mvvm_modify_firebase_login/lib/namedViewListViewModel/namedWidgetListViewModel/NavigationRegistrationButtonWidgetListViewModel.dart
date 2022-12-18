import 'package:flutter/foundation.dart';
import 'package:library_arch_mvvm_modify_firebase_login/modelQNamedServiceViewModel/boolQNoServiceViewModel/BoolQNoServiceViewModelUsingGetNPForLoading.dart';
import 'package:library_architecture_mvvm_modify/base_model/bool.dart';
import 'package:library_architecture_mvvm_modify/base_model/list_bool.dart';

class NavigationRegistrationButtonWidgetListViewModel {
  @protected
  final BoolQNoServiceViewModelUsingGetNPForLoading<Bool,ListBool<Bool>> boolQNoServiceViewModelUsingGetNPForLoading;

  NavigationRegistrationButtonWidgetListViewModel(this.boolQNoServiceViewModelUsingGetNPForLoading);

  void checkIsLoadingAndInGeneralZeroTask(
      Function() callbackForNavigationIfLoadingFalse)
  {
    if(boolQNoServiceViewModelUsingGetNPForLoading
        .getBoolUsingGetNPForLoading
        !.getParameterIsField)
    {
      return;
    }
    callbackForNavigationIfLoadingFalse();
    return;
  }
}