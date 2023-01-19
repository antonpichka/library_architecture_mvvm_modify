import 'package:library_architecture_mvvm_modify/base_model/interface_initialized_stream_model/i_initialized_stream_model.dart';
import 'package:library_architecture_mvvm_modify/utility/interface_stream_model/i_stream_model.dart';
import 'package:library_architecture_mvvm_modify_todo/model/note_option/list_note_option.dart';
import 'package:library_architecture_mvvm_modify_todo/model/note_option/note_option.dart';
import 'package:library_architecture_mvvm_modify_todo/utility/named_stream_model/rx_stream_model.dart';

class InitializedStreamNoteOption
    implements IInitializedStreamModel<NoteOption,ListNoteOption>
{
  @override
  IStreamModel<NoteOption,ListNoteOption>? initializedStreamModel() {
    return RXStreamModel<NoteOption,ListNoteOption>(NoteOption.getNoteOptionForSuccess,ListNoteOption.getListNoteOptionForSuccess);
  }
}