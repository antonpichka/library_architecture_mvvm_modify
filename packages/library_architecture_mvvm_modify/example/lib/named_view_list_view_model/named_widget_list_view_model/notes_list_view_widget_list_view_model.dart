import 'package:library_architecture_mvvm_modify_todo/model/note/note.dart';
import 'package:library_architecture_mvvm_modify_todo/model/notes_is_loading/notes_is_loading.dart';
import 'package:library_architecture_mvvm_modify_todo/model_q_named_service_view_model/note_q_sqflite_service_view_model/note_q_sqflite_service_view_model_using_delete_parameter_string_for_uuid.dart';
import 'package:library_architecture_mvvm_modify_todo/model_q_named_service_view_model/note_q_sqflite_service_view_model/note_q_sqflite_service_view_model_using_get_list_np.dart';
import 'package:library_architecture_mvvm_modify_todo/model_q_named_service_view_model/note_q_sqflite_service_view_model/note_q_sqflite_service_view_model_using_insert_parameter_note.dart';
import 'package:library_architecture_mvvm_modify_todo/model_q_named_service_view_model/note_q_sqflite_service_view_model/note_q_sqflite_service_view_model_using_update_parameter_completed_item_for_is_completed.dart';
import 'package:library_architecture_mvvm_modify_todo/model_q_there_is_state_view_model/note_option_q_there_is_state_view_model/note_option_q_there_is_state_view_model.dart';
import 'package:library_architecture_mvvm_modify_todo/model_q_there_is_state_view_model/note_q_there_is_state_view_model/note_q_there_is_state_view_model.dart';
import 'package:library_architecture_mvvm_modify_todo/model_q_there_is_state_view_model/note_sorted_q_there_is_state_view_model/note_sorted_q_there_is_state_view_model.dart';
import 'package:library_architecture_mvvm_modify_todo/model_q_there_is_state_view_model/notes_is_loading_q_there_is_state_view_model/notes_is_loading_q_there_is_state_view_model.dart';
import 'package:library_architecture_mvvm_modify_todo/utility/completed_item.dart';
import 'package:meta/meta.dart';

