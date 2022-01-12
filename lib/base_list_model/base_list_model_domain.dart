
import 'package:library_architecture_mvvm_modify/base_iterator/base_iterator.dart';
import 'package:library_architecture_mvvm_modify/base_list_model/base_list_model_local_database.dart';
import 'package:library_architecture_mvvm_modify/base_list_model/base_list_model_network_database.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_model_domain.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_model_local_database.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_model_network_database.dart';

abstract class BaseListModelDomain<T extends BaseModelDomain> {
  List<T> _listModelDomain = List.empty();
  BaseIterator _iterator;
  
  BaseModelDomain fromBaseModelLocalDatabase(BaseModelLocalDatabase model);
  BaseModelDomain fromBaseModelNetworkDatabase(BaseModelNetworkDatabase model);

  void setListModelLocalDatabaseFromBaseListModelLocalDatabase(BaseListModelLocalDatabase listModelLocalDatabase) {
    List<BaseModelDomain> list = List.generate(listModelLocalDatabase.getListModelLocalDatabase.length, (i) {
      return fromBaseModelLocalDatabase(listModelLocalDatabase.getListModelLocalDatabase[i]);
    });
    _listModelDomain = list;
  }

  void setListModelNetworkDatabaseFromBaseListModelNetworkDatabase(BaseListModelNetworkDatabase listModelNetworkDatabase) {
    List<BaseModelDomain> list = List.generate(listModelNetworkDatabase.getListModelNetworkDatabase.length, (i) {
      return fromBaseModelNetworkDatabase(listModelNetworkDatabase.getListModelNetworkDatabase[i]);
    });
    _listModelDomain = list;
  }

  List<T> get getListModelDomain {
    return _listModelDomain;
  }

  set setListModelDomain(List<T> list) {
    _listModelDomain = list;
  }

  void setListModelDomainUsingAnIterator() {
    if(_iterator == null) {
      throw Exception();
    }
    _listModelDomain = _iterator.getSortedList;
  }

  set setIterator(BaseIterator newIterator) {
    _iterator = newIterator;
    _iterator.setList = _listModelDomain;
  }

  bool get isEqualsNullForIterator {
    return _iterator == null;
  }
  
  bool insertModelToListModelDomain(
      BaseModelDomain model
      )
  {
    _listModelDomain.add(model);
    return true;
  }

  bool updateModelToListModelDomain(
      BaseModelDomain model
      )
  {
    if(_listModelDomain.isEmpty) {
      return false;
    }

    for(int i = 0; i < _listModelDomain.length; i++) {
      if(_listModelDomain[i].uniqueId == model.uniqueId) {
        _listModelDomain.setAll(i, [model]);
        return true;
      }
    }
    return false;
  }

  bool deleteModelToListModelDomain(
      BaseModelDomain model
      )
  {
    if(_listModelDomain.isEmpty) {
      return false;
    }

    for(int i = 0; i < _listModelDomain.length; i++) {
      if(_listModelDomain[i].uniqueId == model.uniqueId) {
        _listModelDomain.removeAt(i);
        return true;
      }
    }
    return false;
  }

}