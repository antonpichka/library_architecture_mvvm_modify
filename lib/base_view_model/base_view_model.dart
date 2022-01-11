import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:library_architecture_mvvm_modify/base_list_model/base_list_model_domain.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_model_domain.dart';
import 'package:library_architecture_mvvm_modify/base_type_parameter/base_type_parameter.dart';
import 'package:library_architecture_mvvm_modify/base_type_parameter/enum_type_parameter.dart';
import 'package:library_architecture_mvvm_modify/base_view_model/enum_operation_view_model.dart';
import 'package:uuid/uuid.dart';

typedef ItemCreator<S> = S Function();

abstract class BaseViewModel<T extends BaseModelDomain,
                              Y extends BaseListModelDomain<T>>
{
  /* Constructor */
  final List<EnumOperationViewModel> _listEnumOperationViewModel;
  final ItemCreator<T> _initCreatorBaseModelDomain;
  final ItemCreator<Y> _initCreatorBaseListModelDomain;

  /* Types */
  final Type _typeBaseModelDomain = T;
  final Type _typeBaseListModelDomain = Y;

  /* Maps */
  Map<EnumOperationViewModel,T> _mapEnumOperationViewModelAndBaseModelDomain = {};
  Map<EnumOperationViewModel,StreamController<T>> _mapEnumOperationViewModelAndStreamControllerForBaseModelDomain = {};
  Map<EnumOperationViewModel,Y> _mapEnumOperationViewModelAndBaseListModelDomain = {};
  Map<EnumOperationViewModel,StreamController<Y>> _mapEnumOperationViewModelAndStreamControllerForBaseListModelDomain = {};

  /* BaseTypesParameters */
  BaseTypeParameter _baseTypeParameterForGetModelFromLocalDatabaseThereIsParameterFVM;
  BaseTypeParameter _baseTypeParameterForGetListModelFromLocalDatabaseThereIsParameterFVM;
  BaseTypeParameter _baseTypeParameterForGetModelFromNetworkDatabaseThereIsParameterFVM;
  BaseTypeParameter _baseTypeParameterForGetListModelFromNetworkDatabaseThereIsParameterFVM;
  EnumTypeParameter _enumTypeParameterForCallToMethodSetIteratorForListModelLocalDatabaseAndSetListModelLocalDatabaseUsingAnIteratorFVM;
  EnumTypeParameter _enumTypeParameterForCallToMethodSetIteratorForListModelNetworkDatabaseAndSetListModelNetworkDatabaseUsingAnIteratorFVM;

  BaseViewModel(
      this._listEnumOperationViewModel,
      this._initCreatorBaseModelDomain,
      this._initCreatorBaseListModelDomain
      );

  void dispose() {
    _mapEnumOperationViewModelAndBaseModelDomain = null;
    _mapEnumOperationViewModelAndBaseListModelDomain = null;
    _dispose(_mapEnumOperationViewModelAndStreamControllerForBaseModelDomain);
    _dispose(_mapEnumOperationViewModelAndStreamControllerForBaseListModelDomain);
  }
  
  Type get getTypeBaseModelDomain {
    return _typeBaseModelDomain;
  }

  Type get getTypeBaseListModelDomain {
    return _typeBaseListModelDomain;
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

  set setEnumTypeParameterForCallToMethodSetIteratorForListModelLocalDatabaseAndSetListModelLocalDatabaseUsingAnIteratorFVM(
      BaseTypeParameter baseTypeParameter)
  {
    _enumTypeParameterForCallToMethodSetIteratorForListModelLocalDatabaseAndSetListModelLocalDatabaseUsingAnIteratorFVM = baseTypeParameter;
  }

  set setEnumTypeParameterForCallToMethodSetIteratorForListModelNetworkDatabaseAndSetListModelNetworkDatabaseUsingAnIteratorFVM(
      BaseTypeParameter baseTypeParameter)
  {
    _enumTypeParameterForCallToMethodSetIteratorForListModelNetworkDatabaseAndSetListModelNetworkDatabaseUsingAnIteratorFVM = baseTypeParameter;
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

  EnumTypeParameter get getEnumTypeParameterForCallToMethodSetIteratorForListModelLocalDatabaseAndSetListModelLocalDatabaseUsingAnIteratorFVM {
    if(_enumTypeParameterForCallToMethodSetIteratorForListModelLocalDatabaseAndSetListModelLocalDatabaseUsingAnIteratorFVM  == null) {
      throw Exception("no setters enum");
    }
    return _enumTypeParameterForCallToMethodSetIteratorForListModelLocalDatabaseAndSetListModelLocalDatabaseUsingAnIteratorFVM;
  }

  EnumTypeParameter get getEnumTypeParameterForCallToMethodSetIteratorForListModelNetworkDatabaseAndSetListModelNetworkDatabaseUsingAnIteratorFVM {
    if(_enumTypeParameterForCallToMethodSetIteratorForListModelNetworkDatabaseAndSetListModelNetworkDatabaseUsingAnIteratorFVM  == null) {
      throw Exception("no setters enum");
    }
    return _enumTypeParameterForCallToMethodSetIteratorForListModelNetworkDatabaseAndSetListModelNetworkDatabaseUsingAnIteratorFVM;
  }

  /* End Methods BaseTypeParameter */

  /* Start Methods Model */

  Stream<T> getStreamModelDomain(EnumOperationViewModel operation) {
    return _getMapEnumOperationViewModelAndStreamControllerForBaseModelDomain[operation].stream;
  }

  Future<T> getFutureModelDomain(EnumOperationViewModel operation) async {
    return _getMapEnumOperationViewModelAndBaseModelDomain[operation];
  }

  void setModelDomain(T newModel,EnumOperationViewModel operation) {
    _getMapEnumOperationViewModelAndBaseModelDomain[operation] = newModel;
  }

  T getModelDomain(EnumOperationViewModel operation) {
    return _getMapEnumOperationViewModelAndBaseModelDomain[operation];
  }

  void notifyStreamModelDomain(EnumOperationViewModel operation) {
    _getMapEnumOperationViewModelAndStreamControllerForBaseModelDomain[operation].add(
        _getMapEnumOperationViewModelAndBaseModelDomain[operation]
    );
  }

  @protected
  set setParameterModelDomainNamedUniqueId(EnumOperationViewModel operation) {
    _getMapEnumOperationViewModelAndBaseModelDomain[operation].setUniqueId = const Uuid().v1();
  }

  /* End Methods Model */

  /* Start Methods ListModel */

  Stream<List<T>> get getStreamListModelDomainFromLocalDatabase  {
    return _streamControllerListModelDomainFromLocalDatabase.stream;
  }
  
  Stream<List<T>> get getStreamListModelDomainFromNetworkDatabase  {
    return _streamControllerListModelDomainFromNetworkDatabase.stream;
  }

  Future<List<T>> get getFutureListModelDomainFromLocalDatabase async {
    var list = List.empty();
    for(BaseModelDomain value in _baseListModelDomain.getListModelLocalDatabase) {
      list.add(value);
    }
    return list;
  }

  Future<List<T>> get getFutureListModelDomainFromNetworkDatabase async {
    var list = List.empty();
    for(BaseModelDomain value in _baseListModelDomain.getListModelNetworkDatabase) {
      list.add(value);
    }
    return list;
  }

  void notifyStreamListModelDomainFromLocalDatabase() {
    if(_baseListModelDomain == null) {
      throw Exception("null object ListModel");
    }
    _streamControllerListModelDomainFromLocalDatabase.add(_baseListModelDomain.getListModelLocalDatabase);
  }

  void notifyStreamListModelDomainFromNetworkDatabase() {
    if(_baseListModelDomain == null) {
      throw Exception("null object ListModel");
    }
    _streamControllerListModelDomainFromNetworkDatabase.add(_baseListModelDomain.getListModelNetworkDatabase);
  }

  @protected
  Y get getListModelDomain   {
    if(_baseListModelDomain == null) {
      return throw Exception("null object ListModel");
    }
    return _baseListModelDomain;
  }

  /* End Methods ListModel */
  
  Map<EnumOperationViewModel,T> get _getMapEnumOperationViewModelAndBaseModelDomain {
    _mapEnumOperationViewModelAndBaseModelDomain ??= _creationAndGetMapEnumOperationViewModelAndBaseModelDomain();
    return _mapEnumOperationViewModelAndBaseModelDomain;
  }

  Map<EnumOperationViewModel,StreamController<T>> get _getMapEnumOperationViewModelAndStreamControllerForBaseModelDomain {
    _mapEnumOperationViewModelAndStreamControllerForBaseModelDomain ??= _creationAndGetMapEnumOperationViewModelAndStreamControllerForBaseModelDomain();
    return _mapEnumOperationViewModelAndStreamControllerForBaseModelDomain;
  }

  Map<EnumOperationViewModel,Y> get _getMapEnumOperationViewModelAndBaseListModelDomain {
    _mapEnumOperationViewModelAndBaseListModelDomain ??= _creationAndGetMapEnumOperationViewModelAndBaseListModelDomain();
    return _mapEnumOperationViewModelAndBaseListModelDomain;
  }

  Map<EnumOperationViewModel,StreamController<Y>> get _getMapEnumOperationViewModelAndStreamControllerForBaseListModelDomain {
    _mapEnumOperationViewModelAndStreamControllerForBaseListModelDomain ??= _creationAndGetMapEnumOperationViewModelAndStreamControllerForBaseListModelDomain();
    return _mapEnumOperationViewModelAndStreamControllerForBaseListModelDomain;
  }

  Map<EnumOperationViewModel,T> _creationAndGetMapEnumOperationViewModelAndBaseModelDomain() {
    if(_listEnumOperationViewModel.isEmpty) {
      return {};
    }
    Map<EnumOperationViewModel,T> map = {};
    for(EnumOperationViewModel viewModelOperation in _listEnumOperationViewModel) {
      map[viewModelOperation] = _initCreatorBaseModelDomain();
    }
    return map;
  }

  Map<EnumOperationViewModel,StreamController<T>> _creationAndGetMapEnumOperationViewModelAndStreamControllerForBaseModelDomain() {
    if(_listEnumOperationViewModel.isEmpty) {
      return {};
    }
    Map<EnumOperationViewModel,StreamController<T>> map = {};
    for(EnumOperationViewModel viewModelOperation in _listEnumOperationViewModel) {
      map[viewModelOperation] = StreamController<T>.broadcast();
    }
    return map;
  }
  
  Map<EnumOperationViewModel,Y> _creationAndGetMapEnumOperationViewModelAndBaseListModelDomain() {
    if(_listEnumOperationViewModel.isEmpty) {
      return {};
    }
    Map<EnumOperationViewModel,Y> map = {};
    for(EnumOperationViewModel viewModelOperation in _listEnumOperationViewModel) {
      map[viewModelOperation] = _initCreatorBaseListModelDomain();
    }
    return map;
  }

  Map<EnumOperationViewModel,StreamController<Y>> _creationAndGetMapEnumOperationViewModelAndStreamControllerForBaseListModelDomain() {
    if(_listEnumOperationViewModel.isEmpty) {
      return {};
    }
    Map<EnumOperationViewModel,StreamController<Y>> map = {};
    for(EnumOperationViewModel viewModelOperation in _listEnumOperationViewModel) {
      map[viewModelOperation] = StreamController<Y>.broadcast();
    }
    return map;
  }

  void _dispose(Map<EnumOperationViewModel,StreamController> map) {
    if(map.values.isEmpty) {
      map = null;
    } else {
      for (StreamController streamController in map.values) {
        if (streamController != null) {
          if (!streamController.isClosed) {
            streamController.close();
          }
          streamController = null;
        }
      }
      map = null;
    }
  }

}