base class NotesListViewWidgetListViewModel {
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
  final NoteQSqfliteServiceViewModelUsingGetListNP
      noteQSqfliteServiceViewModelUsingGetListNP;
  @protected
  final NoteQSqfliteServiceViewModelUsingUpdateParameterCompletedItemForIsCompleted
      noteQSqfliteServiceViewModelUsingUpdateParameterCompletedItemForIsCompleted;
  @protected
  final NoteQSqfliteServiceViewModelUsingDeleteParameterStringForUuId
      noteQSqfliteServiceViewModelUsingDeleteParameterStringForUuId;
  @protected
  final NoteQSqfliteServiceViewModelUsingInsertParameterNote
      noteQSqfliteServiceViewModelUsingInsertParameterNote;

  NotesListViewWidgetListViewModel(
      this.noteQThereIsStateViewModel,
      this.notesIsLoadingQThereIsStateViewModel,
      this.noteSortedQThereIsStateViewModel,
      this.noteOptionQThereIsStateViewModel,
      this.noteQSqfliteServiceViewModelUsingGetListNP,
      this.noteQSqfliteServiceViewModelUsingUpdateParameterCompletedItemForIsCompleted,
      this.noteQSqfliteServiceViewModelUsingDeleteParameterStringForUuId,
      this.noteQSqfliteServiceViewModelUsingInsertParameterNote);

  Stream<NotesIsLoading?>? get getStreamNotesIsLoading {
    return notesIsLoadingQThereIsStateViewModel.getStreamNotesIsLoading;
  }

  Future<void> getListNoteFromSqfliteServiceNPAndInGeneralOneTask() async {
    notesIsLoadingQThereIsStateViewModel.getNotesIsLoading
        ?.setOneParametersNamedForNotesListViewWidget();
    await Future.delayed(const Duration(milliseconds: 100));
    notesIsLoadingQThereIsStateViewModel.notifyStreamModel();
    // 1
    final listNote = await noteQSqfliteServiceViewModelUsingGetListNP
        .getListNoteFromSqfliteServiceNP();
    if (listNote!.exceptionController.isNotEqualsNullParameterException()) {
      noteQThereIsStateViewModel.setListNoteUsingCloneListNoteForSuccess =
          listNote;
      notesIsLoadingQThereIsStateViewModel
              .getNotesIsLoading?.setTwoParametersNamedForNotesListViewWidget =
          noteQThereIsStateViewModel.getListNoteUsingCloneListNoteForSuccess!;
      noteSortedQThereIsStateViewModel
              .getNoteSorted?.setOneParametersNamedForNotesListViewWidget =
          noteQThereIsStateViewModel.getListNoteUsingCloneListNoteForSuccess!;
      noteOptionQThereIsStateViewModel
              .getNoteOption?.setOneParametersNamedForNotesListViewWidget =
          noteQThereIsStateViewModel.getListNoteUsingCloneListNoteForSuccess!;
      notesIsLoadingQThereIsStateViewModel.notifyStreamNotesIsLoading();
      noteSortedQThereIsStateViewModel.notifyStreamNoteSorted();
      noteOptionQThereIsStateViewModel.notifyStreamNoteOption();
      return;
    }
    noteQThereIsStateViewModel.setListNoteUsingCloneListNoteForSuccess =
        listNote;
    notesIsLoadingQThereIsStateViewModel
            .getNotesIsLoading?.setThreeParametersNamedForNotesListViewWidget =
        noteQThereIsStateViewModel.getListNoteUsingCloneListNoteForSuccess!;
    noteSortedQThereIsStateViewModel
            .getNoteSorted?.setTwoParametersNamedForNotesListViewWidget =
        noteQThereIsStateViewModel.getListNoteUsingCloneListNoteForSuccess!;
    noteOptionQThereIsStateViewModel
            .getNoteOption?.setTwoParametersNamedForNotesListViewWidget =
        noteQThereIsStateViewModel.getListNoteUsingCloneListNoteForSuccess!;
    notesIsLoadingQThereIsStateViewModel.notifyStreamNotesIsLoading();
    noteSortedQThereIsStateViewModel.notifyStreamNoteSorted();
    noteOptionQThereIsStateViewModel.notifyStreamNoteOption();
  }

  Future<void> deleteNoteToSqfliteServiceParameterStringAndInGeneralOneTask(
      Note? note, Function(Note lastDeletedNote) callbackSuccess) async {
    // 1
    final result =
        await noteQSqfliteServiceViewModelUsingDeleteParameterStringForUuId
            .deleteNoteToSqfliteServiceParameterString(
                note!.getThreeParametersNamedForNotesListViewWidget!);
    if (result!.exceptionController.isNotEqualsNullParameterException()) {
      return;
    }
    noteQThereIsStateViewModel
        .getListNote?.setOneParametersNamedForNotesListViewWidget = note;
    notesIsLoadingQThereIsStateViewModel.getNotesIsLoading
        ?.setFourParametersNamedForNotesListViewWidget(
            noteSortedQThereIsStateViewModel
                .getNoteSorted!.getOneParametersNamedForNotesListViewWidget!,
            noteQThereIsStateViewModel
                .getListNoteUsingCloneListNoteForSuccess!);
    noteSortedQThereIsStateViewModel
            .getNoteSorted?.setThreeParametersNamedForNotesListViewWidget =
        noteQThereIsStateViewModel.getListNoteUsingCloneListNoteForSuccess!;
    noteOptionQThereIsStateViewModel
            .getNoteOption?.setThreeParametersNamedForNotesListViewWidget =
        noteQThereIsStateViewModel.getListNoteUsingCloneListNoteForSuccess!;
    notesIsLoadingQThereIsStateViewModel.notifyStreamNotesIsLoading();
    noteSortedQThereIsStateViewModel.notifyStreamNoteSorted();
    noteOptionQThereIsStateViewModel.notifyStreamNoteOption();
    callbackSuccess(note);
  }

  Future<void> insertNoteToSqfliteServiceParameterStringAndInGeneralOneTask(
      Note? note) async {
    // 1
    final result = await noteQSqfliteServiceViewModelUsingInsertParameterNote
        .insertNoteToSqfliteServiceParameterNoteUsingFBDS(note!);
    if (result!.exceptionController.isNotEqualsNullParameterException()) {
      return;
    }
    noteQThereIsStateViewModel
        .getListNote?.setTwoParametersNamedForNotesListViewWidget = note;
    notesIsLoadingQThereIsStateViewModel.getNotesIsLoading
        ?.setFiveParametersNamedForNotesListViewWidget(
            noteSortedQThereIsStateViewModel
                .getNoteSorted!.getTwoParametersNamedForNotesListViewWidget!,
            noteQThereIsStateViewModel
                .getListNoteUsingCloneListNoteForSuccess!);
    noteSortedQThereIsStateViewModel
            .getNoteSorted?.setFourParametersNamedForNotesListViewWidget =
        noteQThereIsStateViewModel.getListNoteUsingCloneListNoteForSuccess!;
    noteOptionQThereIsStateViewModel
            .getNoteOption?.setFourParametersNamedForNotesListViewWidget =
        noteQThereIsStateViewModel.getListNoteUsingCloneListNoteForSuccess!;
    notesIsLoadingQThereIsStateViewModel.notifyStreamNotesIsLoading();
    noteSortedQThereIsStateViewModel.notifyStreamNoteSorted();
    noteOptionQThereIsStateViewModel.notifyStreamNoteOption();
  }

  Future<void>
      updateNoteToSqfliteServiceParameterCompletedItemAndInGeneralOneTask(
          Note? note, bool? isCheckBox) async {
    note?.setOneParametersNamedForNotesListViewWidget = isCheckBox!;
    // 1
    final result =
        await noteQSqfliteServiceViewModelUsingUpdateParameterCompletedItemForIsCompleted
            .updateNoteToSqfliteServiceParameterCompletedItem(
                getCompletedItemForUpdateNoteToSqfliteServiceParameterCompletedItemAndInGeneralOneTask(
                    note));
    if (result!.exceptionController.isNotEqualsNullParameterException()) {
      return;
    }
    noteQThereIsStateViewModel
        .getListNote?.setThreeParametersNamedForNotesListViewWidget = note!;
    notesIsLoadingQThereIsStateViewModel.getNotesIsLoading
        ?.setSixParametersNamedForNotesListViewWidget(
            noteSortedQThereIsStateViewModel
                .getNoteSorted!.getThreeParametersNamedForNotesListViewWidget!,
            noteQThereIsStateViewModel
                .getListNoteUsingCloneListNoteForSuccess!);
    noteSortedQThereIsStateViewModel
            .getNoteSorted?.setFiveParametersNamedForNotesListViewWidget =
        noteQThereIsStateViewModel.getListNoteUsingCloneListNoteForSuccess!;
    noteOptionQThereIsStateViewModel
            .getNoteOption?.setFiveParametersNamedForNotesListViewWidget =
        noteQThereIsStateViewModel.getListNoteUsingCloneListNoteForSuccess!;
    notesIsLoadingQThereIsStateViewModel.notifyStreamNotesIsLoading();
    noteSortedQThereIsStateViewModel.notifyStreamNoteSorted();
    noteOptionQThereIsStateViewModel.notifyStreamNoteOption();
  }

  @protected
  CompletedItem
      getCompletedItemForUpdateNoteToSqfliteServiceParameterCompletedItemAndInGeneralOneTask(
          Note? note) {
    return CompletedItem(note?.uuId ?? "", note?.isCompleted ?? false);
  }
}
