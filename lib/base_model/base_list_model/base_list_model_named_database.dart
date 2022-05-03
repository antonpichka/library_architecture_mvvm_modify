import 'package:library_architecture_mvvm_modify/base_model/base_list_model/base_list_model_domain.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_model_named_database.dart';

abstract class BaseListModelNamedDatabase<T extends BaseModelNamedDatabase>
{
  List<T> _listModelLocalDatabase = List.empty();

  BaseListModelDomain toBaseListModelDomain();

  set setListModelLocalDatabase(List<T> list) {
    _listModelLocalDatabase = list;
  }

  List<T> get getListModelLocalDatabase {
    return _listModelLocalDatabase;
  }

}