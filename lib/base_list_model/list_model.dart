
import 'package:library_architecture_mvvm_modify/base_list_model/local_list_model.dart';
import 'package:library_architecture_mvvm_modify/base_list_model/network_list_model.dart';
import 'package:library_architecture_mvvm_modify/base_model/domain_model.dart';

class ListModel<T extends DomainModel>
    with LocalListModel<T>,NetworkListModel<T>
{

  bool insertModelToLocalListModel(
      DomainModel model
      )
  {
    getLocalList.add(model);
    return true;
  }

  bool insertModelToNetworkListModel(
      DomainModel model
      )
  {
    getNetworkList.add(model);
    return true;
  }

  bool updateModelToLocalListModel(
      DomainModel model
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
      DomainModel model
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
      DomainModel model
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
      DomainModel model
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