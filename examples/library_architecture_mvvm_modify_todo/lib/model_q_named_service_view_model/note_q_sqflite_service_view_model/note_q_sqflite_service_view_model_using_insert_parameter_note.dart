import 'package:library_architecture_mvvm_modify/base_model_q_named_service_view_model/base_model_q_named_service_view_model.dart';
import 'package:library_architecture_mvvm_modify/base_model_q_named_service_view_model/interface_model_q_named_service_data_source/insert_model_to_named_service_parameter_named_data_source.dart';
import 'package:library_architecture_mvvm_modify/utility/base_exception/local_exception.dart';
import 'package:library_architecture_mvvm_modify/utility/result.dart';
import 'package:library_architecture_mvvm_modify_todo/model/note/fbds/insert_note_to_sqflite_service_parameter_note_fbds_using_insert_parameter_note.dart';
import 'package:library_architecture_mvvm_modify_todo/model/note/list_note.dart';
import 'package:library_architecture_mvvm_modify_todo/model/note/note.dart';
import 'package:library_architecture_mvvm_modify_todo/model_q_named_service_view_model/named_service/sqflite_service.dart';
import 'package:meta/meta.dart';
import 'package:sqflite/sqflite.dart';

class NoteQSqfliteServiceViewModelUsingInsertParameterNote<T extends Note,Y extends ListNote<T>>
    extends BaseModelQNamedServiceViewModel<T,Y>
    implements InsertModelToNamedServiceParameterNamedDataSource<int,T>
{
  @protected
  final sqfliteService = SqfliteService();

  Future<Result<int>?> insertNoteToSqfliteServiceParameterNoteUsingFBDS(T parameter) {
    return super.insertModelToNamedServiceParameterNamedUsingFBDS<int,T>(
        InsertNoteToSqfliteServiceParameterNoteFBDSUsingInsertParameterNote<T>(),
        parameter);
  }

  @nonVirtual
  @override
  Object? get modelQNamedServiceDataSource => this;

  @protected
  @override
  Future<Result<int>?> insertModelToNamedServiceParameterNamedDS(T? parameter)
  async {
    try {
      final database = await sqfliteService.getDatabase;
      final result = await database?.insert(
          SqfliteService.constTableNote,
          parameter!.toMapForSqflite(),
          conflictAlgorithm: ConflictAlgorithm.replace);
      return Result<int>.success(result);
    } catch(e) {
      return Result<int>.exception(LocalException(this,EnumGuiltyForLocalException.device,e.toString()));
    }
  }
}