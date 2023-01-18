import 'package:library_architecture_mvvm_modify/base_model/base_function_before_data_source/insert_model_to_named_service_parameter_named_fbds.dart';
import 'package:library_architecture_mvvm_modify/utility/base_exception/local_exception.dart';
import 'package:library_architecture_mvvm_modify/utility/result.dart';
import 'package:library_architecture_mvvm_modify_todo/model/note/note.dart';

class InsertNoteToSqfliteServiceParameterNoteFBDSUsingInsertParameterNote<T extends Note>
    extends InsertModelToNamedServiceParameterNamedFBDS<int,T,Object>
{
  static const constIsEmptyByTrimParameterName = "constIsEmptyByTrimParameterName";
  static const constIsEmptyByTrimParameterDescription = "constIsEmptyByTrimParameterDescription";

  @override
  Result<int>? insertModelToNamedServiceParameterNamed(T? parameter, Object? parameterForFBDS) {
    if(parameter!.isEmptyByTrimParameterName() ?? true) {
      return Result<int>.exceptionForFBDS(LocalException.whereTheUserIsGuilty(this,constIsEmptyByTrimParameterName));
    }
    if(parameter.isEmptyByTrimParameterDescription() ?? true) {
      return Result<int>.exceptionForFBDS(LocalException.whereTheUserIsGuilty(this,constIsEmptyByTrimParameterDescription));
    }
    return Result<int>.successForFBDS();
  }
}