import 'package:library_architecture_mvvm_modify/base_model_q_there_is_state_view_model/strings_q_there_is_state_view_model.dart';
import 'package:library_architecture_mvvm_modify_todo/model/note/note.dart';
import 'package:library_architecture_mvvm_modify_todo/model_q_named_service_view_model/note_q_sqflite_service_view_model/note_q_sqflite_service_view_model_using_insert_parameter_note.dart';
import 'package:meta/meta.dart';

class NoteFabWidgetListViewModel {
  @protected
  final StringsQThereIsStateViewModel stringsQThereIsStateViewModelForTitle;
  @protected
  final StringsQThereIsStateViewModel stringsQThereIsStateViewModelForDescription;
  @protected
  final NoteQSqfliteServiceViewModelUsingInsertParameterNote noteQSqfliteServiceViewModelUsingInsertParameterNote;

  NoteFabWidgetListViewModel(
      this.stringsQThereIsStateViewModelForTitle,
      this.stringsQThereIsStateViewModelForDescription,
      this.noteQSqfliteServiceViewModelUsingInsertParameterNote);

  Future<void> insertNoteToSqfliteServiceParameterNoteUsingFBDSAndInGeneralOneTask(
      Function(String message) functionForException,
      Function() functionForSuccess)
  async {
    // 1
    final result = await noteQSqfliteServiceViewModelUsingInsertParameterNote
        .insertNoteToSqfliteServiceParameterNoteUsingFBDS(getNoteForInsertNoteToSqfliteServiceParameterNoteUsingFBDSAndInGeneralOneTask());
    if(result
        !.exceptionController
        .isNotEqualsNullParameterException())
    {
      functionForException(result
          .exceptionController
          .getMessageForViewParameterException ?? "");
      return;
    }
    functionForSuccess();
  }

  @protected
  Note getNoteForInsertNoteToSqfliteServiceParameterNoteUsingFBDSAndInGeneralOneTask() {
    return Note.success(
        stringsQThereIsStateViewModelForTitle.getStrings?.field,
        stringsQThereIsStateViewModelForDescription.getStrings?.field,
        false);
  }
}