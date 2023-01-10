import 'package:library_architecture_mvvm_modify/base_model/int.dart';
import 'package:library_architecture_mvvm_modify/base_model_q_there_is_state_view_model/int_q_there_is_state_view_model.dart';
import 'package:meta/meta.dart';

class IntTextWidgetListViewModel {
  @protected
  final IntQThereIsStateViewModel intQThereIsStateViewModelForIncrementAndDecrement;

  IntTextWidgetListViewModel(this.intQThereIsStateViewModelForIncrementAndDecrement);

  Stream<Int?>? get getStreamInt {
    return intQThereIsStateViewModelForIncrementAndDecrement.getStreamInt;
  }

  Future<void> notifyStreamIntAndInGeneralZeroTask()
  async {
    await Future.delayed(const Duration(milliseconds: 100));
    intQThereIsStateViewModelForIncrementAndDecrement.notifyStreamInt();
  }
}