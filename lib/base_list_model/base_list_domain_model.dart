
import 'package:library_architecture_mvvm_modify/base_list_model/base_list_local_model.dart';
import 'package:library_architecture_mvvm_modify/base_list_model/base_list_network_model.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_domain_model.dart';

class BaseListDomainModel<T extends BaseDomainModel>
    with BaseListLocalModel<T>,BaseListNetworkModel<T>
{

  bool insertModelToListLocalModel(
      BaseDomainModel model
      )
  {
    getListLocalModel.add(model);
    return true;
  }

  bool insertModelToListNetworkModel(
      BaseDomainModel model
      )
  {
    getListNetworkModel.add(model);
    return true;
  }

  bool updateModelToListLocalModel(
      BaseDomainModel model
      )
  {
    if(getListLocalModel.isEmpty) {
      return false;
    }

    for(int i = 0; i < getListLocalModel.length; i++) {
      if(getListLocalModel[i].uniqueId == model.uniqueId) {
        getListLocalModel.setAll(i, [model]);
        return true;
      }
    }
    return false;
  }

  bool updateModelToListNetworkModel(
      BaseDomainModel model
      )
  {
    if(getListNetworkModel.isEmpty) {
      return false;
    }

    for(int i = 0; i < getListNetworkModel.length; i++) {
      if(getListNetworkModel[i].uniqueId == model.uniqueId) {
        getListNetworkModel.setAll(i, [model]);
        return true;
      }
    }
    return false;
  }

  bool deleteModelToListLocalModel(
      BaseDomainModel model
      )
  {
    if(getListLocalModel.isEmpty) {
      return false;
    }

    for(int i = 0; i < getListLocalModel.length; i++) {
      if(getListLocalModel[i].uniqueId == model.uniqueId) {
        getListLocalModel.removeAt(i);
        return true;
      }
    }
    return false;
  }

  bool deleteModelToListNetworkModel(
      BaseDomainModel model
      )
  {
    if(getListNetworkModel.isEmpty) {
      return false;
    }

    for(int i = 0; i < getListNetworkModel.length; i++) {
      if(getListNetworkModel[i].uniqueId == model.uniqueId) {
        getListNetworkModel.removeAt(i);
        return true;
      }
    }
    return false;
  }
}