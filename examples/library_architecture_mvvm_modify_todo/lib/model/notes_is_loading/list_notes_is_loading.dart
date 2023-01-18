import 'package:library_architecture_mvvm_modify/base_model/base_list_model.dart';
import 'package:library_architecture_mvvm_modify_todo/model/notes_is_loading/notes_is_loading.dart';

class ListNotesIsLoading<T extends NotesIsLoading>
    extends BaseListModel<T>
{
  ListNotesIsLoading.success(super.listModel) : super.success();
  ListNotesIsLoading.exception(super.exception) : super.exception();

  static ListNotesIsLoading get getListNotesIsLoadingForSuccess => ListNotesIsLoading.success([]);
}