import 'package:library_architecture_mvvm_modify_todo/model/note/list_note.dart';
import 'package:library_architecture_mvvm_modify_todo/model/note/note.dart';
import 'package:test/test.dart';

void main() {
  group('get success', () {
    test('getIteratorNoteWhereIsCompletedEqualsTrueParameterListModel', () {
      final listNote = ListNote.getListNoteForSuccessWhereUnitTest;
      expect(
          listNote.getIteratorNoteWhereIsCompletedEqualsTrueParameterListModel,
          0);
    });
    test('getIteratorNoteWhereIsCompletedEqualsFalseParameterListModel', () {
      final listNote = ListNote.getListNoteForSuccessWhereUnitTest;
      expect(
          listNote.getIteratorNoteWhereIsCompletedEqualsFalseParameterListModel,
          2);
    });
  });
  group('set success', () {
    test('setOneParametersNamedForNotesListViewWidget', () {
      final listNote = ListNote.getListNoteForSuccessWhereUnitTest;
      listNote.setOneParametersNamedForNotesListViewWidget =
          Note.getNoteForSuccessWhereUnitTest;
      expect(listNote.listModel!.length, 0);
    });
    test('setTwoParametersNamedForNotesListViewWidget', () {
      final listNote = ListNote.getListNoteForSuccessWhereUnitTest;
      listNote.setTwoParametersNamedForNotesListViewWidget =
          Note.getNoteForSuccessWhereUnitTest;
      expect(listNote.listModel!.length, 3);
    });
    test('setThreeParametersNamedForNotesListViewWidget', () {
      final listNote = ListNote.getListNoteForSuccessWhereUnitTest;
      listNote.setThreeParametersNamedForNotesListViewWidget =
          Note.getNoteForSuccessWhereUnitTest;
      expect(listNote.listModel!.length, 2);
    });
    test('setOneParametersNamedForNotesOverviewOptionsButtonWidget', () {
      final listNote = ListNote.getListNoteForSuccessWhereUnitTest;
      listNote.setOneParametersNamedForNotesOverviewOptionsButtonWidget = true;
      expect(listNote.listModel![1].isCompleted, true);
    });
  });
}
