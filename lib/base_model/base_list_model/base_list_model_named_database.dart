import 'package:flutter/foundation.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_list_model/base_list_model_domain.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_model_named_database.dart';

abstract class BaseListModelNamedDatabase<T extends BaseListModelDomain,Y extends BaseModelNamedDatabase> {
  List<Y> _listModelNamedDatabase;

  BaseListModelNamedDatabase(this._listModelNamedDatabase);

  T toBaseListModelDomain();

  @nonVirtual
  List<Y> get getListModelNamedDatabase {
    return _listModelNamedDatabase;
  }

  @nonVirtual
  set setListModelNamedDatabase(List<Y> list) {
    _listModelNamedDatabase = list;
  }

}