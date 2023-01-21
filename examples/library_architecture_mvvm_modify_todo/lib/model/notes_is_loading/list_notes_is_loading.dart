import 'package:library_architecture_mvvm_modify/base_model/base_list_model.dart';
import 'package:library_architecture_mvvm_modify_todo/model/note/list_note.dart';
import 'package:library_architecture_mvvm_modify_todo/model/note/note.dart';
import 'package:library_architecture_mvvm_modify_todo/model/notes_is_loading/notes_is_loading.dart';
import 'package:meta/meta.dart';

class ListNotesIsLoading<T extends NotesIsLoading>
    extends BaseListModel<T>
{
  ListNotesIsLoading.success(super.listModel) : super.success();
  ListNotesIsLoading.exception(super.exception) : super.exception();

  static ListNotesIsLoading get getListNotesIsLoadingForSuccess => ListNotesIsLoading.success([]);
  @visibleForTesting
  static ListNotesIsLoading get getListNotesIsLoadingForSuccessWhereUnitTest => ListNotesIsLoading.success([
    NotesIsLoading.success(false,ListNote.success([
      Note.successWhereIsExistsParameterUuid("","","",false),
      Note.successWhereIsExistsParameterUuid("","","",false)])),
    NotesIsLoading.success(false,ListNote.success([
      Note.successWhereIsExistsParameterUuid("","","",false),
      Note.successWhereIsExistsParameterUuid("","","",false)]))]);
}