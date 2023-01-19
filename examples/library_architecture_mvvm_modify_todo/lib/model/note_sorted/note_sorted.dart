import 'package:library_architecture_mvvm_modify/base_model/base_model.dart';
import 'package:library_architecture_mvvm_modify_todo/model/note/list_note.dart';

enum EnumNoteSortedForNotesOverviewFilterButtonWidget {
  isEmptyListNote,
  success
}

enum EnumNoteSorted {
  all,
  isCompleted,
  isNotCompleted
}

class NoteSorted
    extends BaseModel
{
  EnumNoteSorted? enumNoteSorted;
  bool? isEmptyListNote;

  NoteSorted.success(this.enumNoteSorted,this.isEmptyListNote) : super.success("");
  NoteSorted.exception(super.exception) : super.exception();

  static NoteSorted get getNoteSortedForSuccess => NoteSorted.success(EnumNoteSorted.all,false);

  EnumNoteSortedForNotesOverviewFilterButtonWidget get getEnumNoteSortedForNotesOverviewFilterButtonWidget {
    if(isEmptyListNote ?? false) {
      return EnumNoteSortedForNotesOverviewFilterButtonWidget.isEmptyListNote;
    }
    return EnumNoteSortedForNotesOverviewFilterButtonWidget.success;
  }

  EnumNoteSorted? get getOneParametersNamedForNotesOverviewFilterButtonWidget {
    return enumNoteSorted;
  }

  set setOneParametersNamedForNotesOverviewFilterButtonWidget(EnumNoteSorted enumNoteSorted) {
    this.enumNoteSorted = enumNoteSorted;
  }

  set setOneParametersNamedForNotesListViewWidget(ListNote listNote) {
    _setFromListNoteParameterIsEmptyListNote = listNote;
  }

  set setTwoParametersNamedForNotesListViewWidget(ListNote listNote) {
    _setFromListNoteParameterIsEmptyListNote = listNote;
  }

  set setThreeParametersNamedForNotesListViewWidget(ListNote listNote) {
    _setFromListNoteParameterIsEmptyListNote = listNote;
  }

  set setFourParametersNamedForNotesListViewWidget(ListNote listNote) {
    _setFromListNoteParameterIsEmptyListNote = listNote;
  }

  set setFiveParametersNamedForNotesListViewWidget(ListNote listNote) {
    _setFromListNoteParameterIsEmptyListNote = listNote;
  }

  set _setFromListNoteParameterIsEmptyListNote(ListNote listNote) {
    if(listNote
        .listModel
        !.isEmpty)
    {
      isEmptyListNote = true;
      return;
    }
    isEmptyListNote = false;
  }
}