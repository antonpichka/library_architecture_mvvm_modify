import 'package:library_architecture_mvvm_modify/base_model_q_there_is_state_view_model/base_model_q_there_is_state_view_model.dart';
import 'package:library_architecture_mvvm_modify_todo/model/note_sorted/list_note_sorted.dart';
import 'package:library_architecture_mvvm_modify_todo/model/note_sorted/note_sorted.dart';

class NoteSortedQThereIsStateViewModel<T extends NoteSorted,Y extends ListNoteSorted<T>>
    extends BaseModelQThereIsStateViewModel<T,Y>
{
  NoteSortedQThereIsStateViewModel(super.iInitializedStreamModel);

  Stream<T?>? get getStreamNoteSorted {
    return getStreamModel;
  }

  T? get getNoteSorted {
    return getModel;
  }

  void notifyStreamNoteSorted() {
    notifyStreamModel();
  }
}