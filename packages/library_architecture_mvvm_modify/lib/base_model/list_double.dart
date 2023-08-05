import 'package:library_architecture_mvvm_modify/base_model/base_list_model.dart';
import 'package:library_architecture_mvvm_modify/base_model/double.dart';

base class ListDouble<T extends Double> extends BaseListModel<T> {
  ListDouble.success(super.listModel) : super.success();
  ListDouble.exception(super.exception) : super.exception();
}
