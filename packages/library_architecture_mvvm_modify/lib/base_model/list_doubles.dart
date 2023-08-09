import 'package:library_architecture_mvvm_modify/base_model/base_list_model.dart';
import 'package:library_architecture_mvvm_modify/base_model/doubles.dart';

base class ListDoubles<T extends Doubles> extends BaseListModel<T> {
  ListDoubles.success(super.listModel) : super.success();
  ListDoubles.exception(super.exception) : super.exception();
}
