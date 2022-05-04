import 'package:library_architecture_mvvm_modify/base_model/base_list_model/base_list_model_domain.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_model_named_database.dart';

abstract class BaseListModelNamedDatabase<T extends BaseModelNamedDatabase>
{
  List<T> _listModelNamedDatabase = List.empty();

  BaseListModelDomain toBaseListModelDomain();

  set setListModelNamedDatabase(List<T> list) {
    _listModelNamedDatabase = list;
  }

  List<T> get getListModelNamedDatabase {
    return _listModelNamedDatabase;
  }

}