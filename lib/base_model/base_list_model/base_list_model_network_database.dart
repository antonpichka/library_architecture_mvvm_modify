import 'package:library_architecture_mvvm_modify/base_model/base_list_model/base_list_model_ln_database.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_model_network_database.dart';

abstract class BaseListModelNetworkDatabase<T extends BaseModelNetworkDatabase> extends BaseListModelLNDatabase
{
  List<T> _listModelNetworkDatabase = List.empty();

  set setListModelNetworkDatabase(List<T> list) {
    _listModelNetworkDatabase = list;
  }

  List<T> get getListModelNetworkDatabase {
    return _listModelNetworkDatabase;
  }

}