import 'package:library_architecture_mvvm_modify/base_model/base_list_model.dart';
import 'package:library_architecture_mvvm_modify/base_model/ints.dart';

base class ListInts<T extends Ints> extends BaseListModel<T> {
  ListInts.success(super.listModel) : super.success();
  ListInts.exception(super.exception) : super.exception();
}
