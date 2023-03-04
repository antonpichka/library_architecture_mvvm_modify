import 'package:library_architecture_mvvm_modify_todo/model/note/list_note.dart';
import 'package:library_architecture_mvvm_modify_todo/model/note_option/note_option.dart';
import 'package:test/test.dart';

void main() {
  group('get success', () {
    test('getOneParametersNamedForNotesOverviewOptionsButtonWidget', () {
      final noteOption = NoteOption.getNoteOptionForSuccessWhereUnitTest;
      expect(
          noteOption.getOneParametersNamedForNotesOverviewOptionsButtonWidget,
          EnumNoteOption.toggleAll);
    });
  });
  group('set success', () {
    test('setOneParametersNamedForNotesListViewWidget', () {
      final noteOption = NoteOption.getNoteOptionForSuccessWhereUnitTest;
      noteOption.setOneParametersNamedForNotesListViewWidget =
          ListNote.getListNoteForSuccessWhereUnitTest;
      expect(noteOption.listNote!.listModel!.length, 2);
    });
    test('setTwoParametersNamedForNotesListViewWidget', () {
      final noteOption = NoteOption.getNoteOptionForSuccessWhereUnitTest;
      noteOption.setTwoParametersNamedForNotesListViewWidget =
          ListNote.getListNoteForSuccessWhereUnitTest;
      expect(noteOption.listNote!.listModel!.length, 2);
    });
    test('setThreeParametersNamedForNotesListViewWidget', () {
      final noteOption = NoteOption.getNoteOptionForSuccessWhereUnitTest;
      noteOption.setThreeParametersNamedForNotesListViewWidget =
          ListNote.getListNoteForSuccessWhereUnitTest;
      expect(noteOption.listNote!.listModel!.length, 2);
    });
    test('setFourParametersNamedForNotesListViewWidget', () {
      final noteOption = NoteOption.getNoteOptionForSuccessWhereUnitTest;
      noteOption.setFourParametersNamedForNotesListViewWidget =
          ListNote.getListNoteForSuccessWhereUnitTest;
      expect(noteOption.listNote!.listModel!.length, 2);
    });
    test('setFiveParametersNamedForNotesListViewWidget', () {
      final noteOption = NoteOption.getNoteOptionForSuccessWhereUnitTest;
      noteOption.setFiveParametersNamedForNotesListViewWidget =
          ListNote.getListNoteForSuccessWhereUnitTest;
      expect(noteOption.listNote!.listModel!.length, 2);
    });
    test('setOneParametersNamedForNotesOverviewOptionsButtonWidget', () {
      final noteOption = NoteOption.getNoteOptionForSuccessWhereUnitTest;
      noteOption.setOneParametersNamedForNotesOverviewOptionsButtonWidget =
          EnumNoteOption.clearCompleted;
      expect(noteOption.enumNoteOption, EnumNoteOption.clearCompleted);
    });
    test('setTwoParametersNamedForNotesOverviewOptionsButtonWidget', () {
      final noteOption = NoteOption.getNoteOptionForSuccessWhereUnitTest;
      noteOption.setTwoParametersNamedForNotesOverviewOptionsButtonWidget =
          ListNote.getListNoteForSuccessWhereUnitTest;
      expect(noteOption.listNote!.listModel!.length, 2);
    });
  });
  group('is success', () {
    test('isOneParametersNamedForNotesOverviewOptionsButtonWidget', () {
      final noteOption = NoteOption.getNoteOptionForSuccessWhereUnitTest;
      expect(
          noteOption.isOneParametersNamedForNotesOverviewOptionsButtonWidget(),
          true);
    });
    test('isTwoParametersNamedForNotesOverviewOptionsButtonWidget', () {
      final noteOption = NoteOption.getNoteOptionForSuccessWhereUnitTest;
      expect(
          noteOption.isTwoParametersNamedForNotesOverviewOptionsButtonWidget(),
          false);
    });
    test('isThreeParametersNamedForNotesOverviewOptionsButtonWidget', () {
      final noteOption = NoteOption.getNoteOptionForSuccessWhereUnitTest;
      expect(
          noteOption
              .isThreeParametersNamedForNotesOverviewOptionsButtonWidget(),
          false);
    });
    test('isFourParametersNamedForNotesOverviewOptionsButtonWidget', () {
      final noteOption = NoteOption.getNoteOptionForSuccessWhereUnitTest;
      expect(
          noteOption.isFourParametersNamedForNotesOverviewOptionsButtonWidget(),
          false);
    });
    test('isFiveParametersNamedForNotesOverviewOptionsButtonWidget', () {
      final noteOption = NoteOption.getNoteOptionForSuccessWhereUnitTest;
      expect(
          noteOption.isFiveParametersNamedForNotesOverviewOptionsButtonWidget(),
          false);
    });
  });
}
