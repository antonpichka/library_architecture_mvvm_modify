import 'package:library_architecture_mvvm_modify/base_named_view_list_view_model/base_named_view_list_view_model.dart';
import 'package:library_architecture_mvvm_modify_todo/model/note/i_initialized_stream_note/initialized_stream_note.dart';
import 'package:library_architecture_mvvm_modify_todo/model/note_option/i_initialized_note_option/initialized_stream_note_option.dart';
import 'package:library_architecture_mvvm_modify_todo/model/note_sorted/i_initialized_stream_note_sorted/initialized_stream_note_sorted.dart';
import 'package:library_architecture_mvvm_modify_todo/model/notes_is_loading/i_initialized_stream_notes_is_loading/initialized_stream_notes_is_loading.dart';
import 'package:library_architecture_mvvm_modify_todo/model_q_named_service_view_model/note_q_sqflite_service_view_model/note_q_sqflite_service_view_model_using_delete_parameter_string_for_uuid.dart';
import 'package:library_architecture_mvvm_modify_todo/model_q_named_service_view_model/note_q_sqflite_service_view_model/note_q_sqflite_service_view_model_using_get_list_np.dart';
import 'package:library_architecture_mvvm_modify_todo/model_q_named_service_view_model/note_q_sqflite_service_view_model/note_q_sqflite_service_view_model_using_insert_parameter_note.dart';
import 'package:library_architecture_mvvm_modify_todo/model_q_named_service_view_model/note_q_sqflite_service_view_model/note_q_sqflite_service_view_model_using_update_list_parameter_bool_for_is_completed.dart';
import 'package:library_architecture_mvvm_modify_todo/model_q_named_service_view_model/note_q_sqflite_service_view_model/note_q_sqflite_service_view_model_using_update_parameter_completed_item_for_is_completed.dart';
import 'package:library_architecture_mvvm_modify_todo/model_q_there_is_state_view_model/note_option_q_there_is_state_view_model/note_option_q_there_is_state_view_model.dart';
import 'package:library_architecture_mvvm_modify_todo/model_q_there_is_state_view_model/note_q_there_is_state_view_model/note_q_there_is_state_view_model.dart';
import 'package:library_architecture_mvvm_modify_todo/model_q_there_is_state_view_model/note_sorted_q_there_is_state_view_model/note_sorted_q_there_is_state_view_model.dart';
import 'package:library_architecture_mvvm_modify_todo/model_q_there_is_state_view_model/notes_is_loading_q_there_is_state_view_model/notes_is_loading_q_there_is_state_view_model.dart';
import 'package:library_architecture_mvvm_modify_todo/named_view_list_view_model/named_widget_list_view_model/notes_list_view_widget_list_view_model.dart';
import 'package:library_architecture_mvvm_modify_todo/named_view_list_view_model/named_widget_list_view_model/notes_overview_filter_button_widget_list_view_model.dart';
import 'package:library_architecture_mvvm_modify_todo/named_view_list_view_model/named_widget_list_view_model/notes_overview_options_button_widget_list_view_model.dart';

class NotesOverviewViewListViewModel
    extends BaseNamedViewListViewModel
{
  // ModelQThereIsStateViewModel
  final _noteQThereIsStateViewModel =
  NoteQThereIsStateViewModel(InitializedStreamNote());
  final _notesIsLoadingQThereIsStateViewModel =
  NotesIsLoadingQThereIsStateViewModel(InitializedStreamNotesIsLoading());
  final _noteSortedQThereIsStateViewModel =
  NoteSortedQThereIsStateViewModel(InitializedStreamNoteSorted());
  final _noteOptionQThereIsStateViewModel =
  NoteOptionQThereIsStateViewModel(InitializedStreamNoteOption());

  // ModelQNamedServiceViewModel
  final _noteQSqfliteServiceViewModelUsingGetListNP =
  NoteQSqfliteServiceViewModelUsingGetListNP();
  final _noteQSqfliteServiceViewModelUsingUpdateParameterCompletedItemForIsCompleted =
  NoteQSqfliteServiceViewModelUsingUpdateParameterCompletedItemForIsCompleted();
  final _noteQSqfliteServiceViewModelUsingDeleteParameterStringForUuId =
  NoteQSqfliteServiceViewModelUsingDeleteParameterStringForUuId();
  final _noteQSqfliteServiceViewModelUsingInsertParameterNote =
  NoteQSqfliteServiceViewModelUsingInsertParameterNote();
  final _noteQSqfliteServiceViewModelUsingUpdateListParameterBoolForIsCompleted =
  NoteQSqfliteServiceViewModelUsingUpdateListParameterBoolForIsCompleted();

  // NamedWidgetListViewModel
  late final NotesListViewWidgetListViewModel notesListViewWidgetListViewModel;
  late final NotesOverviewFilterButtonWidgetListViewModel notesOverviewFilterButtonWidgetListViewModel;
  late final NotesOverviewOptionsButtonWidgetListViewModel notesOverviewOptionsButtonWidgetListViewModel;

  NotesOverviewViewListViewModel() {
    notesListViewWidgetListViewModel = NotesListViewWidgetListViewModel(
        _noteQThereIsStateViewModel,
        _notesIsLoadingQThereIsStateViewModel,
        _noteSortedQThereIsStateViewModel,
        _noteOptionQThereIsStateViewModel,
        _noteQSqfliteServiceViewModelUsingGetListNP,
        _noteQSqfliteServiceViewModelUsingUpdateParameterCompletedItemForIsCompleted,
        _noteQSqfliteServiceViewModelUsingDeleteParameterStringForUuId,
        _noteQSqfliteServiceViewModelUsingInsertParameterNote);
    notesOverviewFilterButtonWidgetListViewModel = NotesOverviewFilterButtonWidgetListViewModel(
        _noteQThereIsStateViewModel,
        _notesIsLoadingQThereIsStateViewModel,
        _noteSortedQThereIsStateViewModel);
    notesOverviewOptionsButtonWidgetListViewModel = NotesOverviewOptionsButtonWidgetListViewModel(
        _noteQThereIsStateViewModel,
        _notesIsLoadingQThereIsStateViewModel,
        _noteSortedQThereIsStateViewModel,
        _noteOptionQThereIsStateViewModel,
        _noteQSqfliteServiceViewModelUsingUpdateListParameterBoolForIsCompleted);
  }

  @override
  void dispose() {
    _noteQThereIsStateViewModel.dispose();
    _notesIsLoadingQThereIsStateViewModel.dispose();
    _noteSortedQThereIsStateViewModel.dispose();
    _noteOptionQThereIsStateViewModel.dispose();
  }
}