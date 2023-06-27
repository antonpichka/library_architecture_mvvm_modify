import 'package:library_architecture_mvvm_modify/base_model_q_there_is_state_view_model/base_model_q_there_is_state_view_model.dart';
import 'package:library_architecture_mvvm_modify_todo/model/note/list_note.dart';
import 'package:library_architecture_mvvm_modify_todo/model/note/note.dart';

base class NoteQThereIsStateViewModel<T extends Note, Y extends ListNote<T>>
    extends BaseModelQThereIsStateViewModel<T, Y> {
  NoteQThereIsStateViewModel(super.iInitializedStreamModel);

  T? get getNote {
    return getModel;
  }

  Y? get getListNote {
    return getListModel;
  }

  Y? get getListNoteUsingCloneListNoteForSuccess {
    return getListModel?.cloneListNoteForSuccess() as Y?;
  }

  set setNote(T note) {
    setModel = note;
  }

  set setListNoteUsingCloneListNoteForSuccess(Y listNote) {
    setListModel = listNote.cloneListNoteForSuccess() as Y?;
  }
}
