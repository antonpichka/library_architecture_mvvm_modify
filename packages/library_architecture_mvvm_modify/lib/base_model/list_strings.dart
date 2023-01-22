import 'package:library_architecture_mvvm_modify/base_model/base_list_model.dart';
import 'package:library_architecture_mvvm_modify/base_model/strings.dart';

/// An example of the extends of the "BaseListModel" class, named ListStrings
class ListStrings<T extends Strings> extends BaseListModel<T> {
  ListStrings.success(super.listModel) : super.success();
  ListStrings.exception(super.exception) : super.exception();
  ListStrings.successForFBDS() : super.successForFBDS();
  ListStrings.exceptionForFBDS(super.exception) : super.exceptionForFBDS();
}