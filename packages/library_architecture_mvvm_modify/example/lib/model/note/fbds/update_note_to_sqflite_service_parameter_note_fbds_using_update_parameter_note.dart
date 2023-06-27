import 'package:library_architecture_mvvm_modify/base_model/base_function_before_data_source/update_model_to_named_service_parameter_named_fbds.dart';
import 'package:library_architecture_mvvm_modify/utility/base_exception/local_exception.dart';
import 'package:library_architecture_mvvm_modify/utility/result.dart';
import 'package:library_architecture_mvvm_modify_todo/model/note/note.dart';

base class UpdateNoteToSqfliteServiceParameterNoteFBDSUsingUpdateParameterNote<
        T extends Note>
    extends UpdateModelToNamedServiceParameterNamedFBDS<int, T, Object> {
  static const constIsEmptyByTrimParameterName =
      "constIsEmptyByTrimParameterName";

  @override
  Result<int>? updateModelToNamedServiceParameterNamed(
      T? parameter, Object? parameterForFBDS) {
    if (parameter?.isEmptyByTrimParameterName() ?? true) {
      return Result<int>.exceptionForFBDS(LocalException.whereTheUserIsGuilty(
          this, constIsEmptyByTrimParameterName));
    }
    return Result<int>.successForFBDS();
  }
}
