import 'package:library_architecture_mvvm_modify/base_model_q_named_service_view_model/base_model_q_named_service_view_model.dart';
import 'package:library_architecture_mvvm_modify/base_model_q_named_service_view_model/interface_model_q_named_service_data_source/update_model_to_named_service_parameter_named_data_source.dart';
import 'package:library_architecture_mvvm_modify/utility/base_exception/local_exception.dart';
import 'package:library_architecture_mvvm_modify/utility/result.dart';
import 'package:library_architecture_mvvm_modify_todo/model/note/fbds/update_note_to_sqflite_service_parameter_note_fbds_using_update_parameter_note.dart';
import 'package:library_architecture_mvvm_modify_todo/model/note/list_note.dart';
import 'package:library_architecture_mvvm_modify_todo/model/note/note.dart';
import 'package:library_architecture_mvvm_modify_todo/model_q_named_service_view_model/named_service/sqflite_service.dart';
import 'package:meta/meta.dart';

class NoteQSqfliteServiceViewModelUsingUpdateParameterNote<T extends Note,
        Y extends ListNote<T>> extends BaseModelQNamedServiceViewModel<T, Y>
    implements UpdateModelToNamedServiceParameterNamedDataSource<int, T> {
  @protected
  final sqfliteService = SqfliteService();

  Future<Result<int>?> updateNoteToSqfliteServiceParameterNoteUsingFBDS(
      T parameter) {
    return super.updateModelToNamedServiceParameterNamedUsingFBDS<int, T>(
        UpdateNoteToSqfliteServiceParameterNoteFBDSUsingUpdateParameterNote<
            T>(),
        parameter);
  }

  @nonVirtual
  @override
  Object? get modelQNamedServiceDataSource => this;

  @protected
  @override
  Future<Result<int>?> updateModelToNamedServiceParameterNamedDS(
      T? parameter) async {
    try {
      final database = await sqfliteService.getDatabase;
      final result = await database?.update(
          SqfliteService.constTableNote, parameter!.toMapSqflite(),
          where: '${Note.constParameterUuIdForSqflite} = ?',
          whereArgs: [parameter.uuId]);
      return Result<int>.success(result);
    } catch (e) {
      return Result<int>.exception(LocalException(
          this, EnumGuiltyForLocalException.device, e.toString()));
    }
  }
}
