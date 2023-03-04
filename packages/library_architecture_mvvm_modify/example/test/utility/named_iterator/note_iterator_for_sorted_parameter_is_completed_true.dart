import 'package:library_architecture_mvvm_modify_todo/model/note/note.dart';
import 'package:library_architecture_mvvm_modify_todo/utility/named_iterator/note_iterator_for_sorted_parameter_is_completed_true.dart';
import 'package:test/test.dart';

void main() {
  test('noteIteratorForSortedParameterIsCompletedTrue success', () {
    final listNote = <Note>[
      Note.success("Q", "Q", true),
      Note.success("W", "W", false),
      Note.success("E", "E", true),
      Note.success("R", "R", true),
      Note.success("T", "T", false)
    ];
    final noteIteratorForSortedParameterIsCompletedTrue =
        NoteIteratorForSortedParameterIsCompletedTrue();
    noteIteratorForSortedParameterIsCompletedTrue.listModel = listNote;
    final sortedListModelParameterListModel =
        noteIteratorForSortedParameterIsCompletedTrue
            .getSortedListModelParameterListModel;
    expect(sortedListModelParameterListModel.length, 3);
  });
  test('noteIteratorForSortedParameterIsCompletedTrue success two', () {
    final listNote = <Note>[Note.success("T", "T", true)];
    final noteIteratorForSortedParameterIsCompletedTrue =
        NoteIteratorForSortedParameterIsCompletedTrue();
    noteIteratorForSortedParameterIsCompletedTrue.listModel = listNote;
    final sortedListModelParameterListModel =
        noteIteratorForSortedParameterIsCompletedTrue
            .getSortedListModelParameterListModel;
    expect(sortedListModelParameterListModel.length, 1);
  });
}
