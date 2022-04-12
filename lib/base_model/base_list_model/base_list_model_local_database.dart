import 'package:library_architecture_mvvm_modify/base_model/base_list_model/base_list_model_ln_database.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_model_local_database.dart';

abstract class BaseListModelLocalDatabase<T extends BaseModelLocalDatabase> extends BaseListModelLNDatabase
{
  List<T> _listModelLocalDatabase = List.empty();

  set setListModelLocalDatabase(List<T> list) {
    _listModelLocalDatabase = list;
  }

  List<T> get getListModelLocalDatabase {
    return _listModelLocalDatabase;
  }

}