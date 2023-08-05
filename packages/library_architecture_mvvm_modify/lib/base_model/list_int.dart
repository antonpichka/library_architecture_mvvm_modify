import 'package:library_architecture_mvvm_modify/base_model/base_list_model.dart';
import 'package:library_architecture_mvvm_modify/base_model/int.dart';

base class ListInt<T extends Int> extends BaseListModel<T> {
  ListInt.success(super.listModel) : super.success();
  ListInt.exception(super.exception) : super.exception();
}
