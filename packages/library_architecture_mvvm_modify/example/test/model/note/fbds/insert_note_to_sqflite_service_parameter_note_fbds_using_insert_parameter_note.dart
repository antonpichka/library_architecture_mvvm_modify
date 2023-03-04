import 'package:library_architecture_mvvm_modify/utility/exception_controller.dart';
import 'package:library_architecture_mvvm_modify_todo/model/note/fbds/insert_note_to_sqflite_service_parameter_note_fbds_using_insert_parameter_note.dart';
import 'package:library_architecture_mvvm_modify_todo/model/note/note.dart';
import 'package:test/test.dart';

void main() {
  test(
      'insertNoteToSqfliteServiceParameterNoteFBDSUsingInsertParameterNote success',
      () {
    final fbds =
        InsertNoteToSqfliteServiceParameterNoteFBDSUsingInsertParameterNote();
    final note = Note.success("q", "", false);
    final result = fbds.insertModelToNamedServiceParameterNamed(note, null);
    expect(result?.exceptionController.enumWhatIsTheException,
        EnumWhatIsTheException.noException);
  });
}
