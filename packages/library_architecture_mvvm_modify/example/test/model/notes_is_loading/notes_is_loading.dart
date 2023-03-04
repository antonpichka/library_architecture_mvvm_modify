import 'package:library_architecture_mvvm_modify/utility/exception_controller.dart';
import 'package:library_architecture_mvvm_modify_todo/model/note/list_note.dart';
import 'package:library_architecture_mvvm_modify_todo/model/note_sorted/note_sorted.dart';
import 'package:library_architecture_mvvm_modify_todo/model/notes_is_loading/notes_is_loading.dart';
import 'package:test/test.dart';

void main() {
  group('get success', () {
    test('getEnumNotesIsLoadingForNotesListViewWidget', () {
      final notesIsLoading =
          NotesIsLoading.getNotesIsLoadingForSuccessWhereUnitTest;
      expect(notesIsLoading.getEnumNotesIsLoadingForNotesListViewWidget,
          EnumNotesIsLoadingForNotesListViewWidget.success);
    });
    test('getOneParametersNamedForNotesListViewWidget', () {
      final notesIsLoading =
          NotesIsLoading.getNotesIsLoadingForSuccessWhereUnitTest;
      expect(notesIsLoading.getOneParametersNamedForNotesListViewWidget, null);
    });
  });
  group('set success', () {
    test('setOneParametersNamedForNotesListViewWidget', () {
      final notesIsLoading =
          NotesIsLoading.getNotesIsLoadingForSuccessWhereUnitTest;
      notesIsLoading.setOneParametersNamedForNotesListViewWidget();
      expect(notesIsLoading.isLoading, true);
    });
    test('setTwoParametersNamedForNotesListViewWidget', () {
      final notesIsLoading =
          NotesIsLoading.getNotesIsLoadingForSuccessWhereUnitTest;
      notesIsLoading.setTwoParametersNamedForNotesListViewWidget =
          ListNote.getListNoteForSuccessWhereUnitTest;
      expect(notesIsLoading.isLoading, false);
      expect(notesIsLoading.listNote!.listModel!.length, 2);
      expect(notesIsLoading.exceptionController.enumWhatIsTheException,
          EnumWhatIsTheException.noException);
    });
    test('setThreeParametersNamedForNotesListViewWidget', () {
      final notesIsLoading =
          NotesIsLoading.getNotesIsLoadingForSuccessWhereUnitTest;
      notesIsLoading.setThreeParametersNamedForNotesListViewWidget =
          ListNote.getListNoteForSuccessWhereUnitTest;
      expect(notesIsLoading.isLoading, false);
      expect(notesIsLoading.listNote!.listModel!.length, 2);
      expect(notesIsLoading.exceptionController.enumWhatIsTheException,
          EnumWhatIsTheException.noException);
    });
    test('setFourParametersNamedForNotesListViewWidget', () {
      final notesIsLoading =
          NotesIsLoading.getNotesIsLoadingForSuccessWhereUnitTest;
      notesIsLoading.setFourParametersNamedForNotesListViewWidget(
          EnumNoteSorted.isCompleted,
          ListNote.getListNoteForSuccessWhereUnitTest);
      expect(notesIsLoading.listNote!.listModel!.length, 0);
    });
    test('setFiveParametersNamedForNotesListViewWidget', () {
      final notesIsLoading =
          NotesIsLoading.getNotesIsLoadingForSuccessWhereUnitTest;
      notesIsLoading.setFiveParametersNamedForNotesListViewWidget(
          EnumNoteSorted.isCompleted,
          ListNote.getListNoteForSuccessWhereUnitTest);
      expect(notesIsLoading.listNote!.listModel!.length, 0);
    });
    test('setSixParametersNamedForNotesListViewWidget', () {
      final notesIsLoading =
          NotesIsLoading.getNotesIsLoadingForSuccessWhereUnitTest;
      notesIsLoading.setSixParametersNamedForNotesListViewWidget(
          EnumNoteSorted.isCompleted,
          ListNote.getListNoteForSuccessWhereUnitTest);
      expect(notesIsLoading.listNote!.listModel!.length, 0);
    });
    test('setOneParametersNamedForNotesOverviewFilterButtonWidget', () {
      final notesIsLoading =
          NotesIsLoading.getNotesIsLoadingForSuccessWhereUnitTest;
      notesIsLoading.setOneParametersNamedForNotesOverviewFilterButtonWidget();
      expect(notesIsLoading.isLoading, true);
    });
    test('setTwoParametersNamedForNotesOverviewFilterButtonWidget', () {
      final notesIsLoading =
          NotesIsLoading.getNotesIsLoadingForSuccessWhereUnitTest;
      notesIsLoading.setTwoParametersNamedForNotesOverviewFilterButtonWidget(
          EnumNoteSorted.isCompleted,
          ListNote.getListNoteForSuccessWhereUnitTest);
      expect(notesIsLoading.isLoading, false);
      expect(notesIsLoading.listNote!.listModel!.length, 0);
    });
    test('setOneParametersNamedForNotesOverviewOptionsButtonWidget', () {
      final notesIsLoading =
          NotesIsLoading.getNotesIsLoadingForSuccessWhereUnitTest;
      notesIsLoading.setOneParametersNamedForNotesOverviewOptionsButtonWidget();
      expect(notesIsLoading.isLoading, true);
    });
    test('setTwoParametersNamedForNotesOverviewOptionsButtonWidget', () {
      final notesIsLoading =
          NotesIsLoading.getNotesIsLoadingForSuccessWhereUnitTest;
      notesIsLoading.setTwoParametersNamedForNotesOverviewOptionsButtonWidget();
      expect(notesIsLoading.isLoading, false);
    });
    test('setThreeParametersNamedForNotesOverviewOptionsButtonWidget', () {
      final notesIsLoading =
          NotesIsLoading.getNotesIsLoadingForSuccessWhereUnitTest;
      notesIsLoading.setThreeParametersNamedForNotesOverviewOptionsButtonWidget(
          EnumNoteSorted.isCompleted,
          ListNote.getListNoteForSuccessWhereUnitTest);
      expect(notesIsLoading.isLoading, false);
      expect(notesIsLoading.listNote!.listModel!.length, 0);
    });
  });
  group('is success', () {
    test('isOneParametersNamedForNotesOverviewOptionsButtonWidget', () {
      final notesIsLoading =
          NotesIsLoading.getNotesIsLoadingForSuccessWhereUnitTest;
      expect(
          notesIsLoading
              .isOneParametersNamedForNotesOverviewOptionsButtonWidget(),
          false);
    });
    test('isOneParametersNamedForNotesOverviewFilterButtonWidget', () {
      final notesIsLoading =
          NotesIsLoading.getNotesIsLoadingForSuccessWhereUnitTest;
      expect(
          notesIsLoading
              .isOneParametersNamedForNotesOverviewFilterButtonWidget(),
          false);
    });
  });
}
