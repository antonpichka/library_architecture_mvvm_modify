import 'package:library_architecture_mvvm_modify/base_model/base_list_model.dart';
import 'package:library_architecture_mvvm_modify/base_model/bools.dart';

base class ListBools<T extends Bools> extends BaseListModel<T> {
  ListBools.success(super.listModel) : super.success();
  ListBools.exception(super.exception) : super.exception();
}
