import 'package:library_architecture_mvvm_modify_todo/model/note_option/note_option.dart';
import 'package:library_architecture_mvvm_modify_todo/model_q_named_service_view_model/note_q_sqflite_service_view_model/note_q_sqflite_service_view_model_using_update_list_parameter_bool_for_is_completed.dart';
import 'package:library_architecture_mvvm_modify_todo/model_q_there_is_state_view_model/note_option_q_there_is_state_view_model/note_option_q_there_is_state_view_model.dart';
import 'package:library_architecture_mvvm_modify_todo/model_q_there_is_state_view_model/note_q_there_is_state_view_model/note_q_there_is_state_view_model.dart';
import 'package:library_architecture_mvvm_modify_todo/model_q_there_is_state_view_model/note_sorted_q_there_is_state_view_model/note_sorted_q_there_is_state_view_model.dart';
import 'package:library_architecture_mvvm_modify_todo/model_q_there_is_state_view_model/notes_is_loading_q_there_is_state_view_model/notes_is_loading_q_there_is_state_view_model.dart';
import 'package:meta/meta.dart';

base class NotesOverviewOptionsButtonWidgetListViewModel {
  @protected
  final NoteQThereIsStateViewModel noteQThereIsStateViewModel;
  @protected
  final NotesIsLoadingQThereIsStateViewModel
      notesIsLoadingQThereIsStateViewModel;
  @protected
  final NoteSortedQThereIsStateViewModel noteSortedQThereIsStateViewModel;
  @protected
  final NoteOptionQThereIsStateViewModel noteOptionQThereIsStateViewModel;
  @protected
  final NoteQSqfliteServiceViewModelUsingUpdateListParameterBoolForIsCompleted
      noteQSqfliteServiceViewModelUsingUpdateListParameterBoolForIsCompleted;

  NotesOverviewOptionsButtonWidgetListViewModel(
      this.noteQThereIsStateViewModel,
      this.notesIsLoadingQThereIsStateViewModel,
      this.noteSortedQThereIsStateViewModel,
      this.noteOptionQThereIsStateViewModel,
      this.noteQSqfliteServiceViewModelUsingUpdateListParameterBoolForIsCompleted);

  Stream<NoteOption?>? get getStreamNoteOption {
    return noteOptionQThereIsStateViewModel.getStreamNoteOption;
  }

  Future<void>
      callMethodUpdateListNoteToSqfliteServiceParameterBoolAndInGeneralOneTask(
          EnumNoteOption enumNoteOption) async {
    if (notesIsLoadingQThereIsStateViewModel.getNotesIsLoading
            ?.isOneParametersNamedForNotesOverviewOptionsButtonWidget() ??
        false) {
      return;
    }
    noteOptionQThereIsStateViewModel.getNoteOption
            ?.setOneParametersNamedForNotesOverviewOptionsButtonWidget =
        enumNoteOption;
    noteOptionQThereIsStateViewModel.notifyStreamNoteOption();
    notesIsLoadingQThereIsStateViewModel.getNotesIsLoading
        ?.setOneParametersNamedForNotesOverviewOptionsButtonWidget();
    notesIsLoadingQThereIsStateViewModel.notifyStreamNotesIsLoading();
    if (noteOptionQThereIsStateViewModel.getNoteOption
            ?.isFourParametersNamedForNotesOverviewOptionsButtonWidget() ??
        false) {
      await updateListNoteToSqfliteServiceParameterBoolAndInGeneralOneTask(
          false);
      return;
    }
    if (noteOptionQThereIsStateViewModel.getNoteOption
            ?.isFiveParametersNamedForNotesOverviewOptionsButtonWidget() ??
        false) {
      await updateListNoteToSqfliteServiceParameterBoolAndInGeneralOneTask(
          false);
      return;
    }
    await updateListNoteToSqfliteServiceParameterBoolAndInGeneralOneTask(true);
  }

  @protected
  Future<void> updateListNoteToSqfliteServiceParameterBoolAndInGeneralOneTask(
      bool isCompleted) async {
    // 1
    final result =
        await noteQSqfliteServiceViewModelUsingUpdateListParameterBoolForIsCompleted
            .updateListNoteToSqfliteServiceParameterBool(isCompleted);
    if (result!.exceptionController.isNotEqualsNullParameterException()) {
      notesIsLoadingQThereIsStateViewModel.getNotesIsLoading
          ?.setTwoParametersNamedForNotesOverviewOptionsButtonWidget();
      notesIsLoadingQThereIsStateViewModel.notifyStreamNotesIsLoading();
      return;
    }
    noteQThereIsStateViewModel.getListNote
            ?.setOneParametersNamedForNotesOverviewOptionsButtonWidget =
        isCompleted;
    notesIsLoadingQThereIsStateViewModel.getNotesIsLoading
        ?.setThreeParametersNamedForNotesOverviewOptionsButtonWidget(
            noteSortedQThereIsStateViewModel.getNoteSorted!
                .getOneParametersNamedForNotesOverviewOptionsButtonWidget!,
            noteQThereIsStateViewModel
                .getListNoteUsingCloneListNoteForSuccess!);
    noteOptionQThereIsStateViewModel.getNoteOption
            ?.setTwoParametersNamedForNotesOverviewOptionsButtonWidget =
        noteQThereIsStateViewModel.getListNoteUsingCloneListNoteForSuccess!;
    notesIsLoadingQThereIsStateViewModel.notifyStreamNotesIsLoading();
    noteOptionQThereIsStateViewModel.notifyStreamNoteOption();
  }
}
