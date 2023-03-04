import 'package:library_architecture_mvvm_modify/base_model/interface_initialized_stream_model/i_initialized_stream_model.dart';
import 'package:library_architecture_mvvm_modify/utility/interface_stream_model/i_stream_model.dart';
import 'package:library_architecture_mvvm_modify_todo/model/note_sorted/list_note_sorted.dart';
import 'package:library_architecture_mvvm_modify_todo/model/note_sorted/note_sorted.dart';
import 'package:library_architecture_mvvm_modify_todo/utility/named_stream_model/rx_stream_model.dart';

class InitializedStreamNoteSorted
    implements IInitializedStreamModel<NoteSorted, ListNoteSorted> {
  @override
  IStreamModel<NoteSorted, ListNoteSorted>? initializedStreamModel() {
    return RXStreamModel<NoteSorted, ListNoteSorted>(
        NoteSorted.getNoteSortedForSuccess,
        ListNoteSorted.getListNoteSortedForSuccess);
  }
}
