import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:library_architecture_mvvm_modify/base_list_model/base_list_model.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_domain_model.dart';
import 'package:library_architecture_mvvm_modify/base_type_parameter/base_type_parameter.dart';
import 'package:library_architecture_mvvm_modify/base_type_parameter/enum_type_parameter.dart';
import 'package:uuid/uuid.dart';

typedef ItemCreator<S> = S Function();

abstract class BaseViewModel<T extends Enum,
                              Y extends BaseDomainModel,
                              U extends BaseListModel<BaseDomainModel>>
{
  StreamController<List<Y>> _streamControllerLocalListDomainModel = StreamController.broadcast();
  StreamController<List<Y>> _streamControllerNetworkListDomainModel = StreamController.broadcast();
  List<T> _listEnum = List.empty();
  Map<T,Y> _mapEnumAndDomainModelObject = {};
  Map<T,StreamController<Y>> _mapEnumAndStreamControllerObject = {};
  ItemCreator<Y> _creatorBaseDomainModel;
  U _listModel;
  BaseTypeParameter _baseTypeParameterForGetModelFromLocalDatabaseThereIsParameterFVM;
  BaseTypeParameter _baseTypeParameterForGetListModelFromLocalDatabaseThereIsParameterFVM;
  BaseTypeParameter _baseTypeParameterForGetModelFromNetworkDatabaseThereIsParameterFVM;
  BaseTypeParameter _baseTypeParameterForGetListModelFromNetworkDatabaseThereIsParameterFVM;
  BaseTypeParameter _baseTypeParameterForCancelNotificationThereIsParameterFVM;
  EnumTypeParameter _enumTypeParameterForCallToMethodSetLocalIteratorAndSetLocalListModelUsingAnIteratorFVM;
  EnumTypeParameter _enumTypeParameterForCallToMethodSetNetworkIteratorAndSetNetworkListModelUsingAnIteratorFVM;

  BaseViewModel(List<T> listEnum,
      ItemCreator<Y> initCreatorBaseDomainModel,
      ItemCreator<U> initCreatorBaseListModel)
  {
    _listEnum = listEnum;
    _creatorBaseDomainModel = initCreatorBaseDomainModel;
    _listModel = initCreatorBaseListModel();
  }

  void dispose() {
    _mapEnumAndDomainModelObject = null;
    _listEnum = null;
    _creatorBaseDomainModel = null;
    _listModel = null;
    
    if(_mapEnumAndStreamControllerObject.values.isEmpty) {
      _mapEnumAndStreamControllerObject = null;
      return;
    }

    if(!_streamControllerLocalListDomainModel.isClosed) {
      _streamControllerLocalListDomainModel.close();
    }
    _streamControllerLocalListDomainModel = null;

    if(!_streamControllerNetworkListDomainModel.isClosed) {
      _streamControllerNetworkListDomainModel.close();
    }
    _streamControllerNetworkListDomainModel = null;

    for(StreamController streamController in _mapEnumAndStreamControllerObject.values) {
      if (streamController != null) {
        if (!streamController.isClosed) {
          streamController.close();
        }
        streamController = null;
      }
    }
    _mapEnumAndStreamControllerObject = null;
  }

  /* Start Methods BaseTypeParameter */

  set setTypeParameterForGetModelFromLocalDatabaseThereIsParameterFVM(
      BaseTypeParameter baseTypeParameter)
  {
    _baseTypeParameterForGetModelFromLocalDatabaseThereIsParameterFVM = baseTypeParameter;
  }

  set setTypeParameterForGetListModelFromLocalDatabaseThereIsParameterFVM(
      BaseTypeParameter baseTypeParameter)
  {
    _baseTypeParameterForGetListModelFromLocalDatabaseThereIsParameterFVM = baseTypeParameter;
  }

  set setTypeParameterForGetModelFromNetworkDatabaseThereIsParameterFVM(
      BaseTypeParameter baseTypeParameter)
  {
    _baseTypeParameterForGetModelFromNetworkDatabaseThereIsParameterFVM = baseTypeParameter;
  }

  set setTypeParameterForGetListModelFromNetworkDatabaseThereIsParameterFVM(
      BaseTypeParameter baseTypeParameter)
  {
    _baseTypeParameterForGetListModelFromNetworkDatabaseThereIsParameterFVM = baseTypeParameter;
  }

  set setTypeParameterForCancelNotificationThereIsParameterFVM(
      BaseTypeParameter baseTypeParameter)
  {
    _baseTypeParameterForCancelNotificationThereIsParameterFVM = baseTypeParameter;
  }

  set setEnumTypeParameterForCallToMethodSetLocalIteratorAndSetLocalListModelUsingAnIteratorFVM(
      BaseTypeParameter baseTypeParameter)
  {
    _enumTypeParameterForCallToMethodSetLocalIteratorAndSetLocalListModelUsingAnIteratorFVM= baseTypeParameter;
  }

  set setEnumTypeParameterForCallToMethodSetNetworkIteratorAndSetNetworkListModelUsingAnIteratorFVM(
      BaseTypeParameter baseTypeParameter)
  {
    _enumTypeParameterForCallToMethodSetNetworkIteratorAndSetNetworkListModelUsingAnIteratorFVM = baseTypeParameter;
  }

  BaseTypeParameter get getBaseTypeParameterForGetModelFromLocalDatabaseThereIsParameterFVM {
    if(_baseTypeParameterForGetModelFromLocalDatabaseThereIsParameterFVM == null) {
      throw Exception("no setters");
    }
    return _baseTypeParameterForGetModelFromLocalDatabaseThereIsParameterFVM;
  }

  BaseTypeParameter get getBaseTypeParameterForGetListModelFromLocalDatabaseThereIsParameterFVM {
    if(_baseTypeParameterForGetListModelFromLocalDatabaseThereIsParameterFVM == null) {
      throw Exception("no setters");
    }
    return _baseTypeParameterForGetListModelFromLocalDatabaseThereIsParameterFVM;
  }

  BaseTypeParameter get getBaseTypeParameterForGetModelFromNetworkDatabaseThereIsParameterFVM {
    if(_baseTypeParameterForGetModelFromNetworkDatabaseThereIsParameterFVM == null) {
      throw Exception("no setters");
    }
    return _baseTypeParameterForGetModelFromNetworkDatabaseThereIsParameterFVM;
  }

  BaseTypeParameter get getBaseTypeParameterForGetListModelFromNetworkDatabaseThereIsParameterFVM {
    if(_baseTypeParameterForGetListModelFromNetworkDatabaseThereIsParameterFVM  == null) {
      throw Exception("no setters");
    }
    return _baseTypeParameterForGetListModelFromNetworkDatabaseThereIsParameterFVM;
  }

  BaseTypeParameter get getBaseTypeParameterForCancelNotificationThereIsParameterFVM {
    if(_baseTypeParameterForCancelNotificationThereIsParameterFVM  == null) {
      throw Exception("no setters");
    }
    return _baseTypeParameterForCancelNotificationThereIsParameterFVM;
  }

  EnumTypeParameter get getEnumTypeParameterForCallToMethodSetLocalIteratorAndSetLocalListModelUsingAnIteratorFVM {
    if(_enumTypeParameterForCallToMethodSetLocalIteratorAndSetLocalListModelUsingAnIteratorFVM  == null) {
      throw Exception("no setters enum");
    }
    return _enumTypeParameterForCallToMethodSetLocalIteratorAndSetLocalListModelUsingAnIteratorFVM;
  }

  EnumTypeParameter get getEnumTypeParameterForCallToMethodSetNetworkIteratorAndSetNetworkListModelUsingAnIteratorFVM {
    if(_enumTypeParameterForCallToMethodSetNetworkIteratorAndSetNetworkListModelUsingAnIteratorFVM  == null) {
      throw Exception("no setters enum");
    }
    return _enumTypeParameterForCallToMethodSetNetworkIteratorAndSetNetworkListModelUsingAnIteratorFVM;
  }

  /* End Methods BaseTypeParameter */

  /* Start Methods Model */

  String getParameterModelUniqueId(T operation) {
    return _getMapEnumAndDomainModelObject[operation].uniqueId;
  }

  Stream<Y> getStreamModel(T operation) {
    return _getMapEnumAndStreamControllerObject[operation].stream;
  }

  void notifyStreamModel(T operation) {
    _getMapEnumAndStreamControllerObject[operation].add(
        _getMapEnumAndDomainModelObject[operation]
    );
  }

  Future<Y> getFutureModel(T operation) async {
    return _getMapEnumAndDomainModelObject[operation];
  }

  void setModel(Y newModel,T operation) {
    _getMapEnumAndDomainModelObject[operation] = newModel;
  }

  Y getModel(T operation) {
    return _getMapEnumAndDomainModelObject[operation];
  }

  @protected
  set setParameterModelUniqueId(T operation) {
    _getMapEnumAndDomainModelObject[operation].setUniqueId = const Uuid().v1();
  }

  /* End Methods Model */

  /* Start Methods ListModel */

  Stream<List<Y>> get getStreamLocalListModel  {
    return _streamControllerLocalListDomainModel.stream;
  }

  Future<List<Y>> get getFutureLocalListModel async {
    var list = List.empty();
    for(BaseDomainModel value in _listModel.getLocalList) {
      list.add(value);
    }
    return list;
  }

  Stream<List<Y>> get getStreamNetworkListModel  {
    return _streamControllerNetworkListDomainModel.stream;
  }

  Future<List<Y>> get getFutureNetworkListModel async {
    var list = List.empty();
    for(BaseDomainModel value in _listModel.getNetworkList) {
      list.add(value);
    }
    return list;
  }

  void notifyStreamLocalListModel() {
    if(_listModel == null) {
      return;
    }
    _streamControllerLocalListDomainModel.add(_listModel.getLocalList);
  }

  void notifyStreamNetworkListModel() {
    if(_listModel == null) {
      return;
    }
    _streamControllerNetworkListDomainModel.add(_listModel.getNetworkList);
  }

  @protected
  U get getListModel   {
    if(_listModel == null) {
      throw Exception("null object ListModel");
    }
    return _listModel;
  }

  /* End Methods ListModel */

  Map<T,StreamController<Y>> get _getMapEnumAndStreamControllerObject {
    _mapEnumAndStreamControllerObject ??= _creationAndGetMapEnumAndStreamControllerObjects();
    return _mapEnumAndStreamControllerObject;
  }

  Map<T,Y> get _getMapEnumAndDomainModelObject {
    _mapEnumAndDomainModelObject ??= _creationAndGetMapEnumAndDomainModelObjects();
    return _mapEnumAndDomainModelObject;
  }

  Map<T,Y> _creationAndGetMapEnumAndDomainModelObjects() {
    if(_listEnum.isEmpty) {
      return {};
    }
    Map<T,Y> map = {};
    for(T viewModelOperation in _listEnum) {
      map[viewModelOperation] = _creatorBaseDomainModel();
    }
    return map;
  }

  Map<T,StreamController<Y>> _creationAndGetMapEnumAndStreamControllerObjects() {
    if(_listEnum.isEmpty) {
      return {};
    }
    Map<T,StreamController<Y>> map = {};
    for(T viewModelOperation in _listEnum) {
      map[viewModelOperation] = StreamController<Y>.broadcast();
    }
    return map;
  }

}