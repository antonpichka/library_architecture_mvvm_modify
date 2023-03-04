import 'package:library_architecture_mvvm_modify/base_model_q_named_service_view_model/base_model_q_named_service_view_model.dart';
import 'package:library_architecture_mvvm_modify/base_model_q_named_service_view_model/interface_model_q_named_service_data_source/update_list_model_to_named_service_parameter_named_data_source.dart';
import 'package:library_architecture_mvvm_modify/utility/base_exception/local_exception.dart';
import 'package:library_architecture_mvvm_modify/utility/result.dart';
import 'package:library_architecture_mvvm_modify_todo/model/note/list_note.dart';
import 'package:library_architecture_mvvm_modify_todo/model/note/note.dart';
import 'package:library_architecture_mvvm_modify_todo/model_q_named_service_view_model/named_service/sqflite_service.dart';
import 'package:meta/meta.dart';

class NoteQSqfliteServiceViewModelUsingUpdateListParameterBoolForIsCompleted<
        T extends Note,
        Y extends ListNote<T>> extends BaseModelQNamedServiceViewModel<T, Y>
    implements
        UpdateListModelToNamedServiceParameterNamedDataSource<int, bool> {
  @protected
  final sqfliteService = SqfliteService();

  Future<Result<int>?> updateListNoteToSqfliteServiceParameterBool(
      bool parameter) {
    return super
        .updateListModelToNamedServiceParameterNamed<int, bool>(parameter);
  }

  @nonVirtual
  @override
  Object? get modelQNamedServiceDataSource => this;

  @protected
  @override
  Future<Result<int>?> updateListModelToNamedServiceParameterNamedDS(
      bool? parameter) async {
    try {
      final database = await sqfliteService.getDatabase;
      final result = await database?.rawUpdate(
          "UPDATE ${SqfliteService.constTableNote} SET ${Note.constParameterIsCompletedForSqflite} = ?",
          [parameter == true ? 1 : 0]);
      return Result<int>.success(result);
    } catch (e) {
      return Result<int>.exception(LocalException(
          this, EnumGuiltyForLocalException.device, e.toString()));
    }
  }
}
