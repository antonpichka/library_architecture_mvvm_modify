import 'package:flutter/foundation.dart';
import 'package:library_arch_mvvm_modify_counter/modelQNamedServiceViewModel/intQNoServiceViewModel/IntQNoServiceViewModelUsingGetNPForIncrementAndDecrement.dart';
import 'package:library_architecture_mvvm_modify/base_model/int.dart';
import 'package:library_architecture_mvvm_modify/base_model/list_int.dart';

class IntTextWidgetListViewModel {
  @protected
  final IntQNoServiceViewModelUsingGetNPForIncrementAndDecrement<Int,ListInt<Int>> intQNoServiceViewModelUsingGetNPForIncrementAndDecrement;

  IntTextWidgetListViewModel(this.intQNoServiceViewModelUsingGetNPForIncrementAndDecrement);

  Stream<Int>? get getStreamIntUsingGetNPForIncrementAndDecrement {
    return intQNoServiceViewModelUsingGetNPForIncrementAndDecrement.getStreamIntUsingGetNPForIncrementAndDecrement;
  }

  Future<void> notifyStreamIntUsingGetNPForIncrementAndDecrementAndInGeneralZeroTask()
  async {
    await Future.delayed(const Duration(milliseconds: 100));
    intQNoServiceViewModelUsingGetNPForIncrementAndDecrement
        .notifyStreamIntUsingGetNPForIncrementAndDecrement();
  }
}