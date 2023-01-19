import 'package:library_architecture_mvvm_modify/base_model/base_model.dart';
import 'package:library_architecture_mvvm_modify_todo/model/note/list_note.dart';
import 'package:library_architecture_mvvm_modify_todo/model/note/note.dart';
import 'package:library_architecture_mvvm_modify_todo/model/note_sorted/note_sorted.dart';

enum EnumNotesIsLoadingForNotesListViewWidget {
  isLoading,
  exception,
  isEmpty,
  success
}

class NotesIsLoading
    extends BaseModel
{
  bool? isLoading;
  ListNote? listNote;

  NotesIsLoading.success(this.isLoading,this.listNote) : super.success("");
  NotesIsLoading.exception(super.exception) : super.exception();

  static NotesIsLoading get getNotesIsLoadingForSuccess => NotesIsLoading.success(false,ListNote.getListNoteForSuccess);

  EnumNotesIsLoadingForNotesListViewWidget get getEnumNotesIsLoadingForNotesListViewWidget {
    if(isLoading ?? false) {
      return EnumNotesIsLoadingForNotesListViewWidget.isLoading;
    }
    if(exceptionController.isNotEqualsNullParameterException()) {
      return EnumNotesIsLoadingForNotesListViewWidget.exception;
    }
    if(listNote
        ?.listModel
        ?.isEmpty ?? false)
    {
      return EnumNotesIsLoadingForNotesListViewWidget.isEmpty;
    }
    return EnumNotesIsLoadingForNotesListViewWidget.success;
  }

  String? get getOneParametersNamedForNotesListViewWidget {
    return exceptionController.getMessageForViewParameterException;
  }

  void setOneParametersNamedForNotesListViewWidget() {
    isLoading = true;
  }

  set setTwoParametersNamedForNotesListViewWidget(ListNote listNote) {
    isLoading = false;
    this.listNote = listNote;
    exceptionController = listNote.exceptionController;
  }

  set setThreeParametersNamedForNotesListViewWidget(ListNote listNote) {
    isLoading = false;
    this.listNote = listNote;
    exceptionController = listNote.exceptionController;
  }

  set setFourParametersNamedForNotesListViewWidget(Note note) {
    listNote?.deleteToListModel(note);
  }

  set setFiveParametersNamedForNotesListViewWidget(Note note) {
    listNote?.insertToListModel(note);
  }

  set setSixParametersNamedForNotesListViewWidget(Note note) {
    listNote?.updateToListModel(note);
  }

  void setOneParametersNamedForNotesOverviewFilterButtonWidget() {
    isLoading = true;
  }

  void setTwoParametersNamedForNotesOverviewFilterButtonWidget(
      EnumNoteSorted enumNoteSorted,
      ListNote listNote)
  {
    isLoading = false;
    _setFromEnumNoteSortedAndListNoteParametersListNoteUsingIteratorForListNote(enumNoteSorted,listNote);
  }

  void _setFromEnumNoteSortedAndListNoteParametersListNoteUsingIteratorForListNote(
      EnumNoteSorted enumNoteSorted,
      ListNote listNote)
  {
    if(enumNoteSorted == EnumNoteSorted.all) {
      this.listNote = listNote;
      return;
    }
    this.listNote?.iteratorForListModel(enumNoteSorted);
  }
}