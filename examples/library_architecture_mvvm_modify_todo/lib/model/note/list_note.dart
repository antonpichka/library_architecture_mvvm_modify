import 'package:library_architecture_mvvm_modify_todo/model/note/note.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_list_model.dart';

class ListNote<T extends Note>
    extends BaseListModel<T>
{
  ListNote.success(super.listModel) : super.success();
  ListNote.exception(super.exception) : super.exception();

  static ListNote get getListNoteForSuccess => ListNote.success([]);
}