import 'package:flutter/foundation.dart';
import 'package:library_arch_mvvm_modify_counter/modelQNamedServiceViewModel/intQNoServiceViewModel/IntQNoServiceViewModelUsingGetNPForIncrementAndDecrement.dart';
import 'package:library_architecture_mvvm_modify/base_model/int.dart';
import 'package:library_architecture_mvvm_modify/base_model/list_int.dart';

class IncrementFABWidgetListViewModel {
  @protected
  final IntQNoServiceViewModelUsingGetNPForIncrementAndDecrement<Int,ListInt<Int>> intQNoServiceViewModelUsingGetNPForIncrementAndDecrement;

  IncrementFABWidgetListViewModel(this.intQNoServiceViewModelUsingGetNPForIncrementAndDecrement);

  void setOneParametersNamedByIntUsingGetNPForIncrementAndDecrementAndInGeneralZeroTask()
  {
    intQNoServiceViewModelUsingGetNPForIncrementAndDecrement
        .getIntUsingGetNPForIncrementAndDecrement
        ?.setOneParametersNamedForNamedWidgetOrView();
    intQNoServiceViewModelUsingGetNPForIncrementAndDecrement
        .notifyStreamIntUsingGetNPForIncrementAndDecrement();
    return;
  }
}