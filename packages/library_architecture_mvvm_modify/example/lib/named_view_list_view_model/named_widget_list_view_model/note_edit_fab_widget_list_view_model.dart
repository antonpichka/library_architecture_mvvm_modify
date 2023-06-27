import 'package:library_architecture_mvvm_modify/base_model_q_there_is_state_view_model/strings_q_there_is_state_view_model.dart';
import 'package:library_architecture_mvvm_modify_todo/model/note/note.dart';
import 'package:library_architecture_mvvm_modify_todo/model_q_named_service_view_model/note_q_sqflite_service_view_model/note_q_sqflite_service_view_model_using_update_parameter_note.dart';
import 'package:library_architecture_mvvm_modify_todo/model_q_there_is_state_view_model/note_q_there_is_state_view_model/note_q_there_is_state_view_model.dart';
import 'package:meta/meta.dart';

base class NoteEditFabWidgetListViewModel {
  @protected
  final StringsQThereIsStateViewModel stringsQThereIsStateViewModelForTitle;
  @protected
  final StringsQThereIsStateViewModel
      stringsQThereIsStateViewModelForDescription;
  @protected
  final NoteQThereIsStateViewModel noteQThereIsStateViewModel;
  @protected
  final NoteQSqfliteServiceViewModelUsingUpdateParameterNote
      noteQSqfliteServiceViewModelUsingUpdateParameterNote;

  NoteEditFabWidgetListViewModel(
      this.stringsQThereIsStateViewModelForTitle,
      this.stringsQThereIsStateViewModelForDescription,
      this.noteQThereIsStateViewModel,
      this.noteQSqfliteServiceViewModelUsingUpdateParameterNote);

  Future<void>
      updateNoteToSqfliteServiceParameterNoteUsingFBDSAndInGeneralOneTask(
          Function(String message) functionForException,
          Function() functionForSuccess) async {
    // 1
    final result = await noteQSqfliteServiceViewModelUsingUpdateParameterNote
        .updateNoteToSqfliteServiceParameterNoteUsingFBDS(
            getNoteForUpdateNoteToSqfliteServiceParameterNoteUsingFBDSAndInGeneralOneTask());
    if (result!.exceptionController.isNotEqualsNullParameterException()) {
      functionForException(
          result.exceptionController.getMessageForViewParameterException ?? "");
      return;
    }
    functionForSuccess();
  }

  @protected
  Note
      getNoteForUpdateNoteToSqfliteServiceParameterNoteUsingFBDSAndInGeneralOneTask() {
    noteQThereIsStateViewModel.getNote?.name =
        stringsQThereIsStateViewModelForTitle.getStrings?.field ?? "";
    noteQThereIsStateViewModel.getNote?.description =
        stringsQThereIsStateViewModelForDescription.getStrings?.field ?? "";
    return noteQThereIsStateViewModel.getNote!;
  }
}
