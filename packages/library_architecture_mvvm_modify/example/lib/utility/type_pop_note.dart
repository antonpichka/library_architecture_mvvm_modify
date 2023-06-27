import 'package:library_architecture_mvvm_modify_todo/model/note/note.dart';

enum EnumTypePopNote {
  addPopNote,
  editPopNote,
  deletePopNote;
}

base class TypePopNote {
  final EnumTypePopNote enumTypePopNote;
  final Note note;

  TypePopNote(this.enumTypePopNote, this.note);
}
