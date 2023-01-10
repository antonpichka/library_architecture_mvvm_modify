import 'package:library_architecture_mvvm_modify/base_model_q_there_is_state_view_model/bool_q_there_is_state_view_model.dart';
import 'package:meta/meta.dart';

class NavigationRegistrationButtonWidgetListViewModel {
  @protected
  final BoolQThereIsStateViewModel boolQThereIsStateViewModelForLoading;

  NavigationRegistrationButtonWidgetListViewModel(this.boolQThereIsStateViewModelForLoading);

  void checkIsLoadingAndInGeneralZeroTask(
      Function() callbackForNavigationIfLoadingFalse)
  {
    if(boolQThereIsStateViewModelForLoading
        .getBool
        !.isField)
    {
      return;
    }
    callbackForNavigationIfLoadingFalse();
    return;
  }
}