import 'package:library_architecture_mvvm_modify/base_model/base_list_model/base_list_model_domain.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_model_named_database.dart';

abstract class BaseListModelNamedDatabase<T extends BaseModelNamedDatabase>
{
  List<T> _listModelNamedDatabase;

  BaseListModelNamedDatabase(this._listModelNamedDatabase);
  BaseListModelNamedDatabase.fromListMap(List<Map<String,dynamic>> map);

  BaseListModelDomain toBaseListModelDomain();

  List<T> get getListModelNamedDatabase {
    return _listModelNamedDatabase;
  }

  set setListModelNamedDatabase(List<T> list) {
    _listModelNamedDatabase = list;
  }

}