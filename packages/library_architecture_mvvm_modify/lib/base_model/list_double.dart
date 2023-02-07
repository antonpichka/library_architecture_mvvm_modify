import 'package:library_architecture_mvvm_modify/base_model/base_list_model.dart';
import 'package:library_architecture_mvvm_modify/base_model/double.dart';

/// An example of the extends of the "BaseListModel" class, named ListDouble
class ListDouble<T extends Double> extends BaseListModel<T> {
  ListDouble.success(super.listModel) : super.success();
  ListDouble.exception(super.exception) : super.exception();
  ListDouble.successForFBDS() : super.successForFBDS();
  ListDouble.exceptionForFBDS(super.exception) : super.exceptionForFBDS();
}
