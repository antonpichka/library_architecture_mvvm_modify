import 'package:library_arch_mvvm_modify_counter/modelQNamedServiceViewModel/intQNoServiceViewModel/IntQNoServiceViewModelUsingGetNPForIncrementAndDecrement.dart';
import 'package:library_architecture_mvvm_modify/base_model/int.dart';
import 'package:library_architecture_mvvm_modify/base_model/list_int.dart';

class IncrementFABWidgetListViewModel<Q extends Int,W extends ListInt> {
  final IntQNoServiceViewModelUsingGetNPForIncrementAndDecrement<Q,W> _intQNoServiceViewModelUsingGetNPForIncrementAndDecrement;

  IncrementFABWidgetListViewModel(this._intQNoServiceViewModelUsingGetNPForIncrementAndDecrement);

  void setOneParametersNamedByIntUsingGetNPForIncrementAndDecrementAndInGeneralZeroTask()
  {
    _intQNoServiceViewModelUsingGetNPForIncrementAndDecrement
        .getIntUsingGetNPForIncrementAndDecrement
        ?.setOneParametersNamed();
    _intQNoServiceViewModelUsingGetNPForIncrementAndDecrement
        .notifyStreamIntUsingGetNPForIncrementAndDecrement();
    return;
  }
}