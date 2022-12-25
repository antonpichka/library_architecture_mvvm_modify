import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:library_architecture_mvvm_modify/base_model/interface_clone_stream_model_for_success/i_clone_stream_model_for_success.dart';
import 'package:library_architecture_mvvm_modify/base_model_q_named_service_background_model/base_model_q_named_service_background_model.dart';
import 'package:library_architecture_mvvm_modify/base_model_q_named_service_view_model/enum_for_i_stream_model_vm.dart';
import 'package:library_architecture_mvvm_modify/interface_model_q_named_service_data_source/get_list_model_from_named_service_np_data_source.dart';
import 'package:library_architecture_mvvm_modify/interface_model_q_named_service_data_source/get_list_model_from_named_service_parameter_named_data_source.dart';
import 'package:library_architecture_mvvm_modify/interface_model_q_named_service_data_source/get_model_from_named_service_np_data_source.dart';
import 'package:library_architecture_mvvm_modify/interface_model_q_named_service_data_source/get_model_from_named_service_parameter_named_data_source.dart';
import 'package:library_architecture_mvvm_modify/utility/base_exception/local_exception.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_list_model.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_model.dart';
import 'package:library_architecture_mvvm_modify/utility/base_type_parameter/base_type_parameter.dart';
import 'package:library_architecture_mvvm_modify/utility/i_dispose.dart';
import 'package:library_architecture_mvvm_modify/utility/interface_stream_model/i_stream_model.dart';

