import 'package:library_architecture_mvvm_modify/utility/exception_controller.dart';
import 'package:library_architecture_mvvm_modify_todo/model/note/fbds/update_note_to_sqflite_service_parameter_note_fbds_using_update_parameter_note.dart';
import 'package:library_architecture_mvvm_modify_todo/model/note/note.dart';
import 'package:test/test.dart';

void main() {
  test('updateNoteToSqfliteServiceParameterNoteFBDSUsingUpdateParameterNote success', () {
    final fbds = UpdateNoteToSqfliteServiceParameterNoteFBDSUsingUpdateParameterNote();
    final note = Note.success("q","",false);
    final result = fbds.updateModelToNamedServiceParameterNamed(note,null);
    expect(result
        ?.exceptionController
        .enumWhatIsTheException,EnumWhatIsTheException.noException);
  });
}