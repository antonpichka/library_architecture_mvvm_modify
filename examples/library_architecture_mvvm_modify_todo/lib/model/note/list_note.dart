import 'package:library_architecture_mvvm_modify/base_model/base_list_model.dart';
import 'package:library_architecture_mvvm_modify_todo/model/note/note.dart';
import 'package:library_architecture_mvvm_modify_todo/model/note_sorted/note_sorted.dart';
import 'package:library_architecture_mvvm_modify_todo/utility/named_iterator/note_iterator_for_sorted_parameter_is_completed_false.dart';
import 'package:library_architecture_mvvm_modify_todo/utility/named_iterator/note_iterator_for_sorted_parameter_is_completed_true.dart';
import 'package:meta/meta.dart';

class ListNote<T extends Note>
    extends BaseListModel<T>
{
  ListNote.success(List<T>? listModel) : super.success(listModel)
  {
    mapEnumNamedForIteratorAndIterator = {
      EnumNoteSorted.isCompleted : NoteIteratorForSortedParameterIsCompletedTrue<T>(),
      EnumNoteSorted.isNotCompleted : NoteIteratorForSortedParameterIsCompletedFalse<T>()
    };
  }
  ListNote.exception(super.exception) : super.exception();

  static ListNote get getListNoteForSuccess => ListNote.success([]);
  @visibleForTesting
  static ListNote get getListNoteForSuccessWhereUnitTest => ListNote.success([
    Note.successWhereIsExistsParameterUuid("","","",false),
    Note.successWhereIsExistsParameterUuid("","","",false)]);

  ListNote? cloneListNoteForSuccess() {
    return ListNote.success(listModel?.toList());
  }

  int? get getIteratorNoteWhereIsCompletedEqualsTrueParameterListModel {
    int iteratorNoteWhereIsCompletedEqualsTrue = 0;
    for(T note in listModel!) {
      if(!(note.isCompleted ?? false)) {
        continue;
      }
      iteratorNoteWhereIsCompletedEqualsTrue++;
    }
    return iteratorNoteWhereIsCompletedEqualsTrue;
  }

  int? get getIteratorNoteWhereIsCompletedEqualsFalseParameterListModel {
    int iteratorNoteWhereIsCompletedEqualsFalse = 0;
    for(T note in listModel!) {
      if(note.isCompleted ?? false) {
        continue;
      }
      iteratorNoteWhereIsCompletedEqualsFalse++;
    }
    return iteratorNoteWhereIsCompletedEqualsFalse;
  }

  set setOneParametersNamedForNotesListViewWidget(T note) {
    deleteToListModel(note);
  }

  set setTwoParametersNamedForNotesListViewWidget(T note) {
    insertToListModel(note);
  }

  set setThreeParametersNamedForNotesListViewWidget(T note) {
    updateToListModel(note);
  }

  set setOneParametersNamedForNotesOverviewOptionsButtonWidget(bool isCompleted) {
    for(T note in listModel!) {
      note.isCompleted = isCompleted;
    }
  }
}