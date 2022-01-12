import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:library_architecture_mvvm_modify/base_list_model/base_list_model_domain.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_model_domain.dart';
import 'package:library_architecture_mvvm_modify/base_type_parameter/base_type_parameter.dart';
import 'package:library_architecture_mvvm_modify/base_type_parameter/bool_type_parameter.dart';
import 'package:library_architecture_mvvm_modify/base_type_parameter/enum_type_parameter.dart';
import 'package:library_architecture_mvvm_modify/base_view_model/enum_base_type_parameter_object_operation_view_model.dart';
import 'package:library_architecture_mvvm_modify/base_view_model/enum_base_list_model_domain_object_operation_view_model.dart';
import 'package:library_architecture_mvvm_modify/base_view_model/enum_base_model_domain_object_operation_view_model.dart';
import 'package:library_architecture_mvvm_modify/base_view_model/enum_iterator_object_operation_view_model.dart';
import 'package:uuid/uuid.dart';

typedef ItemCreator<S> = S Function();

abstract class BaseViewModel<T extends BaseModelDomain,
                              Y extends BaseListModelDomain<T>>
{
  /* Constructor */
  final List<EnumBaseModelDomainObjectOperationViewModel> _listEnumBaseModelDomainObjectOperationViewModel;
  final List<EnumBaseListModelDomainObjectOperationViewModel> _listEnumBaseListModelDomainObjectOperationViewModel;
  final ItemCreator<T> _initCreatorBaseModelDomain;
  final ItemCreator<Y> _initCreatorBaseListModelDomain;

  /* Types */
  final Type _typeBaseModelDomain = T;
  final Type _typeBaseListModelDomain = Y;

  /* Maps */
  final Map<EnumBaseTypeParameterObjectOperationViewModel,BaseTypeParameter> _mapEnumBaseTypeParameterObjectOperationViewModelAndBaseTypeParameter = {
    EnumBaseTypeParameterObjectOperationViewModel.getListModelFromLocalDatabaseThereIsParameter : BoolTypeParameter(false),
    EnumBaseTypeParameterObjectOperationViewModel.getListModelFromNetworkDatabaseThereIsParameter : BoolTypeParameter(false),
    EnumBaseTypeParameterObjectOperationViewModel.getModelFromLocalDatabaseThereIsParameter : BoolTypeParameter(false),
    EnumBaseTypeParameterObjectOperationViewModel.getModelFromNetworkDatabaseThereIsParameter : BoolTypeParameter(false),
  };
  final Map<EnumIteratorObjectOperationViewModel,EnumTypeParameter> _mapEnumIteratorObjectOperationViewModelAndEnumTypeParameter = {
    EnumIteratorObjectOperationViewModel.getListModelFromLocalDatabaseThereIsParameter : EnumTypeParameter(
        EnumIteratorObjectOperationViewModel.getListModelFromLocalDatabaseThereIsParameter
    ),
    EnumIteratorObjectOperationViewModel.getListModelFromNetworkDatabaseThereIsParameter : EnumTypeParameter(
        EnumIteratorObjectOperationViewModel.getListModelFromNetworkDatabaseThereIsParameter
    ),
  };
  Map<EnumBaseModelDomainObjectOperationViewModel,T> _mapEnumBaseModelDomainObjectOperationViewModelAndBaseModelDomain;
  Map<EnumBaseModelDomainObjectOperationViewModel,StreamController<T>> _mapEnumBaseModelDomainObjectOperationViewModelAndStreamControllerForBaseModelDomain;
  Map<EnumBaseListModelDomainObjectOperationViewModel,Y> _mapEnumBaseListModelDomainObjectOperationViewModelAndBaseListModelDomain;
  Map<EnumBaseListModelDomainObjectOperationViewModel,StreamController<List<T>>> _mapEnumBaseListModelDomainObjectOperationViewModelAndStreamControllerForListBaseModelDomain;

  BaseViewModel(
      this._listEnumBaseModelDomainObjectOperationViewModel,
      this._listEnumBaseListModelDomainObjectOperationViewModel,
      this._initCreatorBaseModelDomain,
      this._initCreatorBaseListModelDomain
      );

  void dispose() {
    _mapEnumBaseModelDomainObjectOperationViewModelAndBaseModelDomain = null;
    _mapEnumBaseListModelDomainObjectOperationViewModelAndBaseListModelDomain = null;
    _dispose(_mapEnumBaseModelDomainObjectOperationViewModelAndStreamControllerForBaseModelDomain);
    _dispose(_mapEnumBaseListModelDomainObjectOperationViewModelAndStreamControllerForListBaseModelDomain);
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

  T getModelDomain(EnumBaseModelDomainObjectOperationViewModel operation) {
    return _getMapEnumOperationViewModelAndBaseModelDomain[operation];
  }

  void setModelDomain(T newModel,EnumBaseModelDomainObjectOperationViewModel operation) {
    _getMapEnumOperationViewModelAndBaseModelDomain[operation] = newModel;
  }

  Future<T> getFutureModelDomain(EnumBaseModelDomainObjectOperationViewModel operation) async {
    return _getMapEnumOperationViewModelAndBaseModelDomain[operation];
  }

  Stream<T> getStreamModelDomain(EnumBaseModelDomainObjectOperationViewModel operation) {
    return _getMapEnumOperationViewModelAndStreamControllerForBaseModelDomain[operation].stream;
  }
  
  void notifyStreamModelDomain(EnumBaseModelDomainObjectOperationViewModel operation) {
    _getMapEnumOperationViewModelAndStreamControllerForBaseModelDomain[operation].add(
        _getMapEnumOperationViewModelAndBaseModelDomain[operation]
    );
  }

  @protected
  set setParameterModelDomainNamedUniqueId(EnumBaseModelDomainObjectOperationViewModel operation) {
    _getMapEnumOperationViewModelAndBaseModelDomain[operation].setUniqueId = const Uuid().v1();
  }

  /* End Methods Model */

  /* Start Methods ListModel */

  List<T>  getListModelDomain(EnumBaseModelDomainObjectOperationViewModel operation)  {
    return _getMapEnumBaseListModelDomainObjectOperationViewModelAndBaseListModelDomain[operation].getListModelDomain;
  }

  void setListModelDomain(List<T> newModel,EnumBaseModelDomainObjectOperationViewModel operation) {
    _getMapEnumBaseListModelDomainObjectOperationViewModelAndBaseListModelDomain[operation].setListModelDomain = newModel;
  }

  Future<List<T>> getFutureListModelDomain(EnumBaseModelDomainObjectOperationViewModel operation) async {
    var list = List.empty();
    for(BaseModelDomain value in _getMapEnumBaseListModelDomainObjectOperationViewModelAndBaseListModelDomain[operation].getListModelDomain) {
      list.add(value);
    }
    return list;
  }
  
  Stream<List<T>> getStreamListModelDomain(EnumBaseModelDomainObjectOperationViewModel operation) {
    return _getMapEnumBaseListModelDomainObjectOperationViewModelAndStreamControllerForListBaseModelDomain[operation].stream;
  }

  void notifyStreamListModelDomain(EnumBaseModelDomainObjectOperationViewModel operation) {
    _getMapEnumBaseListModelDomainObjectOperationViewModelAndStreamControllerForListBaseModelDomain[operation].add(
        _getMapEnumBaseListModelDomainObjectOperationViewModelAndBaseListModelDomain[operation].getListModelDomain
    );
  }

  /* End Methods ListModel */
  
  Map<EnumBaseModelDomainObjectOperationViewModel,T> get _getMapEnumOperationViewModelAndBaseModelDomain {
    if(_mapEnumBaseModelDomainObjectOperationViewModelAndBaseModelDomain != null) {
      return _mapEnumBaseModelDomainObjectOperationViewModelAndBaseModelDomain;
    }
    _mapEnumBaseModelDomainObjectOperationViewModelAndBaseModelDomain = _creationAndGetMapEnumOperationViewModelAndBaseModelDomain();
    return _mapEnumBaseModelDomainObjectOperationViewModelAndBaseModelDomain;
  }

  Map<EnumBaseModelDomainObjectOperationViewModel,StreamController<T>> get _getMapEnumOperationViewModelAndStreamControllerForBaseModelDomain {
    if(_mapEnumBaseModelDomainObjectOperationViewModelAndStreamControllerForBaseModelDomain != null) {
      return _mapEnumBaseModelDomainObjectOperationViewModelAndStreamControllerForBaseModelDomain;
    }
    _mapEnumBaseModelDomainObjectOperationViewModelAndStreamControllerForBaseModelDomain = _creationAndGetMapEnumOperationViewModelAndStreamControllerForBaseModelDomain();
    return _mapEnumBaseModelDomainObjectOperationViewModelAndStreamControllerForBaseModelDomain;
  }

  Map<EnumBaseListModelDomainObjectOperationViewModel,Y> get _getMapEnumBaseListModelDomainObjectOperationViewModelAndBaseListModelDomain {
    if(_mapEnumBaseListModelDomainObjectOperationViewModelAndBaseListModelDomain != null) {
      return _mapEnumBaseListModelDomainObjectOperationViewModelAndBaseListModelDomain;
    }
    _mapEnumBaseListModelDomainObjectOperationViewModelAndBaseListModelDomain = _creationAndGetMapEnumBaseListModelDomainObjectOperationViewModelAndBaseListModelDomain();
    return _mapEnumBaseListModelDomainObjectOperationViewModelAndBaseListModelDomain;
  }

  Map<EnumBaseListModelDomainObjectOperationViewModel,StreamController<List<T>>> get _getMapEnumBaseListModelDomainObjectOperationViewModelAndStreamControllerForListBaseModelDomain {
    if(_mapEnumBaseListModelDomainObjectOperationViewModelAndStreamControllerForListBaseModelDomain != null) {
      return _mapEnumBaseListModelDomainObjectOperationViewModelAndStreamControllerForListBaseModelDomain;
    }
    _mapEnumBaseListModelDomainObjectOperationViewModelAndStreamControllerForListBaseModelDomain = _creationAndGetMapEnumBaseListModelDomainObjectOperationViewModelAndStreamControllerForListBaseModelDomain();
    return _mapEnumBaseListModelDomainObjectOperationViewModelAndStreamControllerForListBaseModelDomain;
  }

  Map<EnumBaseModelDomainObjectOperationViewModel,T> _creationAndGetMapEnumOperationViewModelAndBaseModelDomain() {
    if(_listEnumBaseModelDomainObjectOperationViewModel.isEmpty) {
      return {};
    }
    Map<EnumBaseModelDomainObjectOperationViewModel,T> map = {};
    for(EnumBaseModelDomainObjectOperationViewModel viewModelOperation in _listEnumBaseModelDomainObjectOperationViewModel) {
      map[viewModelOperation] = _initCreatorBaseModelDomain();
    }
    return map;
  }

  Map<EnumBaseModelDomainObjectOperationViewModel,StreamController<T>> _creationAndGetMapEnumOperationViewModelAndStreamControllerForBaseModelDomain() {
    if(_listEnumBaseModelDomainObjectOperationViewModel.isEmpty) {
      return {};
    }
    Map<EnumBaseModelDomainObjectOperationViewModel,StreamController<T>> map = {};
    for(EnumBaseModelDomainObjectOperationViewModel viewModelOperation in _listEnumBaseModelDomainObjectOperationViewModel) {
      map[viewModelOperation] = StreamController<T>.broadcast();
    }
    return map;
  }
  
  Map<EnumBaseListModelDomainObjectOperationViewModel,Y> _creationAndGetMapEnumBaseListModelDomainObjectOperationViewModelAndBaseListModelDomain() {
    if(_listEnumBaseListModelDomainObjectOperationViewModel.isEmpty) {
      return {};
    }
    Map<EnumBaseListModelDomainObjectOperationViewModel,Y> map = {};
    for(EnumBaseListModelDomainObjectOperationViewModel viewModelOperation in _listEnumBaseListModelDomainObjectOperationViewModel) {
      map[viewModelOperation] = _initCreatorBaseListModelDomain();
    }
    return map;
  }

  Map<EnumBaseListModelDomainObjectOperationViewModel,StreamController<List<T>>> _creationAndGetMapEnumBaseListModelDomainObjectOperationViewModelAndStreamControllerForListBaseModelDomain() {
    if(_listEnumBaseListModelDomainObjectOperationViewModel.isEmpty) {
      return {};
    }
    Map<EnumBaseListModelDomainObjectOperationViewModel,StreamController<List<T>>> map = {};
    for(EnumBaseListModelDomainObjectOperationViewModel viewModelOperation in _listEnumBaseListModelDomainObjectOperationViewModel) {
      map[viewModelOperation] = StreamController<List<T>>.broadcast();
    }
    return map;
  }

  void _dispose(Map<Enum,StreamController> map) {
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