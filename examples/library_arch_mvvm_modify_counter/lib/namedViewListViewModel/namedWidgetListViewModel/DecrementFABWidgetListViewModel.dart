import 'package:flutter/foundation.dart';
import 'package:library_arch_mvvm_modify_counter/modelQThereIsStateViewModel/intQThereIsStateViewModel/IntQThereIsStateViewModelForIncrementAndDecrement.dart';
import 'package:library_architecture_mvvm_modify/base_model/int.dart';
import 'package:library_architecture_mvvm_modify/base_model/list_int.dart';

class DecrementFABWidgetListViewModel {
  @protected
  final IntQThereIsStateViewModelForIncrementAndDecrement<Int,ListInt<Int>> intQThereIsStateViewModelForIncrementAndDecrement;

  DecrementFABWidgetListViewModel(this.intQThereIsStateViewModelForIncrementAndDecrement);

  void setTwoParametersNamedForNamedWidgetOrViewByIntForIncrementAndDecrementAndInGeneralZeroTask()
  {
    intQThereIsStateViewModelForIncrementAndDecrement
        .getIntForIncrementAndDecrement
        ?.setTwoParametersNamedForNamedWidgetOrView();
    intQThereIsStateViewModelForIncrementAndDecrement
        .notifyStreamIntForIncrementAndDecrement();
    return;
  }
}