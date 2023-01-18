import 'package:library_architecture_mvvm_modify/base_model_q_there_is_state_view_model/base_model_q_there_is_state_view_model.dart';
import 'package:library_architecture_mvvm_modify_todo/model/notes_is_loading/list_notes_is_loading.dart';
import 'package:library_architecture_mvvm_modify_todo/model/notes_is_loading/notes_is_loading.dart';

class NotesIsLoadingQThereIsStateViewModel<T extends NotesIsLoading,Y extends ListNotesIsLoading<T>>
    extends BaseModelQThereIsStateViewModel<T,Y>
{
  NotesIsLoadingQThereIsStateViewModel(super.iInitializedStreamModel);

  Stream<T?>? get getStreamNotesIsLoading {
    return getStreamModel;
  }

  T? get getNotesIsLoading {
    return getModel;
  }

  Y? get getListNotesIsLoading {
    return getListModel;
  }

  set setNotesIsLoading(T notesIsLoading) {
    setModel = notesIsLoading;
  }

  set setListNotesIsLoading(Y listNotesIsLoading) {
    setListModel = listNotesIsLoading;
  }
}