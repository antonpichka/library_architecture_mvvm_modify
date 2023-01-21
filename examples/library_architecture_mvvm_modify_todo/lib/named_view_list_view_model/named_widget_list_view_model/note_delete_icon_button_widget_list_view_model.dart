import 'package:library_architecture_mvvm_modify_todo/model_q_named_service_view_model/note_q_sqflite_service_view_model/note_q_sqflite_service_view_model_using_delete_parameter_string_for_uuid.dart';
import 'package:library_architecture_mvvm_modify_todo/model_q_there_is_state_view_model/note_q_there_is_state_view_model/note_q_there_is_state_view_model.dart';
import 'package:meta/meta.dart';

class NoteDeleteIconButtonWidgetListViewModel {
  @protected
  final NoteQThereIsStateViewModel noteQThereIsStateViewModel;
  @protected
  final NoteQSqfliteServiceViewModelUsingDeleteParameterStringForUuId noteQSqfliteServiceViewModelUsingDeleteParameterStringForUuId;

  NoteDeleteIconButtonWidgetListViewModel(
      this.noteQThereIsStateViewModel,
      this.noteQSqfliteServiceViewModelUsingDeleteParameterStringForUuId);

  Future<void> deleteNoteToSqfliteServiceParameterStringAndInGeneralOneTask(
      Function(String message) functionForException,
      Function() functionForSuccess)
  async {
    // 1
    final result = await noteQSqfliteServiceViewModelUsingDeleteParameterStringForUuId
        .deleteNoteToSqfliteServiceParameterString(getStrForDeleteNoteToSqfliteServiceParameterStringAndInGeneralOneTask());
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
  String getStrForDeleteNoteToSqfliteServiceParameterStringAndInGeneralOneTask() {
    return noteQThereIsStateViewModel.getNote?.uuId ?? "";
  }
}