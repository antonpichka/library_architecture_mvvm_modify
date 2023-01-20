import 'package:library_architecture_mvvm_modify/base_model/interface_initialized_stream_model/initialized_stream_int.dart';
import 'package:library_architecture_mvvm_modify/base_model_q_there_is_state_view_model/int_q_there_is_state_view_model.dart';
import 'package:library_architecture_mvvm_modify/base_named_view_list_view_model/base_named_view_list_view_model.dart';
import 'package:library_architecture_mvvm_modify_todo/model_q_named_service_view_model/note_q_sqflite_service_view_model/note_q_sqflite_service_view_model_using_get_list_np.dart';
import 'package:library_architecture_mvvm_modify_todo/named_view_list_view_model/named_widget_list_view_model/stats_active_note_widget_list_view_model.dart';
import 'package:library_architecture_mvvm_modify_todo/named_view_list_view_model/named_widget_list_view_model/stats_completed_note_widget_list_view_model.dart';

class StatsViewListViewModel
    extends BaseNamedViewListViewModel
{
  // ModelQThereIsStateViewModel
  final _intQThereIsStateViewModelForIteratorNoteWhereIsCompletedEqualsTrue =
  IntQThereIsStateViewModel(InitializedStreamInt());
  final _intQThereIsStateViewModelForIteratorNoteWhereIsCompletedEqualsFalse =
  IntQThereIsStateViewModel(InitializedStreamInt());

  // ModelQNamedServiceViewModel
  final _noteQSqfliteServiceViewModelUsingGetListNP =
  NoteQSqfliteServiceViewModelUsingGetListNP();

  // NamedWidgetListViewModel
  late final StatsCompletedNoteWidgetListViewModel statsCompletedNoteWidgetListViewModel;
  late final StatsActiveNoteWidgetListViewModel statsActiveNoteWidgetListViewModel;

  StatsViewListViewModel() {
    statsCompletedNoteWidgetListViewModel = StatsCompletedNoteWidgetListViewModel(
        _intQThereIsStateViewModelForIteratorNoteWhereIsCompletedEqualsTrue);
    statsActiveNoteWidgetListViewModel = StatsActiveNoteWidgetListViewModel(
        _intQThereIsStateViewModelForIteratorNoteWhereIsCompletedEqualsFalse);
  }

  @override
  void dispose() {
    _intQThereIsStateViewModelForIteratorNoteWhereIsCompletedEqualsTrue.dispose();
    _intQThereIsStateViewModelForIteratorNoteWhereIsCompletedEqualsFalse.dispose();
  }

  Future<void> getListNoteFromSqfliteServiceNPAndInGeneralOneTask()
  async {
    // 1
    final listNote = await _noteQSqfliteServiceViewModelUsingGetListNP
        .getListNoteFromSqfliteServiceNP();
    if(listNote
        !.exceptionController
        .isNotEqualsNullParameterException())
    {
      return;
    }
    _intQThereIsStateViewModelForIteratorNoteWhereIsCompletedEqualsTrue
        .getInt
        ?.field = listNote.getIteratorNoteWhereIsCompletedEqualsTrueParameterListModel!;
    _intQThereIsStateViewModelForIteratorNoteWhereIsCompletedEqualsFalse
        .getInt
        ?.field = listNote.getIteratorNoteWhereIsCompletedEqualsFalseParameterListModel!;
    _intQThereIsStateViewModelForIteratorNoteWhereIsCompletedEqualsTrue
        .notifyStreamInt();
    _intQThereIsStateViewModelForIteratorNoteWhereIsCompletedEqualsFalse
        .notifyStreamInt();
  }
}