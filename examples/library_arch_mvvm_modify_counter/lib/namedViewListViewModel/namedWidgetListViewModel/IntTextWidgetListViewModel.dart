import 'package:flutter/foundation.dart';
import 'package:library_arch_mvvm_modify_counter/modelQThereIsStateViewModel/intQThereIsStateViewModel/IntQThereIsStateViewModelForIncrementAndDecrement.dart';
import 'package:library_architecture_mvvm_modify/base_model/int.dart';
import 'package:library_architecture_mvvm_modify/base_model/list_int.dart';

class IntTextWidgetListViewModel {
  @protected
  final IntQThereIsStateViewModelForIncrementAndDecrement<Int,ListInt<Int>> intQThereIsStateViewModelForIncrementAndDecrement;

  IntTextWidgetListViewModel(this.intQThereIsStateViewModelForIncrementAndDecrement);

  Stream<Int>? get getStreamIntForIncrementAndDecrement {
    return intQThereIsStateViewModelForIncrementAndDecrement.getStreamIntForIncrementAndDecrement;
  }

  Future<void> notifyStreamIntForIncrementAndDecrementAndInGeneralZeroTask()
  async {
    await Future.delayed(const Duration(milliseconds: 100));
    intQThereIsStateViewModelForIncrementAndDecrement
        .notifyStreamIntForIncrementAndDecrement();
  }
}