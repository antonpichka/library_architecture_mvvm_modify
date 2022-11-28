/*
 * Designed and developed by 2022 JacobOdd (Anton Pichka)
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:library_architecture_mvvm_modify/base_model_q_named_service_background_model/base_model_q_named_service_background_model.dart';
import 'package:library_architecture_mvvm_modify/base_model_q_named_service_view_model/enum_base_model_and_base_list_model_vm.dart';
import 'package:library_architecture_mvvm_modify/interface_model_q_named_service_data_source/delete_list_model_to_named_service_tip_data_source.dart';
import 'package:library_architecture_mvvm_modify/interface_model_q_named_service_data_source/delete_model_to_named_service_tip_data_source.dart';
import 'package:library_architecture_mvvm_modify/interface_model_q_named_service_data_source/get_list_model_from_named_service_np_data_source.dart';
import 'package:library_architecture_mvvm_modify/interface_model_q_named_service_data_source/get_list_model_from_named_service_parameter_named_data_source.dart';
import 'package:library_architecture_mvvm_modify/interface_model_q_named_service_data_source/get_model_from_named_service_np_data_source.dart';
import 'package:library_architecture_mvvm_modify/interface_model_q_named_service_data_source/get_model_from_named_service_parameter_named_data_source.dart';
import 'package:library_architecture_mvvm_modify/interface_model_q_named_service_data_source/insert_list_model_to_named_service_tip_data_source.dart';
import 'package:library_architecture_mvvm_modify/interface_model_q_named_service_data_source/insert_model_to_named_service_tip_data_source.dart';
import 'package:library_architecture_mvvm_modify/interface_model_q_named_service_data_source/update_list_model_to_named_service_tip_data_source.dart';
import 'package:library_architecture_mvvm_modify/interface_model_q_named_service_data_source/update_model_to_named_service_tip_data_source.dart';
import 'package:library_architecture_mvvm_modify/utility/base_exception/local_exception.dart';
import 'package:library_architecture_mvvm_modify/utility/base_model/base_list_model.dart';
import 'package:library_architecture_mvvm_modify/utility/base_model/base_model.dart';
import 'package:library_architecture_mvvm_modify/utility/base_type_parameter/base_type_parameter.dart';
import 'package:library_architecture_mvvm_modify/utility/i_dispose.dart';
import 'package:library_architecture_mvvm_modify/utility/i_stream_model.dart';

abstract class BaseModelQNamedServiceViewModel<T extends BaseModel,Y extends BaseListModel<T>,DataSource extends Object>
    extends BaseModelQNamedServiceBackgroundModel<T,Y,DataSource>
    implements IDispose
{
  /* List and Map For IStreamModel */
  final List<EnumBaseModelAndBaseListModelVM> _listEnumBaseModelAndBaseListModelVM = List.empty(growable: true);
  final Map<EnumBaseModelAndBaseListModelVM,IStreamModel<T,Y>?> _mapEnumBaseModelAndBaseListModelVMAndIStreamModel = {};

  /* Init DataSource */
  final bool _isExistsDataSource;

  BaseModelQNamedServiceViewModel.thereIsDataSource(DataSource dataSource)
      : _isExistsDataSource = true, super.thereIsDataSource(dataSource)
  {
    _initThereIsDataSourceListEnumBaseModelAndBaseListModelVM();
    _initMapEnumBaseModelAndBaseListModelVMAndIStreamModel();
  }

  BaseModelQNamedServiceViewModel.noDataSource(List<EnumBaseModelAndBaseListModelVM> list)
      : _isExistsDataSource = false, super.thereIsDataSource(null)
  {
    _initNoDataSourceListEnumBaseModelAndBaseListModelVM(list);
    _initMapEnumBaseModelAndBaseListModelVMAndIStreamModel();
  }

  bool get _isNotExistsDataSource {
    return !_isExistsDataSource;
  }

  @override
  void dispose() {
    _mapEnumBaseModelAndBaseListModelVMAndIStreamModel.forEach((
        EnumBaseModelAndBaseListModelVM enumBaseModelAndBaseListModelVM,
        IStreamModel<T,Y>? iStreamModel)
    {
      iStreamModel?.dispose();
    });
  }

  // Default class: return DefaultStreamModel(Object.success(""),ListObject.success([]));
  IStreamModel<T,Y>? initIStreamModelForSuccess();

  /// Start IStreamModel **/
  @protected
  @nonVirtual
  IStreamModel<T,Y>? getIStreamModel(
      EnumBaseModelAndBaseListModelVM operation)
  {
    if(!_mapEnumBaseModelAndBaseListModelVMAndIStreamModel.containsKey(operation)) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"$operation not found");
    }
    return _mapEnumBaseModelAndBaseListModelVMAndIStreamModel[operation];
  }
  /// End IStreamModel **/

  /// Start Model **/
  @protected
  @nonVirtual
  Future<T?> getFutureModel(
      EnumBaseModelAndBaseListModelVM operation)
  async {
    if(!_mapEnumBaseModelAndBaseListModelVMAndIStreamModel.containsKey(operation)) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"$operation not found");
    }
    return _mapEnumBaseModelAndBaseListModelVMAndIStreamModel[operation]?.getModel;
  }

  @protected
  @nonVirtual
  Stream<T>? getStreamModel(
      EnumBaseModelAndBaseListModelVM operation)
  {
    if(!_mapEnumBaseModelAndBaseListModelVMAndIStreamModel.containsKey(operation)) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"$operation not found");
    }
    return _mapEnumBaseModelAndBaseListModelVMAndIStreamModel[operation]?.getStreamModel;
  }

  @protected
  @nonVirtual
  T? getModel(
      EnumBaseModelAndBaseListModelVM operation)
  {
    if(!_mapEnumBaseModelAndBaseListModelVMAndIStreamModel.containsKey(operation)) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"$operation not found");
    }
    return _mapEnumBaseModelAndBaseListModelVMAndIStreamModel[operation]?.getModel;
  }

  @protected
  @nonVirtual
  void setModel(
      EnumBaseModelAndBaseListModelVM operation,
      T? model)
  {
    if(!_mapEnumBaseModelAndBaseListModelVMAndIStreamModel.containsKey(operation)) {
      throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"$operation not found");
    }
    _mapEnumBaseModelAndBaseListModelVMAndIStreamModel[operation]
        ?.setModel = model;
  }

  @protected
  @nonVirtual
  void setCloneModel(
      EnumBaseModelAndBaseListModelVM operation,
      T? model)
  {
    if(!_mapEnumBaseModelAndBaseListModelVMAndIStreamModel.containsKey(operation)) {
      throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"$operation not found");
    }
    _mapEnumBaseModelAndBaseListModelVMAndIStreamModel[operation]
        ?.setModel = cloneModelForSuccess(model);
  }

  @protected
  @nonVirtual
  void notifyStreamModel(
      EnumBaseModelAndBaseListModelVM operation)
  {
    if(!_mapEnumBaseModelAndBaseListModelVMAndIStreamModel.containsKey(operation)) {
      throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"$operation not found");
    }
    _mapEnumBaseModelAndBaseListModelVMAndIStreamModel[operation]
        ?.notifyStreamModel(thisClass);
  }

  @protected
  @nonVirtual
  void notifyStreamDelayInSecondsModel(
      EnumBaseModelAndBaseListModelVM operation)
  {
    if(!_mapEnumBaseModelAndBaseListModelVMAndIStreamModel.containsKey(operation)) {
      throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"$operation not found");
    }
    _mapEnumBaseModelAndBaseListModelVMAndIStreamModel[operation]
        ?.notifyStreamDelayInSecondsModel(thisClass);
  }
  /// End Model **/

  /// Start ListModel **/
  @protected
  @nonVirtual
  Future<Y?> getFutureListModel(
      EnumBaseModelAndBaseListModelVM operation)
  async {
    if(!_mapEnumBaseModelAndBaseListModelVMAndIStreamModel.containsKey(operation)) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"$operation not found");
    }
    return _mapEnumBaseModelAndBaseListModelVMAndIStreamModel[operation]?.getListModel;
  }

  @protected
  @nonVirtual
  Stream<Y>? getStreamListModel(
      EnumBaseModelAndBaseListModelVM operation)
  {
    if(!_mapEnumBaseModelAndBaseListModelVMAndIStreamModel.containsKey(operation)) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"$operation not found");
    }
    return _mapEnumBaseModelAndBaseListModelVMAndIStreamModel[operation]?.getStreamListModel;
  }

  @protected
  @nonVirtual
  Y? getListModel(
      EnumBaseModelAndBaseListModelVM operation)
  {
    if(!_mapEnumBaseModelAndBaseListModelVMAndIStreamModel.containsKey(operation)) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"$operation not found");
    }
    return _mapEnumBaseModelAndBaseListModelVMAndIStreamModel[operation]?.getListModel;
  }

  @protected
  @nonVirtual
  void setListModel(
      EnumBaseModelAndBaseListModelVM operation,
      Y? listModel)
  {
    if(!_mapEnumBaseModelAndBaseListModelVMAndIStreamModel.containsKey(operation)) {
      throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"$operation not found");
    }
    _mapEnumBaseModelAndBaseListModelVMAndIStreamModel[operation]
        ?.setListModel = listModel;
  }

  @protected
  @nonVirtual
  void setCloneListModel(
      EnumBaseModelAndBaseListModelVM operation,
      Y? listModel)
  {
    if(!_mapEnumBaseModelAndBaseListModelVMAndIStreamModel.containsKey(operation)) {
      throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"$operation not found");
    }
    _mapEnumBaseModelAndBaseListModelVMAndIStreamModel[operation]
        ?.setListModel = cloneListModelForSuccess(listModel);
  }

  @protected
  @nonVirtual
  void notifyStreamListModel(
      EnumBaseModelAndBaseListModelVM operation)
  {
    if(!_mapEnumBaseModelAndBaseListModelVMAndIStreamModel.containsKey(operation)) {
      throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"$operation not found");
    }
    _mapEnumBaseModelAndBaseListModelVMAndIStreamModel[operation]
        ?.notifyStreamListModel(thisClass);
  }

  @protected
  @nonVirtual
  void notifyStreamDelayInSecondsListModel(
      EnumBaseModelAndBaseListModelVM operation)
  {
    if(!_mapEnumBaseModelAndBaseListModelVMAndIStreamModel.containsKey(operation)) {
      throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"$operation not found");
    }
    _mapEnumBaseModelAndBaseListModelVMAndIStreamModel[operation]
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
    setListModel(EnumBaseModelAndBaseListModelVM.getListModelFromNamedServiceNP,listModel);
    return getListModel(EnumBaseModelAndBaseListModelVM.getListModelFromNamedServiceNP);
  }

  @protected
  @nonVirtual
  Future<Y?> getListModelFromNamedServiceNPAndSetListModelUsingTypeParameterForFBDS<C extends BaseTypeParameter>(
      C typeParameterForFBDS)
  async {
    Y? listModel = await getListModelFromNamedServiceNPUsingTypeParameterForFBDS<C>(typeParameterForFBDS);
    setListModel(EnumBaseModelAndBaseListModelVM.getListModelFromNamedServiceNP,listModel);
    return getListModel(EnumBaseModelAndBaseListModelVM.getListModelFromNamedServiceNP);
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
    setListModel(EnumBaseModelAndBaseListModelVM.getListModelFromNamedServiceParameterNamed,listModel);
    return getListModel(EnumBaseModelAndBaseListModelVM.getListModelFromNamedServiceParameterNamed);
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
    setListModel(EnumBaseModelAndBaseListModelVM.getListModelFromNamedServiceParameterNamed,listModel);
    return getListModel(EnumBaseModelAndBaseListModelVM.getListModelFromNamedServiceParameterNamed);
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
    setModel(EnumBaseModelAndBaseListModelVM.getModelFromNamedServiceNP,model);
    return getModel(EnumBaseModelAndBaseListModelVM.getModelFromNamedServiceNP);
  }

  @protected
  @nonVirtual
  Future<T?> getModelFromNamedServiceNPAndSetModelUsingTypeParameterForFBDS<C extends BaseTypeParameter>(
      C typeParameterForFBDS)
  async {
    T? model = await getModelFromNamedServiceNPUsingTypeParameterForFBDS<C>(typeParameterForFBDS);
    setModel(EnumBaseModelAndBaseListModelVM.getModelFromNamedServiceNP,model);
    return getModel(EnumBaseModelAndBaseListModelVM.getModelFromNamedServiceNP);
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
    setModel(EnumBaseModelAndBaseListModelVM.getModelFromNamedServiceParameterNamed,model);
    return getModel(EnumBaseModelAndBaseListModelVM.getModelFromNamedServiceParameterNamed);
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
    setModel(EnumBaseModelAndBaseListModelVM.getModelFromNamedServiceParameterNamed,model);
    return getModel(EnumBaseModelAndBaseListModelVM.getModelFromNamedServiceParameterNamed);
  }
  // end getParameterNamed 4

  // start insertTIP 4
  @override
  @protected
  @nonVirtual
  Future<Z?> insertModelToNamedServiceTIP<Z extends BaseTypeParameter>(
      T? model)
  {
    if(_isNotExistsDataSource) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    return super.insertModelToNamedServiceTIP<Z>(model);
  }

  @override
  @protected
  @nonVirtual
  Future<Z?> insertModelToNamedServiceTIPUsingTypeParameterForFBDS<Z extends BaseTypeParameter,C extends BaseTypeParameter>(
      T? model,
      C? typeParameterForFBDS)
  {
    if(_isNotExistsDataSource) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    return super.insertModelToNamedServiceTIPUsingTypeParameterForFBDS<Z,C>(
        model,
        typeParameterForFBDS);
  }

  @protected
  @nonVirtual
  Future<Z?> insertModelToNamedServiceTIPUsingStateModel<Z extends BaseTypeParameter>()
  {
    return insertModelToNamedServiceTIP<Z>(getModel(EnumBaseModelAndBaseListModelVM.insertModelToNamedServiceTIP));
  }

  @protected
  @nonVirtual
  Future<Z?> insertModelToNamedServiceTIPUsingStateModelAndTypeParameterForFBDS<Z extends BaseTypeParameter,C extends BaseTypeParameter>(
      C? typeParameterForFBDS)
  {
    return insertModelToNamedServiceTIPUsingTypeParameterForFBDS<Z,C>(
        getModel(EnumBaseModelAndBaseListModelVM.insertModelToNamedServiceTIP),
        typeParameterForFBDS);
  }
  // end insertTIP 4

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

  // start insertListTIP 4
  @override
  @protected
  @nonVirtual
  Future<Z?> insertListModelToNamedServiceTIP<Z extends BaseTypeParameter>(
      Y? listModel)
  {
    if(_isNotExistsDataSource) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    return super.insertListModelToNamedServiceTIP<Z>(listModel);
  }

  @override
  @protected
  @nonVirtual
  Future<Z?> insertListModelToNamedServiceTIPUsingTypeParameterForFBDS<Z extends BaseTypeParameter,C extends BaseTypeParameter>(
      Y? listModel,
      C? typeParameterForFBDS)
  {
    if(_isNotExistsDataSource) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    return super.insertListModelToNamedServiceTIPUsingTypeParameterForFBDS<Z,C>(
        listModel,
        typeParameterForFBDS);
  }

  @protected
  @nonVirtual
  Future<Z?> insertListModelToNamedServiceTIPUsingStateListModel<Z extends BaseTypeParameter>()
  {
    return insertListModelToNamedServiceTIP<Z>(getListModel(EnumBaseModelAndBaseListModelVM.insertListModelToNamedServiceTIP));
  }

  @protected
  @nonVirtual
  Future<Z?> insertListModelToNamedServiceTIPUsingStateListModelAndTypeParameterForFBDS<Z extends BaseTypeParameter,C extends BaseTypeParameter>(
      C? typeParameterForFBDS)
  {
    return insertListModelToNamedServiceTIPUsingTypeParameterForFBDS<Z,C>(
        getListModel(EnumBaseModelAndBaseListModelVM.insertListModelToNamedServiceTIP),
        typeParameterForFBDS);
  }
  // end insertListTIP 4

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

  // start updateTIP 4
  @override
  @protected
  @nonVirtual
  Future<Z?> updateModelToNamedServiceTIP<Z extends BaseTypeParameter>(
      T? model)
  {
    if(_isNotExistsDataSource) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    return super.updateModelToNamedServiceTIP<Z>(model);
  }

  @override
  @protected
  @nonVirtual
  Future<Z?> updateModelToNamedServiceTIPUsingTypeParameterForFBDS<Z extends BaseTypeParameter,C extends BaseTypeParameter>(
      T? model,
      C? typeParameterForFBDS)
  {
    if(_isNotExistsDataSource) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    return super.updateModelToNamedServiceTIPUsingTypeParameterForFBDS<Z,C>(
        model,
        typeParameterForFBDS);
  }

  @protected
  @nonVirtual
  Future<Z?> updateModelToNamedServiceTIPUsingStateModel<Z extends BaseTypeParameter>()
  {
    return updateModelToNamedServiceTIP<Z>(getModel(EnumBaseModelAndBaseListModelVM.updateModelToNamedServiceTIP));
  }

  @protected
  @nonVirtual
  Future<Z?> updateModelToNamedServiceTIPUsingStateModelAndTypeParameterForFBDS<Z extends BaseTypeParameter,C extends BaseTypeParameter>(
      C? typeParameterForFBDS)
  {
    return updateModelToNamedServiceTIPUsingTypeParameterForFBDS<Z,C>(
        getModel(EnumBaseModelAndBaseListModelVM.updateModelToNamedServiceTIP),
        typeParameterForFBDS);
  }
  // end updateTIP 4

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

  // start updateListTIP 4
  @override
  @protected
  @nonVirtual
  Future<Z?> updateListModelToNamedServiceTIP<Z extends BaseTypeParameter>(
      Y? listModel)
  {
    if(_isNotExistsDataSource) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    return super.updateListModelToNamedServiceTIP<Z>(listModel);
  }

  @override
  @protected
  @nonVirtual
  Future<Z?> updateListModelToNamedServiceTIPUsingTypeParameterForFBDS<Z extends BaseTypeParameter,C extends BaseTypeParameter>(
      Y? listModel,
      C? typeParameterForFBDS)
  {
    if(_isNotExistsDataSource) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    return super.updateListModelToNamedServiceTIPUsingTypeParameterForFBDS<Z,C>(
        listModel,
        typeParameterForFBDS);
  }

  @protected
  @nonVirtual
  Future<Z?> updateListModelToNamedServiceTIPUsingStateListModel<Z extends BaseTypeParameter>()
  {
    return updateListModelToNamedServiceTIP<Z>(getListModel(EnumBaseModelAndBaseListModelVM.updateListModelToNamedServiceTIP));
  }

  @protected
  @nonVirtual
  Future<Z?> updateListModelToNamedServiceTIPUsingStateListModelAndTypeParameterForFBDS<Z extends BaseTypeParameter,C extends BaseTypeParameter>(
      C? typeParameterForFBDS)
  {
    return updateListModelToNamedServiceTIPUsingTypeParameterForFBDS<Z,C>(
        getListModel(EnumBaseModelAndBaseListModelVM.updateListModelToNamedServiceTIP),
        typeParameterForFBDS);
  }
  // end updateListTIP 4

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

  // start deleteTIP 4
  @override
  @protected
  @nonVirtual
  Future<Z?> deleteModelToNamedServiceTIP<Z extends BaseTypeParameter>(
      T? model)
  {
    if(_isNotExistsDataSource) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    return super.deleteModelToNamedServiceTIP<Z>(model);
  }

  @override
  @protected
  @nonVirtual
  Future<Z?> deleteModelToNamedServiceTIPUsingTypeParameterForFBDS<Z extends BaseTypeParameter,C extends BaseTypeParameter>(
      T? model,
      C? typeParameterForFBDS)
  {
    if(_isNotExistsDataSource) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    return super.deleteModelToNamedServiceTIPUsingTypeParameterForFBDS<Z,C>(
        model,
        typeParameterForFBDS);
  }

  @protected
  @nonVirtual
  Future<Z?> deleteModelToNamedServiceTIPUsingStateModel<Z extends BaseTypeParameter>()
  {
    return deleteModelToNamedServiceTIP<Z>(getModel(EnumBaseModelAndBaseListModelVM.deleteModelToNamedServiceTIP));
  }

  @protected
  @nonVirtual
  Future<Z?> deleteModelToNamedServiceTIPUsingStateModelAndTypeParameterForFBDS<Z extends BaseTypeParameter,C extends BaseTypeParameter>(
      C? typeParameterForFBDS)
  {
    return deleteModelToNamedServiceTIPUsingTypeParameterForFBDS<Z,C>(
        getModel(EnumBaseModelAndBaseListModelVM.deleteModelToNamedServiceTIP),
        typeParameterForFBDS);
  }
  // end deleteTIP 4

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

  // start deleteListTIP 4
  @override
  @protected
  @nonVirtual
  Future<Z?> deleteListModelToNamedServiceTIP<Z extends BaseTypeParameter>(
      Y? listModel)
  {
    if(_isNotExistsDataSource) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    return super.deleteListModelToNamedServiceTIP<Z>(listModel);
  }

  @override
  @protected
  @nonVirtual
  Future<Z?> deleteListModelToNamedServiceTIPUsingTypeParameterForFBDS<Z extends BaseTypeParameter,C extends BaseTypeParameter>(
      Y? listModel,
      C? typeParameterForFBDS)
  {
    if(_isNotExistsDataSource) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    return super.deleteListModelToNamedServiceTIPUsingTypeParameterForFBDS<Z,C>(
        listModel,
        typeParameterForFBDS);
  }

  @protected
  @nonVirtual
  Future<Z?> deleteListModelToNamedServiceTIPUsingStateListModel<Z extends BaseTypeParameter>()
  {
    return deleteListModelToNamedServiceTIP<Z>(getListModel(EnumBaseModelAndBaseListModelVM.deleteListModelToNamedServiceTIP));
  }

  @protected
  @nonVirtual
  Future<Z?> deleteListModelToNamedServiceTIPUsingStateListModelAndTypeParameterForFBDS<Z extends BaseTypeParameter,C extends BaseTypeParameter>(
      C? typeParameterForFBDS)
  {
    return deleteListModelToNamedServiceTIPUsingTypeParameterForFBDS<Z,C>(
        getListModel(EnumBaseModelAndBaseListModelVM.deleteListModelToNamedServiceTIP),
        typeParameterForFBDS);
  }
  // end deleteListTIP 4

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

  void _initThereIsDataSourceListEnumBaseModelAndBaseListModelVM() {
    if(_isNotExistsDataSource) {
      throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    if(modelQNamedServiceDataSource is InsertModelToNamedServiceTIPDataSource<BaseTypeParameter,T>) {
      _listEnumBaseModelAndBaseListModelVM.add(EnumBaseModelAndBaseListModelVM.insertModelToNamedServiceTIP);
    }
    if(modelQNamedServiceDataSource is UpdateModelToNamedServiceTIPDataSource<BaseTypeParameter,T>) {
      _listEnumBaseModelAndBaseListModelVM.add(EnumBaseModelAndBaseListModelVM.updateModelToNamedServiceTIP);
    }
    if(modelQNamedServiceDataSource is DeleteModelToNamedServiceTIPDataSource<BaseTypeParameter,T>) {
      _listEnumBaseModelAndBaseListModelVM.add(EnumBaseModelAndBaseListModelVM.deleteModelToNamedServiceTIP);
    }
    if(modelQNamedServiceDataSource is InsertListModelToNamedServiceTIPDataSource<BaseTypeParameter,Y>) {
      _listEnumBaseModelAndBaseListModelVM.add(EnumBaseModelAndBaseListModelVM.insertListModelToNamedServiceTIP);
    }
    if(modelQNamedServiceDataSource is UpdateListModelToNamedServiceTIPDataSource<BaseTypeParameter,Y>) {
      _listEnumBaseModelAndBaseListModelVM.add(EnumBaseModelAndBaseListModelVM.updateListModelToNamedServiceTIP);
    }
    if(modelQNamedServiceDataSource is DeleteListModelToNamedServiceTIPDataSource<BaseTypeParameter,Y>) {
      _listEnumBaseModelAndBaseListModelVM.add(EnumBaseModelAndBaseListModelVM.deleteListModelToNamedServiceTIP);
    }
    if(modelQNamedServiceDataSource is GetModelFromNamedServiceNPDataSource<T>) {
      _listEnumBaseModelAndBaseListModelVM.add(EnumBaseModelAndBaseListModelVM.getModelFromNamedServiceNP);
    }
    if(modelQNamedServiceDataSource is GetListModelFromNamedServiceNPDataSource<Y>) {
      _listEnumBaseModelAndBaseListModelVM.add(EnumBaseModelAndBaseListModelVM.getListModelFromNamedServiceNP);
    }
    if(modelQNamedServiceDataSource is GetModelFromNamedServiceParameterNamedDataSource<T,BaseTypeParameter>) {
      _listEnumBaseModelAndBaseListModelVM.add(EnumBaseModelAndBaseListModelVM.getModelFromNamedServiceParameterNamed);
    }
    if(modelQNamedServiceDataSource is GetListModelFromNamedServiceParameterNamedDataSource<Y,BaseTypeParameter>) {
      _listEnumBaseModelAndBaseListModelVM.add(EnumBaseModelAndBaseListModelVM.getListModelFromNamedServiceParameterNamed);
    }
  }

  void _initNoDataSourceListEnumBaseModelAndBaseListModelVM(
      List<EnumBaseModelAndBaseListModelVM> listEnumBaseModelAndBaseListModelVM)
  {
    if(_isExistsDataSource) {
      throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"Constructor call noDataSource: $_isNotExistsDataSource");
    }
    _listEnumBaseModelAndBaseListModelVM.addAll(listEnumBaseModelAndBaseListModelVM);
  }

  void _initMapEnumBaseModelAndBaseListModelVMAndIStreamModel() {
    for(EnumBaseModelAndBaseListModelVM enumBaseModelAndBaseListModelVM in _listEnumBaseModelAndBaseListModelVM) {
      _mapEnumBaseModelAndBaseListModelVMAndIStreamModel[enumBaseModelAndBaseListModelVM] = initIStreamModelForSuccess();
    }
  }
}