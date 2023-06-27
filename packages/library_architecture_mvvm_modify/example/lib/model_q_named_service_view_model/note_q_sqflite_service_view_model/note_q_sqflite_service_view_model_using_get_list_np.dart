import 'package:library_architecture_mvvm_modify/base_model_q_named_service_view_model/base_model_q_named_service_view_model.dart';
import 'package:library_architecture_mvvm_modify/base_model_q_named_service_view_model/interface_model_q_named_service_data_source/get_list_model_from_named_service_np_data_source.dart';
import 'package:library_architecture_mvvm_modify/utility/base_exception/base_exception.dart';
import 'package:library_architecture_mvvm_modify/utility/base_exception/local_exception.dart';
import 'package:library_architecture_mvvm_modify_todo/model/note/list_note.dart';
import 'package:library_architecture_mvvm_modify_todo/model/note/note.dart';
import 'package:library_architecture_mvvm_modify_todo/model_q_named_service_view_model/named_service/sqflite_service.dart';
import 'package:meta/meta.dart';

base class NoteQSqfliteServiceViewModelUsingGetListNP<T extends Note,
        Y extends ListNote<T>> extends BaseModelQNamedServiceViewModel<T, Y>
    implements GetListModelFromNamedServiceNPDataSource<Y> {
  @protected
  final sqfliteService = SqfliteService();

  Future<Y?> getListNoteFromSqfliteServiceNP() {
    return super.getListModelFromNamedServiceNP();
  }

  @nonVirtual
  @override
  Object? get modelQNamedServiceDataSource => this;

  @protected
  @override
  Future<Y?> getListModelFromNamedServiceNPDS() async {
    try {
      final database = await sqfliteService.getDatabase;
      final listMap = await database
          ?.rawQuery('SELECT * FROM ${SqfliteService.constTableNote}');
      return getListNoteFromListMap(listMap);
    } catch (e) {
      return getListNoteFromBaseException(LocalException(
          this, EnumGuiltyForLocalException.device, e.toString()));
    }
  }

  @protected
  Y? getListNoteFromListMap(List<Map<String, dynamic>>? listMap) {
    if (listMap?.isEmpty ?? true) {
      return ListNote.success(<Note>[]) as Y?;
    }
    final listNote = listMap?.map((e) => Note.fromMapSqflite(e)).toList();
    return ListNote.success(listNote) as Y?;
  }

  @protected
  Y? getListNoteFromBaseException(BaseException? baseException) {
    return ListNote.exception(baseException!) as Y?;
  }
}
