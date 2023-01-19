import 'package:library_architecture_mvvm_modify/utility/base_iterator.dart';
import 'package:library_architecture_mvvm_modify_todo/model/note/note.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_list_model.dart';
import 'package:library_architecture_mvvm_modify_todo/model/note_sorted/note_sorted.dart';
import 'package:library_architecture_mvvm_modify_todo/utility/named_iterator/note_iterator_for_sorted_parameter_is_completed_false.dart';
import 'package:library_architecture_mvvm_modify_todo/utility/named_iterator/note_iterator_for_sorted_parameter_is_completed_true.dart';

class ListNote<T extends Note>
    extends BaseListModel<T>
{
  ListNote.success(List<T>? listModel) : super.success(listModel,
      {
        EnumNoteSorted.isCompleted : NoteIteratorForSortedParameterIsCompletedTrue() as BaseIterator<T>,
        EnumNoteSorted.isNotCompleted : NoteIteratorForSortedParameterIsCompletedFalse() as BaseIterator<T>
      });
  ListNote.exception(super.exception) : super.exception();

  static ListNote get getListNoteForSuccess => ListNote.success([]);

  ListNote? cloneListNoteForSuccess() {
    return ListNote.success(listModel);
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
}