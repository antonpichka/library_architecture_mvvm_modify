import 'package:library_architecture_mvvm_modify_todo/model/note/note.dart';
import 'package:test/test.dart';

void main() {
  group('get success', () {
    test('getOneParametersNamedForNotesListViewWidget', () {
      final note = Note.getNoteForSuccessWhereUnitTest;
      expect(note.getOneParametersNamedForNotesListViewWidget,"");
    });
    test('getTwoParametersNamedForNotesListViewWidget', () {
      final note = Note.getNoteForSuccessWhereUnitTest;
      expect(note.getTwoParametersNamedForNotesListViewWidget,"");
    });
    test('getThreeParametersNamedForNotesListViewWidget', () {
      final note = Note.getNoteForSuccessWhereUnitTest;
      expect(note.getThreeParametersNamedForNotesListViewWidget,"");
    });
  });
  group('set success', () {
    test('setOneParametersNamedForNotesListViewWidget', () {
      final note = Note.getNoteForSuccessWhereUnitTest;
      note.setOneParametersNamedForNotesListViewWidget = true;
      expect(note.isCompleted,true);
    });
  });
  group('is success', () {
    test('isEmptyByTrimParameterName', () {
      final note = Note.getNoteForSuccessWhereUnitTest;
      expect(note.isEmptyByTrimParameterName(),true);
    });
    test('isOneParametersNamedForNotesListViewWidget', () {
      final note = Note.getNoteForSuccessWhereUnitTest;
      expect(note.isOneParametersNamedForNotesListViewWidget(),false);
    });
    test('isTwoParametersNamedForNotesListViewWidget', () {
      final note = Note.getNoteForSuccessWhereUnitTest;
      expect(note.isTwoParametersNamedForNotesListViewWidget(),true);
    });
  });
}