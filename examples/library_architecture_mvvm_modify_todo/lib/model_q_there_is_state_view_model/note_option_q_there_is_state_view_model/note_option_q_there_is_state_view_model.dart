import 'package:library_architecture_mvvm_modify/base_model_q_there_is_state_view_model/base_model_q_there_is_state_view_model.dart';
import 'package:library_architecture_mvvm_modify_todo/model/note_option/list_note_option.dart';
import 'package:library_architecture_mvvm_modify_todo/model/note_option/note_option.dart';

class NoteOptionQThereIsStateViewModel<T extends NoteOption,Y extends ListNoteOption<T>>
    extends BaseModelQThereIsStateViewModel<T,Y>
{
  NoteOptionQThereIsStateViewModel(super.iInitializedStreamModel);

  Stream<T?>? get getStreamNoteOption {
    return getStreamModel;
  }

  T? get getNoteOption {
    return getModel;
  }

  void notifyStreamNoteOption() {
    notifyStreamModel();
  }
}