abstract class BaseModelQNamedServiceViewModel<T extends BaseModel,Y extends BaseListModel<T>>
    extends BaseModelQNamedServiceBackgroundModel<T,Y>
    implements IDispose
{
  /* List and Map For IStreamModel */
  final List<EnumForIStreamModelVM> _listEnumForIStreamModelVMVM = List.empty(growable: true);
  final Map<EnumForIStreamModelVM,IStreamModel<T,Y>?> _mapEnumForIStreamModelVMVMAndIStreamModel = {};

  /* Init DataSource */
  final bool _isExistsDataSource;

  /* Init Clone */
  final ICloneStreamModelForSuccess<T,Y> _iCloneStreamModelForSuccess;

  BaseModelQNamedServiceViewModel.thereIsDataSource(this._iCloneStreamModelForSuccess,{Object? theClassForWhichTheMethodExecutionCounterWillNotIncreaseAndThisIsTheBaseNamedViewListViewModel})
      : _isExistsDataSource = true, super.thereIsDataSource(theClassForWhichTheMethodExecutionCounterWillNotIncreaseAndThisIsTheBaseNamedViewListViewModel: theClassForWhichTheMethodExecutionCounterWillNotIncreaseAndThisIsTheBaseNamedViewListViewModel)
  {
    _initThereIsDataSourceListEnumBaseModelAndBaseListModelVM();
    _initMapEnumForIStreamModelVMAndIStreamModel();
  }

  BaseModelQNamedServiceViewModel.noDataSource(List<EnumForIStreamModelVM> list,this._iCloneStreamModelForSuccess,{Object? theClassForWhichTheMethodExecutionCounterWillNotIncreaseAndThisIsTheBaseNamedViewListViewModel})
      : _isExistsDataSource = false, super.thereIsDataSource(theClassForWhichTheMethodExecutionCounterWillNotIncreaseAndThisIsTheBaseNamedViewListViewModel: theClassForWhichTheMethodExecutionCounterWillNotIncreaseAndThisIsTheBaseNamedViewListViewModel)
  {
    _initNoDataSourceListEnumForIStreamModelVM(list);
    _initMapEnumForIStreamModelVMAndIStreamModel();
  }

  @override
  void dispose() {
    incrementForNumberOfExecutedMethodsInThisClass();
    _mapEnumForIStreamModelVMVMAndIStreamModel.forEach((
        EnumForIStreamModelVM enumBaseModelAndBaseListModelVM,
        IStreamModel<T,Y>? iStreamModel)
    {
      iStreamModel?.dispose();
    });
  }

  /// Start IStreamModel **/
  @protected
  @nonVirtual
  IStreamModel<T,Y>? getIStreamModel(
      EnumForIStreamModelVM operation)
  {
    incrementForNumberOfExecutedMethodsInThisClass();
    if(!_mapEnumForIStreamModelVMVMAndIStreamModel.containsKey(operation)) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"$operation not found");
    }
    return _mapEnumForIStreamModelVMVMAndIStreamModel[operation];
  }
  /// End IStreamModel **/

  /// Start Model **/
  @protected
  @nonVirtual
  Future<T?> getFutureModel(
      EnumForIStreamModelVM operation)
  async {
    incrementForNumberOfExecutedMethodsInThisClass();
    if(!_mapEnumForIStreamModelVMVMAndIStreamModel.containsKey(operation)) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"$operation not found");
    }
    return _mapEnumForIStreamModelVMVMAndIStreamModel[operation]?.getModel;
  }

  @protected
  @nonVirtual
  Stream<T>? getStreamModel(
      EnumForIStreamModelVM operation)
  {
    incrementForNumberOfExecutedMethodsInThisClass();
    if(!_mapEnumForIStreamModelVMVMAndIStreamModel.containsKey(operation)) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"$operation not found");
    }
    return _mapEnumForIStreamModelVMVMAndIStreamModel[operation]?.getStreamModel;
  }

  @protected
  @nonVirtual
  T? getModel(
      EnumForIStreamModelVM operation)
  {
    incrementForNumberOfExecutedMethodsInThisClass();
    if(!_mapEnumForIStreamModelVMVMAndIStreamModel.containsKey(operation)) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"$operation not found");
    }
    return _mapEnumForIStreamModelVMVMAndIStreamModel[operation]?.getModel;
  }

  @protected
  @nonVirtual
  void setModel(
      EnumForIStreamModelVM operation,
      T? model)
  {
    incrementForNumberOfExecutedMethodsInThisClass();
    if(!_mapEnumForIStreamModelVMVMAndIStreamModel.containsKey(operation)) {
      throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"$operation not found");
    }
    _mapEnumForIStreamModelVMVMAndIStreamModel[operation]
        ?.setModel = model;
  }

  @protected
  @nonVirtual
  void notifyStreamModel(
      EnumForIStreamModelVM operation)
  {
    incrementForNumberOfExecutedMethodsInThisClass();
    if(!_mapEnumForIStreamModelVMVMAndIStreamModel.containsKey(operation)) {
      throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"$operation not found");
    }
    _mapEnumForIStreamModelVMVMAndIStreamModel[operation]
        ?.notifyStreamModel(thisClass);
  }

  @protected
  @nonVirtual
  void notifyStreamDelayInSecondsModel(
      EnumForIStreamModelVM operation)
  {
    incrementForNumberOfExecutedMethodsInThisClass();
    if(!_mapEnumForIStreamModelVMVMAndIStreamModel.containsKey(operation)) {
      throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"$operation not found");
    }
    _mapEnumForIStreamModelVMVMAndIStreamModel[operation]
        ?.notifyStreamDelayInSecondsModel(thisClass);
  }
  /// End Model **/

  /// Start ListModel **/
  @protected
  @nonVirtual
  Future<Y?> getFutureListModel(
      EnumForIStreamModelVM operation)
  async {
    incrementForNumberOfExecutedMethodsInThisClass();
    if(!_mapEnumForIStreamModelVMVMAndIStreamModel.containsKey(operation)) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"$operation not found");
    }
    return _mapEnumForIStreamModelVMVMAndIStreamModel[operation]?.getListModel;
  }

  @protected
  @nonVirtual
  Stream<Y>? getStreamListModel(
      EnumForIStreamModelVM operation)
  {
    incrementForNumberOfExecutedMethodsInThisClass();
    if(!_mapEnumForIStreamModelVMVMAndIStreamModel.containsKey(operation)) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"$operation not found");
    }
    return _mapEnumForIStreamModelVMVMAndIStreamModel[operation]?.getStreamListModel;
  }

  @protected
  @nonVirtual
  Y? getListModel(
      EnumForIStreamModelVM operation)
  {
    incrementForNumberOfExecutedMethodsInThisClass();
    if(!_mapEnumForIStreamModelVMVMAndIStreamModel.containsKey(operation)) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"$operation not found");
    }
    return _mapEnumForIStreamModelVMVMAndIStreamModel[operation]?.getListModel;
  }

  @protected
  @nonVirtual
  void setListModel(
      EnumForIStreamModelVM operation,
      Y? listModel)
  {
    incrementForNumberOfExecutedMethodsInThisClass();
    if(!_mapEnumForIStreamModelVMVMAndIStreamModel.containsKey(operation)) {
      throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"$operation not found");
    }
    _mapEnumForIStreamModelVMVMAndIStreamModel[operation]
        ?.setListModel = listModel;
  }

  @protected
  @nonVirtual
  void notifyStreamListModel(
      EnumForIStreamModelVM operation)
  {
    incrementForNumberOfExecutedMethodsInThisClass();
    if(!_mapEnumForIStreamModelVMVMAndIStreamModel.containsKey(operation)) {
      throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"$operation not found");
    }
    _mapEnumForIStreamModelVMVMAndIStreamModel[operation]
        ?.notifyStreamListModel(thisClass);
  }

  @protected
  @nonVirtual
  void notifyStreamDelayInSecondsListModel(
      EnumForIStreamModelVM operation)
  {
    incrementForNumberOfExecutedMethodsInThisClass();
    if(!_mapEnumForIStreamModelVMVMAndIStreamModel.containsKey(operation)) {
      throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"$operation not found");
    }
    _mapEnumForIStreamModelVMVMAndIStreamModel[operation]
        ?.notifyStreamDelayInSecondsListModel(thisClass);
  }
  /// End ListModel **/

  /// Start DataSource **/
  ///
  // start getListNP 4
  @override
  @protected
  @nonVirtual
  Future<Y?> getListModelFromNamedServiceNP()
  {
    if(_isNotExistsDataSource) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,'Constructor call thereIsDataSource...: $_isExistsDataSource');
    }
    return super.getListModelFromNamedServiceNP();
  }

  @override
  @protected
  @nonVirtual
  Future<Y?> getListModelFromNamedServiceNPUsingTypeParameterForFBDS<C extends BaseTypeParameter>(
      C? typeParameterForFBDS)
  {
    if(_isNotExistsDataSource) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    return super.getListModelFromNamedServiceNPUsingTypeParameterForFBDS<C>(typeParameterForFBDS);
  }

  @protected
  @nonVirtual
  Future<Y?> getListModelFromNamedServiceNPAndSetListModel()
  async {
    Y? listModel = await getListModelFromNamedServiceNP();
    setListModel(EnumForIStreamModelVM.getListNP,listModel);
    return getListModel(EnumForIStreamModelVM.getListNP);
  }

  @protected
  @nonVirtual
  Future<Y?> getListModelFromNamedServiceNPAndSetListModelUsingTypeParameterForFBDS<C extends BaseTypeParameter>(
      C typeParameterForFBDS)
  async {
    Y? listModel = await getListModelFromNamedServiceNPUsingTypeParameterForFBDS<C>(typeParameterForFBDS);
    setListModel(EnumForIStreamModelVM.getListNP,listModel);
    return getListModel(EnumForIStreamModelVM.getListNP);
  }
  // end getListNP 4

  // start getListParameterNamed 4
  @override
  @protected
  @nonVirtual
  Future<Y?> getListModelFromNamedServiceParameterNamed<X extends BaseTypeParameter>(
      X? typeParameter)
  {
    if(_isNotExistsDataSource) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    return super.getListModelFromNamedServiceParameterNamed<X>(typeParameter);
  }

  @override
  @protected
  @nonVirtual
  Future<Y?> getListModelFromNamedServiceParameterNamedUsingTypeParameterForFBDS<X extends BaseTypeParameter,C extends BaseTypeParameter>(
      X? typeParameter,
      C? typeParameterForFBDS)
  {
    if(_isNotExistsDataSource) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    return super.getListModelFromNamedServiceParameterNamedUsingTypeParameterForFBDS<X,C>(
        typeParameter,
        typeParameterForFBDS);
  }

  @protected
  @nonVirtual
  Future<Y?> getListModelFromNamedServiceParameterNamedAndSetListModel<X extends BaseTypeParameter>(
      X typeParameter)
  async {
    Y? listModel  = await getListModelFromNamedServiceParameterNamed<X>(typeParameter);
    setListModel(EnumForIStreamModelVM.getListParameterNamed,listModel);
    return getListModel(EnumForIStreamModelVM.getListParameterNamed);
  }

  @protected
  @nonVirtual
  Future<Y?> getListModelFromNamedServiceParameterNamedAndSetListModelUsingTypeParameterForFBDS<X extends BaseTypeParameter,C extends BaseTypeParameter>(
      X typeParameter,
      C typeParameterForFBDS)
  async {
    Y? listModel = await getListModelFromNamedServiceParameterNamedUsingTypeParameterForFBDS<X,C>(
        typeParameter,
        typeParameterForFBDS);
    setListModel(EnumForIStreamModelVM.getListParameterNamed,listModel);
    return getListModel(EnumForIStreamModelVM.getListParameterNamed);
  }
  // end getListParameterNamed 4

  // start getNP 4
  @override
  @protected
  @nonVirtual
  Future<T?> getModelFromNamedServiceNP()
  {
    if(_isNotExistsDataSource) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    return super.getModelFromNamedServiceNP();
  }

  @override
  @protected
  @nonVirtual
  Future<T?> getModelFromNamedServiceNPUsingTypeParameterForFBDS<C extends BaseTypeParameter>(
      C? typeParameterForFBDS)
  {
    if(_isNotExistsDataSource) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    return super.getModelFromNamedServiceNPUsingTypeParameterForFBDS<C>(typeParameterForFBDS);
  }

  @protected
  @nonVirtual
  Future<T?> getModelFromNamedServiceNPAndSetModel()
  async {
    T? model = await getModelFromNamedServiceNP();
    setModel(EnumForIStreamModelVM.getNP,model);
    return getModel(EnumForIStreamModelVM.getNP);
  }

  @protected
  @nonVirtual
  Future<T?> getModelFromNamedServiceNPAndSetModelUsingTypeParameterForFBDS<C extends BaseTypeParameter>(
      C typeParameterForFBDS)
  async {
    T? model = await getModelFromNamedServiceNPUsingTypeParameterForFBDS<C>(typeParameterForFBDS);
    setModel(EnumForIStreamModelVM.getNP,model);
    return getModel(EnumForIStreamModelVM.getNP);
  }
  // end getNP 4

  // start getParameterNamed 4
  @override
  @protected
  @nonVirtual
  Future<T?> getModelFromNamedServiceParameterNamed<X extends BaseTypeParameter>(
      X? typeParameter)
  {
    if(_isNotExistsDataSource) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    return super.getModelFromNamedServiceParameterNamed<X>(typeParameter);
  }

  @override
  @protected
  @nonVirtual
  Future<T?> getModelFromNamedServiceParameterNamedUsingTypeParameterForFBDS<X extends BaseTypeParameter,C extends BaseTypeParameter>(
      X? typeParameter,
      C? typeParameterForFBDS)
  {
    if(_isNotExistsDataSource) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    return super.getModelFromNamedServiceParameterNamedUsingTypeParameterForFBDS<X,C>(
        typeParameter,
        typeParameterForFBDS);
  }

  @protected
  @nonVirtual
  Future<T?> getModelFromNamedServiceParameterNamedAndSetModel<X extends BaseTypeParameter>(
      X typeParameter)
  async {
    T? model = await getModelFromNamedServiceParameterNamed<X>(typeParameter);
    setModel(EnumForIStreamModelVM.getParameterNamed,model);
    return getModel(EnumForIStreamModelVM.getParameterNamed);
  }

  @protected
  @nonVirtual
  Future<T?> getModelFromNamedServiceParameterNamedAndSetModelUsingTypeParameterForFBDS<X extends BaseTypeParameter,C extends BaseTypeParameter>(
      X typeParameter,
      C typeParameterForFBDS)
  async {
    T? model = await getModelFromNamedServiceParameterNamedUsingTypeParameterForFBDS<X,C>(
        typeParameter,
        typeParameterForFBDS);
    setModel(EnumForIStreamModelVM.getParameterNamed,model);
    return getModel(EnumForIStreamModelVM.getParameterNamed);
  }
  // end getParameterNamed 4

  // start insertNP 2
  @override
  @protected
  @nonVirtual
  Future<X?> insertModelToNamedServiceNP<X extends BaseTypeParameter>()
  {
    if(_isNotExistsDataSource) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    return super.insertModelToNamedServiceNP<X>();
  }

  @override
  @protected
  @nonVirtual
  Future<X?> insertModelToNamedServiceNPUsingTypeParameterForFBDS<X extends BaseTypeParameter,C extends BaseTypeParameter>(
      C? typeParameterForFBDS)
  {
    if(_isNotExistsDataSource) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    return super.insertModelToNamedServiceNPUsingTypeParameterForFBDS<X,C>(typeParameterForFBDS);
  }
  // end insertNP 2

  // start insertParameterNamed 2
  @override
  @protected
  @nonVirtual
  Future<Z?> insertModelToNamedServiceParameterNamed<Z extends BaseTypeParameter,X extends BaseTypeParameter>(
      X? typeParameter)
  {
    if(_isNotExistsDataSource) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    return super.insertModelToNamedServiceParameterNamed<Z,X>(typeParameter);
  }

  @override
  @protected
  @nonVirtual
  Future<Z?> insertModelToNamedServiceParameterNamedUsingTypeParameterForFBDS<Z extends BaseTypeParameter,X extends BaseTypeParameter,C extends BaseTypeParameter>(
      X? typeParameter,
      C? typeParameterForFBDS)
  {
    if(_isNotExistsDataSource) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    return super.insertModelToNamedServiceParameterNamedUsingTypeParameterForFBDS<Z,X,C>(
        typeParameter,
        typeParameterForFBDS);
  }
  // end insertParameterNamed 2

  // start insertListNP 2
  @override
  @protected
  @nonVirtual
  Future<X?> insertListModelToNamedServiceNP<X extends BaseTypeParameter>()
  {
    if(_isNotExistsDataSource) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    return super.insertListModelToNamedServiceNP<X>();
  }

  @override
  @protected
  @nonVirtual
  Future<X?> insertListModelToNamedServiceNPUsingTypeParameterForFBDS<X extends BaseTypeParameter,C extends BaseTypeParameter>(
      C? typeParameterForFBDS)
  {
    if(_isNotExistsDataSource) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    return super.insertListModelToNamedServiceNPUsingTypeParameterForFBDS<X,C>(typeParameterForFBDS);
  }
  // end insertListNP 2

  // start insertListParameterNamed 2
  @override
  @protected
  @nonVirtual
  Future<Z?> insertListModelToNamedServiceParameterNamed<Z extends BaseTypeParameter,X extends BaseTypeParameter>(
      X? typeParameter)
  {
    if(_isNotExistsDataSource) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    return super.insertListModelToNamedServiceParameterNamed<Z,X>(typeParameter);
  }

  @override
  @protected
  @nonVirtual
  Future<Z?> insertListModelToNamedServiceParameterNamedUsingTypeParameterForFBDS<Z extends BaseTypeParameter,X extends BaseTypeParameter,C extends BaseTypeParameter>(
      X? typeParameter,
      C? typeParameterForFBDS)
  {
    if(_isNotExistsDataSource) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    return super.insertListModelToNamedServiceParameterNamedUsingTypeParameterForFBDS<Z,X,C>(
        typeParameter,
        typeParameterForFBDS);
  }
  // end insertListParameterNamed 2

  // start updateNP 2
  @override
  @protected
  @nonVirtual
  Future<X?> updateModelToNamedServiceNP<X extends BaseTypeParameter>()
  {
    if(_isNotExistsDataSource) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    return super.updateModelToNamedServiceNP<X>();
  }

  @override
  @protected
  @nonVirtual
  Future<X?> updateModelToNamedServiceNPUsingTypeParameterForFBDS<X extends BaseTypeParameter,C extends BaseTypeParameter>(
      C? typeParameterForFBDS)
  {
    if(_isNotExistsDataSource) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    return super.updateModelToNamedServiceNPUsingTypeParameterForFBDS<X,C>(typeParameterForFBDS);
  }
  // end updateNP 2

  // start updateParameterNamed 2
  @override
  @protected
  @nonVirtual
  Future<Z?> updateModelToNamedServiceParameterNamed<Z extends BaseTypeParameter,X extends BaseTypeParameter>(
      X? typeParameter)
  {
    if(_isNotExistsDataSource) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    return super.updateModelToNamedServiceParameterNamed<Z,X>(typeParameter);
  }

  @override
  @protected
  @nonVirtual
  Future<Z?> updateModelToNamedServiceParameterNamedUsingTypeParameterForFBDS<Z extends BaseTypeParameter,X extends BaseTypeParameter,C extends BaseTypeParameter>(
      X? typeParameter,
      C? typeParameterForFBDS)
  {
    if(_isNotExistsDataSource) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    return super.updateModelToNamedServiceParameterNamedUsingTypeParameterForFBDS<Z,X,C>(
        typeParameter,
        typeParameterForFBDS);
  }
  // end updateParameterNamed 2

  // start updateListNP 2
  @override
  @protected
  @nonVirtual
  Future<X?> updateListModelToNamedServiceNP<X extends BaseTypeParameter>()
  {
    if(_isNotExistsDataSource) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    return super.updateListModelToNamedServiceNP<X>();
  }

  @override
  @protected
  @nonVirtual
  Future<X?> updateListModelToNamedServiceNPUsingTypeParameterForFBDS<X extends BaseTypeParameter,C extends BaseTypeParameter>(
      C? typeParameterForFBDS)
  {
    if(_isNotExistsDataSource) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    return super.updateListModelToNamedServiceNPUsingTypeParameterForFBDS<X,C>(typeParameterForFBDS);
  }
  // end updateListNP 2

  // start updateListParameterNamed 2
  @override
  @protected
  @nonVirtual
  Future<Z?> updateListModelToNamedServiceParameterNamed<Z extends BaseTypeParameter,X extends BaseTypeParameter>(
      X? typeParameter)
  {
    if(_isNotExistsDataSource) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    return super.updateListModelToNamedServiceParameterNamed<Z,X>(typeParameter);
  }

  @override
  @protected
  @nonVirtual
  Future<Z?> updateListModelToNamedServiceParameterNamedUsingTypeParameterForFBDS<Z extends BaseTypeParameter,X extends BaseTypeParameter,C extends BaseTypeParameter>(
      X? typeParameter,
      C? typeParameterForFBDS)
  {
    if(_isNotExistsDataSource) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    return super.updateListModelToNamedServiceParameterNamedUsingTypeParameterForFBDS<Z,X,C>(
        typeParameter,
        typeParameterForFBDS);
  }
  // end updateListParameterNamed 2

  // start deleteNP 2
  @override
  @protected
  @nonVirtual
  Future<X?> deleteModelToNamedServiceNP<X extends BaseTypeParameter>()
  {
    if(_isNotExistsDataSource) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    return super.deleteModelToNamedServiceNP<X>();
  }

  @override
  @protected
  @nonVirtual
  Future<X?> deleteModelToNamedServiceNPUsingTypeParameterForFBDS<X extends BaseTypeParameter,C extends BaseTypeParameter>(
      C? typeParameterForFBDS)
  {
    if(_isNotExistsDataSource) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    return super.deleteModelToNamedServiceNPUsingTypeParameterForFBDS<X,C>(typeParameterForFBDS);
  }
  // end deleteNP 2

  // start deleteParameterNamed 2
  @override
  @protected
  @nonVirtual
  Future<Z?> deleteModelToNamedServiceParameterNamed<Z extends BaseTypeParameter,X extends BaseTypeParameter>(
      X? typeParameter)
  {
    if(_isNotExistsDataSource) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    return super.deleteModelToNamedServiceParameterNamed<Z,X>(typeParameter);
  }

  @override
  @protected
  @nonVirtual
  Future<Z?> deleteModelToNamedServiceParameterNamedUsingTypeParameterForFBDS<Z extends BaseTypeParameter,X extends BaseTypeParameter,C extends BaseTypeParameter>(
      X? typeParameter,
      C? typeParameterForFBDS)
  {
    if(_isNotExistsDataSource) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    return super.deleteModelToNamedServiceParameterNamedUsingTypeParameterForFBDS<Z,X,C>(
        typeParameter,
        typeParameterForFBDS);
  }
  // end deleteParameterNamed 2

  // start deleteListNP 2
  @override
  @protected
  @nonVirtual
  Future<X?> deleteListModelToNamedServiceNP<X extends BaseTypeParameter>()
  {
    if(_isNotExistsDataSource) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    return super.deleteListModelToNamedServiceNP<X>();
  }

  @override
  @protected
  @nonVirtual
  Future<X?> deleteListModelToNamedServiceNPUsingTypeParameterForFBDS<X extends BaseTypeParameter,C extends BaseTypeParameter>(
      C? typeParameterForFBDS)
  {
    if(_isNotExistsDataSource) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    return super.deleteListModelToNamedServiceNPUsingTypeParameterForFBDS<X,C>(typeParameterForFBDS);
  }
  // end deleteListNP 2

  // start deleteListParameterNamed 2
  @override
  @protected
  @nonVirtual
  Future<Z?> deleteListModelToNamedServiceParameterNamed<Z extends BaseTypeParameter,X extends BaseTypeParameter>(
      X? typeParameter)
  {
    if(_isNotExistsDataSource) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    return super.deleteListModelToNamedServiceParameterNamed<Z,X>(typeParameter);
  }

  @override
  @protected
  @nonVirtual
  Future<Z?> deleteListModelToNamedServiceParameterNamedUsingTypeParameterForFBDS<Z extends BaseTypeParameter,X extends BaseTypeParameter,C extends BaseTypeParameter>(
      X? typeParameter,
      C? typeParameterForFBDS)
  {
    if(_isNotExistsDataSource) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    return super.deleteListModelToNamedServiceParameterNamedUsingTypeParameterForFBDS<Z,X,C>(
        typeParameter,
        typeParameterForFBDS);
  }
  // end deleteListParameterNamed 2
  /// End DataSource **/

  bool get _isNotExistsDataSource {
    return !_isExistsDataSource;
  }

  void _initThereIsDataSourceListEnumBaseModelAndBaseListModelVM() {
    if(_isNotExistsDataSource) {
      throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    if(getModelQNamedServiceDataSource is GetModelFromNamedServiceNPDataSource<T>) {
      _listEnumForIStreamModelVMVM.add(EnumForIStreamModelVM.getNP);
    }
    if(getModelQNamedServiceDataSource is GetListModelFromNamedServiceNPDataSource<Y>) {
      _listEnumForIStreamModelVMVM.add(EnumForIStreamModelVM.getListNP);
    }
    if(getModelQNamedServiceDataSource is GetModelFromNamedServiceParameterNamedDataSource<T,BaseTypeParameter>) {
      _listEnumForIStreamModelVMVM.add(EnumForIStreamModelVM.getParameterNamed);
    }
    if(getModelQNamedServiceDataSource is GetListModelFromNamedServiceParameterNamedDataSource<Y,BaseTypeParameter>) {
      _listEnumForIStreamModelVMVM.add(EnumForIStreamModelVM.getListParameterNamed);
    }
  }

  void _initNoDataSourceListEnumForIStreamModelVM(
      List<EnumForIStreamModelVM> listEnumForIStreamModelVMVM)
  {
    if(_isExistsDataSource) {
      throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"Constructor call noDataSource: $_isNotExistsDataSource");
    }
    _listEnumForIStreamModelVMVM.addAll(listEnumForIStreamModelVMVM);
  }

  void _initMapEnumForIStreamModelVMAndIStreamModel() {
    for(EnumForIStreamModelVM enumForIStreamModelVM in _listEnumForIStreamModelVMVM) {
      _mapEnumForIStreamModelVMVMAndIStreamModel[enumForIStreamModelVM] = _iCloneStreamModelForSuccess.cloneStreamModelForSuccess();
    }
  }
}