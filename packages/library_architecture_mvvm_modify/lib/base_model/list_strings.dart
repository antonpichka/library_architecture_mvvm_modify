import 'package:library_architecture_mvvm_modify/base_model/base_list_model.dart';
import 'package:library_architecture_mvvm_modify/base_model/strings.dart';

base class ListStrings<T extends Strings> extends BaseListModel<T> {
  ListStrings.success(super.listModel) : super.success();
  ListStrings.exception(super.exception) : super.exception();
}
