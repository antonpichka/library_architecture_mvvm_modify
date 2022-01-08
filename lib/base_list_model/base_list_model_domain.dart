
import 'package:library_architecture_mvvm_modify/base_list_model/base_list_model_local_database.dart';
import 'package:library_architecture_mvvm_modify/base_list_model/base_list_model_network_database.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_model_domain.dart';

class BaseListModelDomain<T extends BaseModelDomain>
    with BaseListModelLocalDatabase<T>,BaseListModelNetworkDatabase<T>
{

  bool insertModelToListModelLocalDatabase(
      BaseModelDomain model
      )
  {
    getListModelLocalDatabase.add(model);
    return true;
  }

  bool insertModelToListModelNetworkDatabase(
      BaseModelDomain model
      )
  {
    getListModelNetworkDatabase.add(model);
    return true;
  }

  bool updateModelToListModelLocalDatabase(
      BaseModelDomain model
      )
  {
    if(getListModelLocalDatabase.isEmpty) {
      return false;
    }

    for(int i = 0; i < getListModelLocalDatabase.length; i++) {
      if(getListModelLocalDatabase[i].uniqueId == model.uniqueId) {
        getListModelLocalDatabase.setAll(i, [model]);
        return true;
      }
    }
    return false;
  }

  bool updateModelToListModelNetworkDatabase(
      BaseModelDomain model
      )
  {
    if(getListModelNetworkDatabase.isEmpty) {
      return false;
    }

    for(int i = 0; i < getListModelNetworkDatabase.length; i++) {
      if(getListModelNetworkDatabase[i].uniqueId == model.uniqueId) {
        getListModelNetworkDatabase.setAll(i, [model]);
        return true;
      }
    }
    return false;
  }

  bool deleteModelToListModelLocalDatabase(
      BaseModelDomain model
      )
  {
    if(getListModelLocalDatabase.isEmpty) {
      return false;
    }

    for(int i = 0; i < getListModelLocalDatabase.length; i++) {
      if(getListModelLocalDatabase[i].uniqueId == model.uniqueId) {
        getListModelLocalDatabase.removeAt(i);
        return true;
      }
    }
    return false;
  }

  bool deleteModelToListModelNetworkDatabase(
      BaseModelDomain model
      )
  {
    if(getListModelNetworkDatabase.isEmpty) {
      return false;
    }

    for(int i = 0; i < getListModelNetworkDatabase.length; i++) {
      if(getListModelNetworkDatabase[i].uniqueId == model.uniqueId) {
        getListModelNetworkDatabase.removeAt(i);
        return true;
      }
    }
    return false;
  }
}