import 'package:library_architecture_mvvm_modify_todo/model/note_sorted/note_sorted.dart';
import 'package:library_architecture_mvvm_modify_todo/model_q_there_is_state_view_model/note_q_there_is_state_view_model/note_q_there_is_state_view_model.dart';
import 'package:library_architecture_mvvm_modify_todo/model_q_there_is_state_view_model/note_sorted_q_there_is_state_view_model/note_sorted_q_there_is_state_view_model.dart';
import 'package:library_architecture_mvvm_modify_todo/model_q_there_is_state_view_model/notes_is_loading_q_there_is_state_view_model/notes_is_loading_q_there_is_state_view_model.dart';
import 'package:meta/meta.dart';

base class NotesOverviewFilterButtonWidgetListViewModel {
  @protected
  final NoteQThereIsStateViewModel noteQThereIsStateViewModel;
  @protected
  final NotesIsLoadingQThereIsStateViewModel
      notesIsLoadingQThereIsStateViewModel;
  @protected
  final NoteSortedQThereIsStateViewModel noteSortedQThereIsStateViewModel;

  NotesOverviewFilterButtonWidgetListViewModel(
      this.noteQThereIsStateViewModel,
      this.notesIsLoadingQThereIsStateViewModel,
      this.noteSortedQThereIsStateViewModel);

  Stream<NoteSorted?>? get getStreamNoteSorted {
    return noteSortedQThereIsStateViewModel.getStreamNoteSorted;
  }

  void
      setOneParametersNamedForNotesOverviewFilterButtonWidgetByNoteSortedAndInGeneralZeroTask(
          EnumNoteSorted enumNoteSorted) {
    if (notesIsLoadingQThereIsStateViewModel.getNotesIsLoading
            ?.isOneParametersNamedForNotesOverviewFilterButtonWidget() ??
        false) {
      return;
    }
    noteSortedQThereIsStateViewModel.getNoteSorted
            ?.setOneParametersNamedForNotesOverviewFilterButtonWidget =
        enumNoteSorted;
    noteSortedQThereIsStateViewModel.notifyStreamNoteSorted();
    notesIsLoadingQThereIsStateViewModel.getNotesIsLoading
        ?.setOneParametersNamedForNotesOverviewFilterButtonWidget();
    notesIsLoadingQThereIsStateViewModel.notifyStreamNotesIsLoading();
    notesIsLoadingQThereIsStateViewModel.getNotesIsLoading
        ?.setTwoParametersNamedForNotesOverviewFilterButtonWidget(
            enumNoteSorted,
            noteQThereIsStateViewModel
                .getListNoteUsingCloneListNoteForSuccess!);
    notesIsLoadingQThereIsStateViewModel.notifyStreamNotesIsLoading();
  }
}
