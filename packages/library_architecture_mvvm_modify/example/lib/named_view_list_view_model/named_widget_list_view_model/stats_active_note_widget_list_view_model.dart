import 'package:library_architecture_mvvm_modify/base_model/int.dart';
import 'package:library_architecture_mvvm_modify/base_model_q_there_is_state_view_model/int_q_there_is_state_view_model.dart';
import 'package:meta/meta.dart';

base class StatsActiveNoteWidgetListViewModel {
  @protected
  final IntQThereIsStateViewModel
      intQThereIsStateViewModelForIteratorNoteWhereIsCompletedEqualsFalse;

  StatsActiveNoteWidgetListViewModel(
      this.intQThereIsStateViewModelForIteratorNoteWhereIsCompletedEqualsFalse);

  Stream<Int?>? get getStreamInt {
    return intQThereIsStateViewModelForIteratorNoteWhereIsCompletedEqualsFalse
        .getStreamInt;
  }
}
