
import 'package:library_architecture_mvvm_modify/base_list_model/base_local_list_model.dart';
import 'package:library_architecture_mvvm_modify/base_list_model/base_network_list_model.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_domain_model.dart';

class BaseListModel<T extends BaseDomainModel>
    with BaseLocalListModel<T>,BaseNetworkListModel<T>
{

  bool insertModelToLocalListModel(
      BaseDomainModel model
      )
  {
    getLocalList.add(model);
    return true;
  }

  bool insertModelToNetworkListModel(
      BaseDomainModel model
      )
  {
    getNetworkList.add(model);
    return true;
  }

  bool updateModelToLocalListModel(
      BaseDomainModel model
      )
  {
    if(getLocalList.isEmpty) {
      return false;
    }

    for(int i = 0; i < getLocalList.length; i++) {
      if(getLocalList[i].uniqueId == model.uniqueId) {
        getLocalList.setAll(i, [model]);
        return true;
      }
    }
    return false;
  }

  bool updateModelToNetworkListModel(
      BaseDomainModel model
      )
  {
    if(getNetworkList.isEmpty) {
      return false;
    }

    for(int i = 0; i < getNetworkList.length; i++) {
      if(getNetworkList[i].uniqueId == model.uniqueId) {
        getNetworkList.setAll(i, [model]);
        return true;
      }
    }
    return false;
  }

  bool deleteModelToLocalListModel(
      BaseDomainModel model
      )
  {
    if(getLocalList.isEmpty) {
      return false;
    }

    for(int i = 0; i < getLocalList.length; i++) {
      if(getLocalList[i].uniqueId == model.uniqueId) {
        getLocalList.removeAt(i);
        return true;
      }
    }
    return false;
  }

  bool deleteModelToNetworkListModel(
      BaseDomainModel model
      )
  {
    if(getNetworkList.isEmpty) {
      return false;
    }

    for(int i = 0; i < getNetworkList.length; i++) {
      if(getNetworkList[i].uniqueId == model.uniqueId) {
        getNetworkList.removeAt(i);
        return true;
      }
    }
    return false;
  }
}