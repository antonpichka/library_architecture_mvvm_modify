import 'package:library_arch_mvvm_modify_counter/modelQNamedServiceViewModel/intQNoServiceViewModel/IntQNoServiceViewModelUsingGetNPForIncrementAndDecrement.dart';
import 'package:library_architecture_mvvm_modify/base_model/int.dart';
import 'package:library_architecture_mvvm_modify/base_model/list_int.dart';

class IntTextWidgetListViewModel {
  final IntQNoServiceViewModelUsingGetNPForIncrementAndDecrement<Int,ListInt<Int>> _intQNoServiceViewModelUsingGetNPForIncrementAndDecrement;

  IntTextWidgetListViewModel(this._intQNoServiceViewModelUsingGetNPForIncrementAndDecrement);

  Stream<Int>? get getStreamIntUsingGetNPForIncrementAndDecrement {
    return _intQNoServiceViewModelUsingGetNPForIncrementAndDecrement.getStreamIntUsingGetNPForIncrementAndDecrement;
  }

  Future<void> notifyStreamIntUsingGetNPForIncrementAndDecrementAndInGeneralZeroTask()
  async {
    await Future.delayed(const Duration(milliseconds: 100));
    _intQNoServiceViewModelUsingGetNPForIncrementAndDecrement
        .notifyStreamIntUsingGetNPForIncrementAndDecrement();
  }
}