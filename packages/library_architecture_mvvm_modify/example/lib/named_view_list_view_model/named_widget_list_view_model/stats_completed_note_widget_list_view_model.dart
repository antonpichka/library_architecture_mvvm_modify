import 'package:library_architecture_mvvm_modify/base_model/int.dart';
import 'package:library_architecture_mvvm_modify/base_model_q_there_is_state_view_model/int_q_there_is_state_view_model.dart';
import 'package:meta/meta.dart';

class StatsCompletedNoteWidgetListViewModel {
  @protected
  final IntQThereIsStateViewModel
      intQThereIsStateViewModelForIteratorNoteWhereIsCompletedEqualsTrue;

  StatsCompletedNoteWidgetListViewModel(
      this.intQThereIsStateViewModelForIteratorNoteWhereIsCompletedEqualsTrue);

  Stream<Int?>? get getStreamInt {
    return intQThereIsStateViewModelForIteratorNoteWhereIsCompletedEqualsTrue
        .getStreamInt;
  }
}
