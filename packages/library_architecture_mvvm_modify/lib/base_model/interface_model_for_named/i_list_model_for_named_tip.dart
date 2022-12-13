import 'package:library_architecture_mvvm_modify/base_model/base_list_model.dart';

abstract class IListModelForNamedTIP<T extends BaseListModel,Y extends Object> {
  T getListModelForNamedTIP(Y parameter);
}