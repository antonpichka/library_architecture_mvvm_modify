import 'package:library_architecture_mvvm_modify/base_model/interface_initialized_stream_model/i_initialized_stream_model.dart';
import 'package:library_architecture_mvvm_modify/utility/interface_stream_model/i_stream_model.dart';
import 'package:library_architecture_mvvm_modify_todo/model/note/list_note.dart';
import 'package:library_architecture_mvvm_modify_todo/model/note/note.dart';
import 'package:library_architecture_mvvm_modify_todo/utility/named_stream_model/rx_stream_model.dart';

class InitializedStreamNote
    implements IInitializedStreamModel<Note,ListNote>
{
  @override
  IStreamModel<Note,ListNote>? initializedStreamModel() {
    return RXStreamModel<Note,ListNote>(Note.getNoteForSuccess,ListNote.getListNoteForSuccess);
  }
}