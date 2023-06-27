import 'package:library_architecture_mvvm_modify/base_model/base_list_model.dart';
import 'package:library_architecture_mvvm_modify_todo/model/note_sorted/note_sorted.dart';
import 'package:meta/meta.dart';

base class ListNoteSorted<T extends NoteSorted> extends BaseListModel<T> {
  ListNoteSorted.success(super.listModel) : super.success();
  ListNoteSorted.exception(super.exception) : super.exception();

  static ListNoteSorted get getListNoteSortedForSuccess =>
      ListNoteSorted.success([]);
  @visibleForTesting
  static ListNoteSorted get getListNoteSortedForSuccessWhereUnitTest =>
      ListNoteSorted.success([
        NoteSorted.success(EnumNoteSorted.all, false),
        NoteSorted.success(EnumNoteSorted.all, false)
      ]);
}
