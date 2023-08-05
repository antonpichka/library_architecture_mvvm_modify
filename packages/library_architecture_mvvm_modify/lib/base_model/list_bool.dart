import 'package:library_architecture_mvvm_modify/base_model/base_list_model.dart';
import 'package:library_architecture_mvvm_modify/base_model/bool.dart';

base class ListBool<T extends Bool> extends BaseListModel<T> {
  ListBool.success(super.listModel) : super.success();
  ListBool.exception(super.exception) : super.exception();
}
