import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:library_architecture_mvvm_modify/base_list_model/base_list_domain_model.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_domain_model.dart';
import 'package:library_architecture_mvvm_modify/base_type_parameter/base_type_parameter.dart';
import 'package:library_architecture_mvvm_modify/base_type_parameter/enum_type_parameter.dart';
import 'package:uuid/uuid.dart';

typedef ItemCreator<S> = S Function();

abstract class BaseViewModel<T extends Enum,
                              Y extends BaseDomainModel,
                              U extends BaseListDomainModel<BaseDomainModel>>
{
  final List<T> _listEnum;
  final ItemCreator<Y> _initCreatorBaseDomainModel;
  U _baseListModel;
  StreamController<List<Y>> _streamControllerLocalListDomainModel = StreamController.broadcast();
  StreamController<List<Y>> _streamControllerNetworkListDomainModel = StreamController.broadcast();
  Map<T,Y> _mapEnumAndBaseDomainModel = {};
  Map<T,StreamController<Y>> _mapEnumAndStreamController = {};
  BaseTypeParameter _baseTypeParameterForGetModelFromLocalDatabaseThereIsParameterFVM;
  BaseTypeParameter _baseTypeParameterForGetListModelFromLocalDatabaseThereIsParameterFVM;
  BaseTypeParameter _baseTypeParameterForGetModelFromNetworkDatabaseThereIsParameterFVM;
  BaseTypeParameter _baseTypeParameterForGetListModelFromNetworkDatabaseThereIsParameterFVM;
  EnumTypeParameter _enumTypeParameterForCallToMethodSetLocalIteratorAndSetLocalListModelUsingAnIteratorFVM;
  EnumTypeParameter _enumTypeParameterForCallToMethodSetNetworkIteratorAndSetNetworkListModelUsingAnIteratorFVM;

  BaseViewModel(
      this._listEnum,
      this._initCreatorBaseDomainModel,
      ItemCreator<U> initCreatorBaseListModel)
  {
    _baseListModel = initCreatorBaseListModel();
  }

  void dispose() {
    _baseListModel = null;
    _mapEnumAndBaseDomainModel = null;

    if(!_streamControllerLocalListDomainModel.isClosed) {
      _streamControllerLocalListDomainModel.close();
    }
    _streamControllerLocalListDomainModel = null;

    if(!_streamControllerNetworkListDomainModel.isClosed) {
      _streamControllerNetworkListDomainModel.close();
    }
    _streamControllerNetworkListDomainModel = null;
    
    if(_mapEnumAndStreamController.values.isEmpty) {
      _mapEnumAndStreamController = null;
      return;
    }

    for(StreamController streamController in _mapEnumAndStreamController.values) {
      if (streamController != null) {
        if (!streamController.isClosed) {
          streamController.close();
        }
        streamController = null;
      }
    }
    _mapEnumAndStreamController = null;
  }

  /* Start Methods BaseTypeParameter */

  set setBaseTypeParameterForGetModelFromLocalDatabaseThereIsParameterFVM(
      BaseTypeParameter baseTypeParameter)
  {
    _baseTypeParameterForGetModelFromLocalDatabaseThereIsParameterFVM = baseTypeParameter;
  }

  set setBaseTypeParameterForGetListModelFromLocalDatabaseThereIsParameterFVM(
      BaseTypeParameter baseTypeParameter)
  {
    _baseTypeParameterForGetListModelFromLocalDatabaseThereIsParameterFVM = baseTypeParameter;
  }

  set setBaseTypeParameterForGetModelFromNetworkDatabaseThereIsParameterFVM(
      BaseTypeParameter baseTypeParameter)
  {
    _baseTypeParameterForGetModelFromNetworkDatabaseThereIsParameterFVM = baseTypeParameter;
  }

  set setBaseTypeParameterForGetListModelFromNetworkDatabaseThereIsParameterFVM(
      BaseTypeParameter baseTypeParameter)
  {
    _baseTypeParameterForGetListModelFromNetworkDatabaseThereIsParameterFVM = baseTypeParameter;
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

  Stream<Y> getStreamModel(T operation) {
    return _getMapEnumAndStreamController[operation].stream;
  }

  void notifyStreamModel(T operation) {
    _getMapEnumAndStreamController[operation].add(
        _getMapEnumAndBaseDomainModel[operation]
    );
  }

  Future<Y> getFutureModel(T operation) async {
    return _getMapEnumAndBaseDomainModel[operation];
  }

  void setModel(Y newModel,T operation) {
    _getMapEnumAndBaseDomainModel[operation] = newModel;
  }

  Y getModel(T operation) {
    return _getMapEnumAndBaseDomainModel[operation];
  }

  @protected
  set setParameterModelUniqueId(T operation) {
    _getMapEnumAndBaseDomainModel[operation].setUniqueId = const Uuid().v1();
  }

  /* End Methods Model */

  /* Start Methods ListModel */

  Stream<List<Y>> get getStreamLocalListModel  {
    return _streamControllerLocalListDomainModel.stream;
  }
  
  Stream<List<Y>> get getStreamNetworkListModel  {
    return _streamControllerNetworkListDomainModel.stream;
  }

  Future<List<Y>> get getFutureLocalListModel async {
    var list = List.empty();
    for(BaseDomainModel value in _baseListModel.getListLocalModel) {
      list.add(value);
    }
    return list;
  }

  Future<List<Y>> get getFutureNetworkListModel async {
    var list = List.empty();
    for(BaseDomainModel value in _baseListModel.getListNetworkModel) {
      list.add(value);
    }
    return list;
  }

  void notifyStreamLocalListModel() {
    if(_baseListModel == null) {
      return;
    }
    _streamControllerLocalListDomainModel.add(_baseListModel.getListLocalModel);
  }

  void notifyStreamNetworkListModel() {
    if(_baseListModel == null) {
      return;
    }
    _streamControllerNetworkListDomainModel.add(_baseListModel.getListNetworkModel);
  }

  @protected
  U get getListModel   {
    if(_baseListModel == null) {
      throw Exception("null object ListModel");
    }
    return _baseListModel;
  }

  /* End Methods ListModel */

  Map<T,StreamController<Y>> get _getMapEnumAndStreamController {
    _mapEnumAndStreamController ??= _creationAndGetMapEnumAndStreamController();
    return _mapEnumAndStreamController;
  }

  Map<T,Y> get _getMapEnumAndBaseDomainModel {
    _mapEnumAndBaseDomainModel ??= _creationAndGetMapEnumAndBaseDomainModel();
    return _mapEnumAndBaseDomainModel;
  }

  Map<T,Y> _creationAndGetMapEnumAndBaseDomainModel() {
    if(_listEnum.isEmpty) {
      return {};
    }
    Map<T,Y> map = {};
    for(T viewModelOperation in _listEnum) {
      map[viewModelOperation] = _initCreatorBaseDomainModel();
    }
    return map;
  }

  Map<T,StreamController<Y>> _creationAndGetMapEnumAndStreamController() {
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