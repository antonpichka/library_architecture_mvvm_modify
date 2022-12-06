import 'package:library_arch_mvvm_modify_counter/modelQNamedServiceViewModel/intQNoServiceViewModel/IntQNoServiceViewModelUsingGetNPForIncrementAndDecrement.dart';

class IncrementFABWidgetListViewModel {
  final IntQNoServiceViewModelUsingGetNPForIncrementAndDecrement _intQNoServiceViewModelUsingGetNPForIncrementAndDecrement;

  IncrementFABWidgetListViewModel(this._intQNoServiceViewModelUsingGetNPForIncrementAndDecrement);

  void incrementFieldByIntUsingGetNPForIncrementAndDecrementAndInGeneralZeroTask()
  {
    _intQNoServiceViewModelUsingGetNPForIncrementAndDecrement
        .getIntUsingGetNPForIncrementAndDecrement
        ?.field++;
    _intQNoServiceViewModelUsingGetNPForIncrementAndDecrement
        .notifyStreamIntUsingGetNPForIncrementAndDecrement();
    return;
  }
}