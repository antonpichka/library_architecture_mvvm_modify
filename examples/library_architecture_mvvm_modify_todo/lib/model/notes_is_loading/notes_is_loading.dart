import 'package:library_architecture_mvvm_modify/base_model/base_model.dart';
import 'package:library_architecture_mvvm_modify_todo/model/note/note.dart';

class NotesIsLoading
    extends BaseModel
{
  bool? isLoading;
  List<Note>? listNote;
  Note? lastDeletedNoteFromListNote;

  NotesIsLoading.success(this.isLoading,this.listNote,this.lastDeletedNoteFromListNote) : super.success("");
  NotesIsLoading.exception(super.exception) : super.exception();

  static NotesIsLoading get getNotesIsLoadingForSuccess => NotesIsLoading.success(false,[],Note.getNoteForSuccess);
}