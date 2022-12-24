import 'package:library_architecture_mvvm_modify/base_model/base_list_model.dart';

abstract class IListModelForNamedNP<T extends BaseListModel> {
  T? getListModelForNamedNP();
}