import 'package:library_architecture_mvvm_modify/base_model_q_there_is_state_view_model/int_q_there_is_state_view_model.dart';
import 'package:meta/meta.dart';

base class IncrementFABWidgetListViewModel {
  @protected
  final IntQThereIsStateViewModel intQThereIsStateViewModelForIncrement;

  IncrementFABWidgetListViewModel(this.intQThereIsStateViewModelForIncrement);

  void setOneParametersNamedForNamedByIntAndInGeneralZeroTask() {
    intQThereIsStateViewModelForIncrement.getInt
        ?.setOneParametersNamedForNamed();
    intQThereIsStateViewModelForIncrement.notifyStreamInt();
    return;
  }
}
