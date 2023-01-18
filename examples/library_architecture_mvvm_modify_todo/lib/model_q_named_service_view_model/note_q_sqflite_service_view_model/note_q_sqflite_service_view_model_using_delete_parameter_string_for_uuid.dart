import 'package:library_architecture_mvvm_modify/base_model_q_named_service_view_model/base_model_q_named_service_view_model.dart';
import 'package:library_architecture_mvvm_modify/base_model_q_named_service_view_model/interface_model_q_named_service_data_source/delete_model_to_named_service_parameter_named_data_source.dart';
import 'package:library_architecture_mvvm_modify/utility/base_exception/local_exception.dart';
import 'package:library_architecture_mvvm_modify/utility/result.dart';
import 'package:library_architecture_mvvm_modify_todo/model/note/list_note.dart';
import 'package:library_architecture_mvvm_modify_todo/model/note/note.dart';
import 'package:library_architecture_mvvm_modify_todo/model_q_named_service_view_model/named_service/sqflite_service.dart';
import 'package:meta/meta.dart';

class NoteQSqfliteServiceViewModelUsingDeleteParameterStringForUuId<T extends Note,Y extends ListNote<T>>
    extends BaseModelQNamedServiceViewModel<T,Y>
    implements DeleteModelToNamedServiceParameterNamedDataSource<int,String>
{
  @protected
  final sqfliteService = SqfliteService();

  Future<Result<int>?> deleteNoteToSqfliteServiceParameterString(String parameter) {
    return super.deleteModelToNamedServiceParameterNamed<int,String>(parameter);
  }

  @nonVirtual
  @override
  Object? get modelQNamedServiceDataSource => this;

  @protected
  @override
  Future<Result<int>?> deleteModelToNamedServiceParameterNamedDS(String? parameter)
  async {
    try {
      final database = await sqfliteService.getDatabase;
      final result = await database?.delete(
          SqfliteService.constTableNote,
          where: '${Note.constParameterUuIdForSqflite} = ?',
          whereArgs: [parameter]);
      return Result<int>.success(result);
    } catch(e) {
      return Result<int>.exception(LocalException(this,EnumGuiltyForLocalException.device,e.toString()));
    }
  }
}