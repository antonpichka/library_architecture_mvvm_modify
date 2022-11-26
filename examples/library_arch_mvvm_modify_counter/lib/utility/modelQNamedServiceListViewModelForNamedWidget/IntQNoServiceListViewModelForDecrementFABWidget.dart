import 'package:library_arch_mvvm_modify_counter/modelQNamedServiceViewModel/intQNoServiceViewModel/IntQNoServiceViewModelUsingGetNPForIncrementAndDecrement.dart';

class IntQNoServiceListViewModelForDecrementFABWidget {
  final IntQNoServiceViewModelUsingGetNPForIncrementAndDecrement _intQNoServiceViewModelUsingGetNPForIncrementAndDecrement;

  IntQNoServiceListViewModelForDecrementFABWidget(this._intQNoServiceViewModelUsingGetNPForIncrementAndDecrement);

  void decrementFieldByIntUsingGetNPForIncrementAndDecrementAndInGeneralZeroTask()
  {
    _intQNoServiceViewModelUsingGetNPForIncrementAndDecrement
        .getIntUsingGetNPForIncrementAndDecrement
        .field--;
    _intQNoServiceViewModelUsingGetNPForIncrementAndDecrement
        .notifyStreamIntUsingGetNPForIncrementAndDecrement();
    return;
  }
}