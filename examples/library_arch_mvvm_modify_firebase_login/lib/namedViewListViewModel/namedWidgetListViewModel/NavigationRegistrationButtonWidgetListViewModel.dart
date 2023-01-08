import 'package:library_arch_mvvm_modify_firebase_login/modelQThereIsStateViewModel/boolQThereIsStateViewModel/BoolQThereIsStateViewModelForLoading.dart';
import 'package:library_architecture_mvvm_modify/base_model/bool.dart';
import 'package:library_architecture_mvvm_modify/base_model/list_bool.dart';
import 'package:meta/meta.dart';

class NavigationRegistrationButtonWidgetListViewModel {
  @protected
  final BoolQThereIsStateViewModelForLoading<Bool,ListBool<Bool>> boolQThereIsStateViewModelForLoading;

  NavigationRegistrationButtonWidgetListViewModel(this.boolQThereIsStateViewModelForLoading);

  void checkIsLoadingAndInGeneralZeroTask(
      Function() callbackForNavigationIfLoadingFalse)
  {
    if(boolQThereIsStateViewModelForLoading
        .getBoolForLoading
        !.isField)
    {
      return;
    }
    callbackForNavigationIfLoadingFalse();
    return;
  }
}