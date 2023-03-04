import 'package:library_architecture_mvvm_modify_todo/model/note/list_note.dart';
import 'package:library_architecture_mvvm_modify_todo/model/note_sorted/note_sorted.dart';
import 'package:test/test.dart';

void main() {
  group('get success', () {
    test('getEnumNoteSortedForNotesOverviewFilterButtonWidget', () {
      final noteSorted = NoteSorted.getNoteSortedForSuccessWhereUnitTest;
      expect(noteSorted.getEnumNoteSortedForNotesOverviewFilterButtonWidget,
          EnumNoteSortedForNotesOverviewFilterButtonWidget.success);
    });
    test('getOneParametersNamedForNotesOverviewFilterButtonWidget', () {
      final noteSorted = NoteSorted.getNoteSortedForSuccessWhereUnitTest;
      expect(noteSorted.getOneParametersNamedForNotesOverviewFilterButtonWidget,
          EnumNoteSorted.all);
    });
    test('getOneParametersNamedForNotesOverviewOptionsButtonWidget', () {
      final noteSorted = NoteSorted.getNoteSortedForSuccessWhereUnitTest;
      expect(
          noteSorted.getOneParametersNamedForNotesOverviewOptionsButtonWidget,
          EnumNoteSorted.all);
    });
    test('getOneParametersNamedForNotesListViewWidget', () {
      final noteSorted = NoteSorted.getNoteSortedForSuccessWhereUnitTest;
      expect(noteSorted.getOneParametersNamedForNotesListViewWidget,
          EnumNoteSorted.all);
    });
    test('getTwoParametersNamedForNotesListViewWidget', () {
      final noteSorted = NoteSorted.getNoteSortedForSuccessWhereUnitTest;
      expect(noteSorted.getTwoParametersNamedForNotesListViewWidget,
          EnumNoteSorted.all);
    });
    test('getThreeParametersNamedForNotesListViewWidget', () {
      final noteSorted = NoteSorted.getNoteSortedForSuccessWhereUnitTest;
      expect(noteSorted.getThreeParametersNamedForNotesListViewWidget,
          EnumNoteSorted.all);
    });
  });
  group('set success', () {
    test('setOneParametersNamedForNotesOverviewFilterButtonWidget', () {
      final noteSorted = NoteSorted.getNoteSortedForSuccessWhereUnitTest;
      noteSorted.setOneParametersNamedForNotesOverviewFilterButtonWidget =
          EnumNoteSorted.isCompleted;
      expect(noteSorted.enumNoteSorted, EnumNoteSorted.isCompleted);
    });
    test('setOneParametersNamedForNotesListViewWidget', () {
      final noteSorted = NoteSorted.getNoteSortedForSuccessWhereUnitTest;
      noteSorted.setOneParametersNamedForNotesListViewWidget =
          ListNote.getListNoteForSuccessWhereUnitTest;
      expect(noteSorted.isEmptyListNote, false);
    });
    test('setTwoParametersNamedForNotesListViewWidget', () {
      final noteSorted = NoteSorted.getNoteSortedForSuccessWhereUnitTest;
      noteSorted.setTwoParametersNamedForNotesListViewWidget =
          ListNote.getListNoteForSuccessWhereUnitTest;
      expect(noteSorted.isEmptyListNote, false);
    });
    test('setThreeParametersNamedForNotesListViewWidget', () {
      final noteSorted = NoteSorted.getNoteSortedForSuccessWhereUnitTest;
      noteSorted.setThreeParametersNamedForNotesListViewWidget =
          ListNote.getListNoteForSuccessWhereUnitTest;
      expect(noteSorted.isEmptyListNote, false);
    });
    test('setFourParametersNamedForNotesListViewWidget', () {
      final noteSorted = NoteSorted.getNoteSortedForSuccessWhereUnitTest;
      noteSorted.setFourParametersNamedForNotesListViewWidget =
          ListNote.getListNoteForSuccessWhereUnitTest;
      expect(noteSorted.isEmptyListNote, false);
    });
    test('setFiveParametersNamedForNotesListViewWidget', () {
      final noteSorted = NoteSorted.getNoteSortedForSuccessWhereUnitTest;
      noteSorted.setFiveParametersNamedForNotesListViewWidget =
          ListNote.getListNoteForSuccessWhereUnitTest;
      expect(noteSorted.isEmptyListNote, false);
    });
  });
}
