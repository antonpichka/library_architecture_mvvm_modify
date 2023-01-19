import 'package:library_architecture_mvvm_modify/base_model/base_list_model.dart';
import 'package:library_architecture_mvvm_modify_todo/model/note_option/note_option.dart';

class ListNoteOption<T extends NoteOption>
    extends BaseListModel<T>
{
  ListNoteOption.success(super.listModel) : super.success();
  ListNoteOption.exception(super.exception) : super.exception();

  static ListNoteOption get getListNoteOptionForSuccess => ListNoteOption.success([]);
}