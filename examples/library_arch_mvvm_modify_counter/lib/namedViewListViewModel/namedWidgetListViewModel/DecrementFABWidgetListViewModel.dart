import 'package:library_arch_mvvm_modify_counter/modelQNamedServiceViewModel/intQNoServiceViewModel/IntQNoServiceViewModelUsingGetNPForIncrementAndDecrement.dart';

class DecrementFABWidgetListViewModel {
  final IntQNoServiceViewModelUsingGetNPForIncrementAndDecrement _intQNoServiceViewModelUsingGetNPForIncrementAndDecrement;

  DecrementFABWidgetListViewModel(this._intQNoServiceViewModelUsingGetNPForIncrementAndDecrement);

  void decrementFieldByIntUsingGetNPForIncrementAndDecrementAndInGeneralZeroTask()
  {
    _intQNoServiceViewModelUsingGetNPForIncrementAndDecrement
        .getIntUsingGetNPForIncrementAndDecrement
        ?.field--;
    _intQNoServiceViewModelUsingGetNPForIncrementAndDecrement
        .notifyStreamIntUsingGetNPForIncrementAndDecrement();
    return;
  }
}