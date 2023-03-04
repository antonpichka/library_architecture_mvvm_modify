import 'package:library_architecture_mvvm_modify/base_model/base_model.dart';
import 'package:library_architecture_mvvm_modify_todo/model/note/list_note.dart';
import 'package:library_architecture_mvvm_modify_todo/model/note/note.dart';
import 'package:meta/meta.dart';

enum EnumNoteOption { toggleAll, clearCompleted }

class NoteOption extends BaseModel {
  EnumNoteOption? enumNoteOption;
  ListNote? listNote;

  NoteOption.success(this.enumNoteOption, this.listNote) : super.success("");
  NoteOption.exception(super.exception) : super.exception();

  static NoteOption get getNoteOptionForSuccess => NoteOption.success(
      EnumNoteOption.toggleAll, ListNote.getListNoteForSuccess);
  @visibleForTesting
  static NoteOption get getNoteOptionForSuccessWhereUnitTest =>
      NoteOption.success(
          EnumNoteOption.toggleAll,
          ListNote.success([
            Note.successWhereIsExistsParameterUuid("", "", "", false),
            Note.successWhereIsExistsParameterUuid("", "", "", false)
          ]));

  EnumNoteOption? get getOneParametersNamedForNotesOverviewOptionsButtonWidget {
    return enumNoteOption;
  }

  set setOneParametersNamedForNotesListViewWidget(ListNote listNote) {
    _setFromListNoteParameterListNote = listNote;
  }

  set setTwoParametersNamedForNotesListViewWidget(ListNote listNote) {
    _setFromListNoteParameterListNote = listNote;
  }

  set setThreeParametersNamedForNotesListViewWidget(ListNote listNote) {
    _setFromListNoteParameterListNote = listNote;
  }

  set setFourParametersNamedForNotesListViewWidget(ListNote listNote) {
    _setFromListNoteParameterListNote = listNote;
  }

  set setFiveParametersNamedForNotesListViewWidget(ListNote listNote) {
    _setFromListNoteParameterListNote = listNote;
  }

  set setOneParametersNamedForNotesOverviewOptionsButtonWidget(
      EnumNoteOption enumNoteOption) {
    this.enumNoteOption = enumNoteOption;
  }

  set setTwoParametersNamedForNotesOverviewOptionsButtonWidget(
      ListNote listNote) {
    _setFromListNoteParameterListNote = listNote;
  }

  set _setFromListNoteParameterListNote(ListNote listNote) {
    this.listNote = listNote;
  }

  bool? isOneParametersNamedForNotesOverviewOptionsButtonWidget() {
    return listNote?.listModel?.isNotEmpty;
  }

  bool? isTwoParametersNamedForNotesOverviewOptionsButtonWidget() {
    return _isCountNoteParameterIsCompletedEqualsLengthByListModelParameterListNote();
  }

  bool? isThreeParametersNamedForNotesOverviewOptionsButtonWidget() {
    bool isTrueParameterCompletedByNoteFromListNote = false;
    for (Note note in listNote?.listModel ?? List.empty()) {
      if (!(note.isCompleted ?? false)) {
        continue;
      }
      isTrueParameterCompletedByNoteFromListNote = true;
      break;
    }
    return (listNote?.listModel?.isNotEmpty ?? false) &&
        isTrueParameterCompletedByNoteFromListNote;
  }

  bool? isFourParametersNamedForNotesOverviewOptionsButtonWidget() {
    return enumNoteOption == EnumNoteOption.clearCompleted;
  }

  bool? isFiveParametersNamedForNotesOverviewOptionsButtonWidget() {
    return _isCountNoteParameterIsCompletedEqualsLengthByListModelParameterListNote();
  }

  bool?
      _isCountNoteParameterIsCompletedEqualsLengthByListModelParameterListNote() {
    int countNoteParameterIsCompleted = 0;
    for (Note note in listNote?.listModel ?? List.empty()) {
      if (!(note.isCompleted ?? false)) {
        continue;
      }
      countNoteParameterIsCompleted++;
    }
    return countNoteParameterIsCompleted == listNote?.listModel?.length;
  }
}
