import 'package:library_architecture_mvvm_modify/base_model/interface_initialized_stream_model/i_initialized_stream_model.dart';
import 'package:library_architecture_mvvm_modify/utility/interface_stream_model/i_stream_model.dart';
import 'package:library_architecture_mvvm_modify_todo/model/notes_is_loading/list_notes_is_loading.dart';
import 'package:library_architecture_mvvm_modify_todo/model/notes_is_loading/notes_is_loading.dart';
import 'package:library_architecture_mvvm_modify_todo/utility/named_stream_model/rx_stream_model.dart';

final class InitializedStreamNotesIsLoading
    implements IInitializedStreamModel<NotesIsLoading, ListNotesIsLoading> {
  @override
  IStreamModel<NotesIsLoading, ListNotesIsLoading>? initializedStreamModel() {
    return RXStreamModel<NotesIsLoading, ListNotesIsLoading>(
        NotesIsLoading.getNotesIsLoadingForSuccess,
        ListNotesIsLoading.getListNotesIsLoadingForSuccess);
  }
}
