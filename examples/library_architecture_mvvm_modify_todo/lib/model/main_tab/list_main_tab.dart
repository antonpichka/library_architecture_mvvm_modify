import 'package:library_architecture_mvvm_modify/base_model/base_list_model.dart';
import 'package:library_architecture_mvvm_modify_todo/model/main_tab/main_tab.dart';

class ListMainTab<T extends MainTab>
    extends BaseListModel<T>
{
  ListMainTab.success(super.listModel) : super.success();
  ListMainTab.exception(super.exception) : super.exception();

  static ListMainTab get getListMainTabForSuccess => ListMainTab.success([]);
}