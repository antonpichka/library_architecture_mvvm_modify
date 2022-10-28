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
import 'package:library_architecture_mvvm_modify/abstract_classes_converters_to_model_named_database/converter_to_base_list_model_named_database.dart';
import 'package:library_architecture_mvvm_modify/abstract_classes_converters_to_model_named_database/converter_to_base_model_named_database.dart';
import 'package:library_architecture_mvvm_modify/base_background_model/base_background_model.dart';
import 'package:library_architecture_mvvm_modify/base_data_source/interface_data_source/delete_list_model_to_named_database_parameter_named_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_data_source/interface_data_source/delete_list_model_to_named_database_tip_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_data_source/interface_data_source/delete_model_to_named_database_parameter_named_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_data_source/interface_data_source/delete_model_to_named_database_tip_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_data_source/interface_data_source/get_list_model_from_named_database_np_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_data_source/interface_data_source/get_list_model_from_named_database_parameter_named_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_data_source/interface_data_source/get_model_from_named_database_np_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_data_source/interface_data_source/get_model_from_named_database_parameter_named_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_data_source/interface_data_source/insert_list_model_to_named_database_tip_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_data_source/interface_data_source/insert_model_to_named_database_tip_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_data_source/interface_data_source/update_list_model_to_named_database_parameter_named_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_data_source/interface_data_source/update_list_model_to_named_database_tip_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_data_source/interface_data_source/update_model_to_named_database_parameter_named_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_data_source/interface_data_source/update_model_to_named_database_tip_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_dispose/base_dispose.dart';
import 'package:library_architecture_mvvm_modify/base_exception/base_exception.dart';
import 'package:library_architecture_mvvm_modify/base_exception/local_exception.dart';
import 'package:library_architecture_mvvm_modify/base_iterator/base_iterator.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_list_model/base_list_model.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_list_model/base_list_model_named_database.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_model.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_model_named_database.dart';
import 'package:library_architecture_mvvm_modify/base_type_parameter/base_type_parameter.dart';
import 'package:library_architecture_mvvm_modify/base_view_model/enum_named_vm/enum_base_list_model_vm.dart';
import 'package:library_architecture_mvvm_modify/base_view_model/enum_named_vm/enum_base_model_vm.dart';
import 'package:library_architecture_mvvm_modify/base_view_model/enum_named_vm/enum_base_type_parameter_vm.dart';
import 'package:library_architecture_mvvm_modify/response/response.dart';

typedef InitObject<S> = S Function();

abstract class BaseViewModel<T extends BaseModel,Y extends BaseListModel<T>,Z extends BaseModelNamedDatabase<T>,X extends BaseListModelNamedDatabase<Y,Z>,EnumIterator extends Enum>
    extends BaseBackgroundModel<T,Y,Z,X>
    implements BaseDispose
{
  /* Init Objects */
  final InitObject<T> _initObjectBaseModel;
  final InitObject<Y> _initObjectBaseListModel;
  final InitObject<StreamController<T>> _initObjectStreamControllerForBaseModel;
  final InitObject<StreamController<List<T>>> _initObjectStreamControllerForBaseListModel;

  /* Init List Objects For Model And BaseTypeParameter */
  final List<EnumBaseModelVM> _listEnumBaseModelVM = List.empty(growable: true);
  final List<EnumBaseListModelVM> _listEnumBaseListModelVM = List.empty(growable: true);
  final List<EnumBaseTypeParameterVM> _listEnumBaseTypeParameterVM = List.empty(growable: true);

  /* Maps For Model And StreamModel And BaseTypeParameter */
  final Map<EnumBaseModelVM,T> _mapEnumBaseModelVMAndBaseModel = {};
  final Map<EnumBaseListModelVM,Y> _mapEnumBaseListModelVMAndBaseListModel = {};
  final Map<EnumBaseModelVM,StreamController<T>> _mapEnumBaseModelVMAndStreamControllerForBaseModel = {};
  final Map<EnumBaseListModelVM,StreamController<List<T>>> _mapEnumBaseListModelVMAndStreamControllerForListBaseModel = {};
  final Map<EnumBaseTypeParameterVM,BaseTypeParameter> _mapEnumBaseTypeParameterVMAndBaseTypeParameter = {};

  /* Maps And BaseTypeParameterForBaseIterator For Iterator */
  final Map<EnumIterator,BaseIterator<T>> _mapEnumAndBaseIterator = {};
  BaseTypeParameter<EnumIterator> _enumTypeParameterForBaseIterator = BaseTypeParameter<EnumIterator>(null);

  /* Init DataSource */
  bool _isExistsDataSource;

  BaseViewModel.thereIsDataSourceUsingMethodSetDataSourceToBodyConstructor(
      ConverterToBaseModelNamedDatabase converterToBaseModelNamedDatabase,
      ConverterToBaseListModelNamedDatabase converterToBaseListModelNamedDatabase,
      this._initObjectBaseModel,
      this._initObjectBaseListModel,
      [this._initObjectStreamControllerForBaseModel,
        this._initObjectStreamControllerForBaseListModel])
      : super.thereIsDataSourceUsingMethodSetDataSourceToBodyConstructor(converterToBaseModelNamedDatabase,converterToBaseListModelNamedDatabase)
  {
    _isExistsDataSource = true;
  }

  BaseViewModel.noDataSource(
      List<EnumBaseModelVM> listEnumBaseModelVM,
      List<EnumBaseListModelVM> listEnumBaseListModelVM,
      this._initObjectBaseModel,
      this._initObjectBaseListModel,
      [this._initObjectStreamControllerForBaseModel,
        this._initObjectStreamControllerForBaseListModel])
      : super.thereIsDataSourceUsingMethodSetDataSourceToBodyConstructor(null, null)
  {
    _isExistsDataSource = false;
    _initNoDataSourceListEnumBaseModelVM(listEnumBaseModelVM);
    _initNoDataSourceListEnumBaseListModelVM(listEnumBaseListModelVM);
    _initMapEnumBaseModelVMAndBaseModel();
    _initMapEnumBaseModelVMAndStreamControllerForBaseModel();
    _initMapEnumBaseListModelVMAndBaseListModel();
    _initMapEnumBaseListModelVMAndStreamControllerForListBaseModel();
  }

  @override
  void dispose() {
    _disposeForMapEnumAndStreamController(_mapEnumBaseModelVMAndStreamControllerForBaseModel);
    _disposeForMapEnumAndStreamController(_mapEnumBaseListModelVMAndStreamControllerForListBaseModel);
  }

  /// Start DataSource **/
  ///
  // start getListNP 4
  @override
  @protected
  @nonVirtual
  Future<Response<List<T>, BaseException>> getListModelFromNamedDatabaseNP()
  {
    if(_isNotExistsDataSource) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    return super.getListModelFromNamedDatabaseNP();
  }

  @override
  @protected
  @nonVirtual
  Future<Response<List<T>, BaseException>> getListModelFromNamedDatabaseNPUsingTypeParameterForFBDS(
      BaseTypeParameter typeParameterForFBDS)
  {
    if(_isNotExistsDataSource) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    return super.getListModelFromNamedDatabaseNPUsingTypeParameterForFBDS(typeParameterForFBDS);
  }

  @protected
  @nonVirtual
  Future<Response<List<T>, BaseException>> getListModelFromNamedDatabaseNPAndSetListModel()
  async {
    Response<List<T>, BaseException> result = await getListModelFromNamedDatabaseNP();
    if(result.isExceptionResponse()) {
      return Response.exception(result.getException);
    }
    if(result.isCanceledOperationWithoutExceptionAndSuccess()) {
      return Response.cancelOperationWithoutExceptionAndSuccess(result.getCancelOperationWithoutExceptionAndSuccess);
    }
    _getBaseListModel(EnumBaseListModelVM.getListModelFromNamedDatabaseNP)
        .setParameterListModel = result.getData;
    return Response.success(_getBaseListModel(EnumBaseListModelVM.getListModelFromNamedDatabaseNP).getParameterListModel);
  }

  @protected
  @nonVirtual
  Future<Response<List<T>, BaseException>> getListModelFromNamedDatabaseNPAndSetListModelUsingTypeParameterForFBDS(
      BaseTypeParameter typeParameterForFBDS)
  async {
    Response<List<T>, BaseException> result = await getListModelFromNamedDatabaseNPUsingTypeParameterForFBDS(typeParameterForFBDS);
    if(result.isExceptionResponse()) {
      return Response.exception(result.getException);
    }
    if(result.isCanceledOperationWithoutExceptionAndSuccess()) {
      return Response.cancelOperationWithoutExceptionAndSuccess(result.getCancelOperationWithoutExceptionAndSuccess);
    }
    _getBaseListModel(EnumBaseListModelVM.getListModelFromNamedDatabaseNP)
        .setParameterListModel = result.getData;
    return Response.success(_getBaseListModel(EnumBaseListModelVM.getListModelFromNamedDatabaseNP).getParameterListModel);
  }
  // end getListNP 4

  // start getListParameterNamed 8
  @override
  @protected
  @nonVirtual
  Future<Response<List<T>, BaseException>> getListModelFromNamedDatabaseParameterNamed(
      BaseTypeParameter typeParameter)
  {
    if(_isNotExistsDataSource) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    return super.getListModelFromNamedDatabaseParameterNamed(typeParameter);
  }

  @override
  @protected
  @nonVirtual
  Future<Response<List<T>, BaseException>> getListModelFromNamedDatabaseParameterNamedUsingTypeParameterForFBDS(
      BaseTypeParameter typeParameter,
      BaseTypeParameter typeParameterForFBDS)
  {
    if(_isNotExistsDataSource) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    return super.getListModelFromNamedDatabaseParameterNamedUsingTypeParameterForFBDS(
        typeParameter,
        typeParameterForFBDS);
  }

  @protected
  @nonVirtual
  Future<Response<List<T>, BaseException>> getListModelFromNamedDatabaseParameterNamedUsingStateTypeParameter()
  {
    return getListModelFromNamedDatabaseParameterNamed(getTypeParameter(EnumBaseTypeParameterVM.getListModelFromNamedDatabaseParameterNamed));
  }

  @protected
  @nonVirtual
  Future<Response<List<T>, BaseException>> getListModelFromNamedDatabaseParameterNamedAndSetListModel(
      BaseTypeParameter typeParameter)
  async {
    Response<List<T>, BaseException> result = await getListModelFromNamedDatabaseParameterNamed(typeParameter);
    if(result.isExceptionResponse()) {
      return Response.exception(result.getException);
    }
    if(result.isCanceledOperationWithoutExceptionAndSuccess()) {
      return Response.cancelOperationWithoutExceptionAndSuccess(result.getCancelOperationWithoutExceptionAndSuccess);
    }
    _getBaseListModel(EnumBaseListModelVM.getListModelFromNamedDatabaseParameterNamed)
        .setParameterListModel = result.getData;
    return Response.success(_getBaseListModel(EnumBaseListModelVM.getListModelFromNamedDatabaseParameterNamed).getParameterListModel);
  }

  @protected
  @nonVirtual
  Future<Response<List<T>, BaseException>> getListModelFromNamedDatabaseParameterNamedAndSetListModelUsingStateTypeParameter()
  {
    return getListModelFromNamedDatabaseParameterNamedAndSetListModel(getTypeParameter(EnumBaseTypeParameterVM.getListModelFromNamedDatabaseParameterNamed));
  }

  @protected
  @nonVirtual
  Future<Response<List<T>, BaseException>> getListModelFromNamedDatabaseParameterNamedAndSetListModelUsingTypeParameterForFBDS(
      BaseTypeParameter typeParameter,
      BaseTypeParameter typeParameterForFBDS)
  async {
    Response<List<T>, BaseException> result = await getListModelFromNamedDatabaseParameterNamedUsingTypeParameterForFBDS(
        typeParameter,
        typeParameterForFBDS);
    if(result.isExceptionResponse()) {
      return Response.exception(result.getException);
    }
    if(result.isCanceledOperationWithoutExceptionAndSuccess()) {
      return Response.cancelOperationWithoutExceptionAndSuccess(result.getCancelOperationWithoutExceptionAndSuccess);
    }
    _getBaseListModel(EnumBaseListModelVM.getListModelFromNamedDatabaseParameterNamed)
        .setParameterListModel = result.getData;
    return Response.success(_getBaseListModel(EnumBaseListModelVM.getListModelFromNamedDatabaseParameterNamed).getParameterListModel);
  }

  @protected
  @nonVirtual
  Future<Response<List<T>, BaseException>> getListModelFromNamedDatabaseParameterNamedUsingStateTypeParameterAndTypeParameterForFBDS(
      BaseTypeParameter typeParameterForFBDS)
  {
    return getListModelFromNamedDatabaseParameterNamedUsingTypeParameterForFBDS(
        getTypeParameter(EnumBaseTypeParameterVM.getListModelFromNamedDatabaseParameterNamed),
        typeParameterForFBDS);
  }

  @protected
  @nonVirtual
  Future<Response<List<T>, BaseException>> getListModelFromNamedDatabaseParameterNamedAndSetListModelUsingStateTypeParameterAndTypeParameterForFBDS(
      BaseTypeParameter typeParameterForFBDS)
  {
    return getListModelFromNamedDatabaseParameterNamedAndSetListModelUsingTypeParameterForFBDS(
        getTypeParameter(EnumBaseTypeParameterVM.getListModelFromNamedDatabaseParameterNamed),
        typeParameterForFBDS);
  }
  // end getListParameterNamed 8

  // start getNP 4
  @override
  @protected
  @nonVirtual
  Future<Response<T, BaseException>> getModelFromNamedDatabaseNP()
  {
    if(_isNotExistsDataSource) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    return super.getModelFromNamedDatabaseNP();
  }

  @override
  @protected
  @nonVirtual
  Future<Response<T, BaseException>> getModelFromNamedDatabaseNPUsingTypeParameterForFBDS(
      BaseTypeParameter typeParameterForFBDS)
  {
    if(_isNotExistsDataSource) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    return super.getModelFromNamedDatabaseNPUsingTypeParameterForFBDS(typeParameterForFBDS);
  }

  @protected
  @nonVirtual
  Future<Response<T, BaseException>> getModelFromNamedDatabaseNPAndSetModel()
  async {
    Response<T, BaseException> result = await getModelFromNamedDatabaseNP();
    if(result.isExceptionResponse()) {
      return Response.exception(result.getException);
    }
    if(result.isCanceledOperationWithoutExceptionAndSuccess()) {
      return Response.cancelOperationWithoutExceptionAndSuccess(result.getCancelOperationWithoutExceptionAndSuccess);
    }
    setModel(EnumBaseModelVM.getModelFromNamedDatabaseNP,result.getData);
    return Response.success(getModel(EnumBaseModelVM.getModelFromNamedDatabaseNP));
  }

  @protected
  @nonVirtual
  Future<Response<T, BaseException>> getModelFromNamedDatabaseNPAndSetModelUsingTypeParameterForFBDS(
      BaseTypeParameter typeParameterForFBDS)
  async {
    Response<T, BaseException> result = await getModelFromNamedDatabaseNPUsingTypeParameterForFBDS(typeParameterForFBDS);
    if(result.isExceptionResponse()) {
      return Response.exception(result.getException);
    }
    if(result.isCanceledOperationWithoutExceptionAndSuccess()) {
      return Response.cancelOperationWithoutExceptionAndSuccess(result.getCancelOperationWithoutExceptionAndSuccess);
    }
    setModel(EnumBaseModelVM.getModelFromNamedDatabaseNP,result.getData);
    return Response.success(getModel(EnumBaseModelVM.getModelFromNamedDatabaseNP));
  }
  // end getNP 4

  // start getParameterNamed 8
  @override
  @protected
  @nonVirtual
  Future<Response<T, BaseException>> getModelFromNamedDatabaseParameterNamed(
      BaseTypeParameter typeParameter)
  {
    if(_isNotExistsDataSource) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    return super.getModelFromNamedDatabaseParameterNamed(typeParameter);
  }

  @override
  @protected
  @nonVirtual
  Future<Response<T, BaseException>> getModelFromNamedDatabaseParameterNamedUsingTypeParameterForFBDS(
      BaseTypeParameter typeParameter,
      BaseTypeParameter typeParameterForFBDS)
  {
    if(_isNotExistsDataSource) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    return super.getModelFromNamedDatabaseParameterNamedUsingTypeParameterForFBDS(
        typeParameter,
        typeParameterForFBDS);
  }

  @protected
  @nonVirtual
  Future<Response<T, BaseException>> getModelFromNamedDatabaseParameterNamedUsingStateTypeParameter()
  {
    return getModelFromNamedDatabaseParameterNamed(getTypeParameter(EnumBaseTypeParameterVM.getModelFromNamedDatabaseParameterNamed));
  }

  @protected
  @nonVirtual
  Future<Response<T, BaseException>> getModelFromNamedDatabaseParameterNamedAndSetModel(
      BaseTypeParameter typeParameter)
  async {
    Response<T, BaseException> result = await getModelFromNamedDatabaseParameterNamed(typeParameter);
    if(result.isExceptionResponse()) {
      return Response.exception(result.getException);
    }
    if(result.isCanceledOperationWithoutExceptionAndSuccess()) {
      return Response.cancelOperationWithoutExceptionAndSuccess(result.getCancelOperationWithoutExceptionAndSuccess);
    }
    setModel(EnumBaseModelVM.getModelFromNamedDatabaseParameterNamed,result.getData);
    return Response.success(getModel(EnumBaseModelVM.getModelFromNamedDatabaseParameterNamed));
  }

  @protected
  @nonVirtual
  Future<Response<T, BaseException>> getModelFromNamedDatabaseParameterNamedAndSetModelUsingStateTypeParameter()
  {
    return getModelFromNamedDatabaseParameterNamedAndSetModel(getTypeParameter(EnumBaseTypeParameterVM.getModelFromNamedDatabaseParameterNamed));
  }

  @protected
  @nonVirtual
  Future<Response<T, BaseException>> getModelFromNamedDatabaseParameterNamedAndSetModelUsingTypeParameterForFBDS(
      BaseTypeParameter typeParameter,
      BaseTypeParameter typeParameterForFBDS)
  async {
    Response<T, BaseException> result = await getModelFromNamedDatabaseParameterNamedUsingTypeParameterForFBDS(
        typeParameter,
        typeParameterForFBDS);
    if(result.isExceptionResponse()) {
      return Response.exception(result.getException);
    }
    if(result.isCanceledOperationWithoutExceptionAndSuccess()) {
      return Response.cancelOperationWithoutExceptionAndSuccess(result.getCancelOperationWithoutExceptionAndSuccess);
    }
    setModel(EnumBaseModelVM.getModelFromNamedDatabaseParameterNamed,result.getData);
    return Response.success(getModel(EnumBaseModelVM.getModelFromNamedDatabaseParameterNamed));
  }

  @protected
  @nonVirtual
  Future<Response<T, BaseException>> getModelFromNamedDatabaseParameterNamedUsingStateTypeParameterAndTypeParameterForFBDS(
      BaseTypeParameter typeParameterForFBDS)
  {
    return getModelFromNamedDatabaseParameterNamedUsingTypeParameterForFBDS(
        getTypeParameter(EnumBaseTypeParameterVM.getModelFromNamedDatabaseParameterNamed),
        typeParameterForFBDS);
  }

  @protected
  @nonVirtual
  Future<Response<T, BaseException>> getModelFromNamedDatabaseParameterNamedAndSetModelUsingStateTypeParameterAndTypeParameterForFBDS(
      BaseTypeParameter typeParameterForFBDS)
  {
    return getModelFromNamedDatabaseParameterNamedAndSetModelUsingTypeParameterForFBDS(
        getTypeParameter(EnumBaseTypeParameterVM.getModelFromNamedDatabaseParameterNamed),
        typeParameterForFBDS);
  }
  // end getParameterNamed 8

  // start insertTIP 4
  @override
  @protected
  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> insertModelToNamedDatabaseTIP(
      T model)
  {
    if(_isNotExistsDataSource) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    return super.insertModelToNamedDatabaseTIP(model);
  }

  @override
  @protected
  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> insertModelToNamedDatabaseTIPUsingTypeParameterForFBDS(
      T model,
      BaseTypeParameter typeParameterForFBDS)
  {
    if(_isNotExistsDataSource) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    return super.insertModelToNamedDatabaseTIPUsingTypeParameterForFBDS(
        model,
        typeParameterForFBDS);
  }

  @protected
  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> insertModelToNamedDatabaseTIPUsingStateModel()
  {
    return insertModelToNamedDatabaseTIP(getModel(EnumBaseModelVM.insertModelToNamedDatabaseTIP));
  }

  @protected
  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> insertModelToNamedDatabaseTIPUsingStateModelAndTypeParameterForFBDS(
      BaseTypeParameter typeParameterForFBDS)
  {
    return insertModelToNamedDatabaseTIPUsingTypeParameterForFBDS(
        getModel(EnumBaseModelVM.insertModelToNamedDatabaseTIP),
        typeParameterForFBDS);
  }
  // end insertTIP 4

  // start insertNP 2
  @override
  @protected
  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> insertModelToNamedDatabaseNP()
  {
    if(_isNotExistsDataSource) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    return super.insertModelToNamedDatabaseNP();
  }

  @override
  @protected
  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> insertModelToNamedDatabaseNPUsingTypeParameterForFBDS(
      BaseTypeParameter typeParameterForFBDS)
  {
    if(_isNotExistsDataSource) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    return super.insertModelToNamedDatabaseNPUsingTypeParameterForFBDS(typeParameterForFBDS);
  }
  // end insertNP 2

  // start insertListTIP 4
  @override
  @protected
  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> insertListModelToNamedDatabaseTIP(
      List<T> listModel)
  {
    if(_isNotExistsDataSource) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    return super.insertListModelToNamedDatabaseTIP(listModel);
  }

  @override
  @protected
  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> insertListModelToNamedDatabaseTIPUsingTypeParameterForFBDS(
      List<T> listModel,
      BaseTypeParameter typeParameterForFBDS)
  {
    if(_isNotExistsDataSource) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    return super.insertListModelToNamedDatabaseTIPUsingTypeParameterForFBDS(
        listModel,
        typeParameterForFBDS);
  }

  @protected
  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> insertListModelToNamedDatabaseTIPUsingStateListModel()
  {
    return insertListModelToNamedDatabaseTIP(getListModel(EnumBaseListModelVM.insertListModelToNamedDatabaseTIP));
  }

  @protected
  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> insertListModelToNamedDatabaseTIPUsingStateListModelAndTypeParameterForFBDS(
      BaseTypeParameter typeParameterForFBDS)
  {
    return insertListModelToNamedDatabaseTIPUsingTypeParameterForFBDS(
        getListModel(EnumBaseListModelVM.insertListModelToNamedDatabaseTIP),
        typeParameterForFBDS);
  }
  // end insertListTIP 4

  // start insertListNP 2
  @override
  @protected
  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> insertListModelToNamedDatabaseNP()
  {
    if(_isNotExistsDataSource) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    return super.insertListModelToNamedDatabaseNP();
  }

  @override
  @protected
  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> insertListModelToNamedDatabaseNPUsingTypeParameterForFBDS(
      BaseTypeParameter typeParameterForFBDS)
  {
    if(_isNotExistsDataSource) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    return super.insertListModelToNamedDatabaseNPUsingTypeParameterForFBDS(typeParameterForFBDS);
  }
  // end insertListNP 2

  // start updateTIP 4
  @override
  @protected
  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> updateModelToNamedDatabaseTIP(
      T model)
  {
    if(_isNotExistsDataSource) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    return super.updateModelToNamedDatabaseTIP(model);
  }

  @override
  @protected
  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> updateModelToNamedDatabaseTIPUsingTypeParameterForFBDS(
      T model,
      BaseTypeParameter typeParameterForFBDS)
  {
    if(_isNotExistsDataSource) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    return super.updateModelToNamedDatabaseTIPUsingTypeParameterForFBDS(
        model,
        typeParameterForFBDS);
  }

  @protected
  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> updateModelToNamedDatabaseTIPUsingStateModel()
  {
    return updateModelToNamedDatabaseTIP(getModel(EnumBaseModelVM.updateModelToNamedDatabaseTIP));
  }

  @protected
  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> updateModelToNamedDatabaseTIPUsingStateModelAndTypeParameterForFBDS(
      BaseTypeParameter typeParameterForFBDS)
  {
    return updateModelToNamedDatabaseTIPUsingTypeParameterForFBDS(
        getModel(EnumBaseModelVM.updateModelToNamedDatabaseTIP),
        typeParameterForFBDS);
  }
  // end updateTIP 4

  // start updateNP 2
  @override
  @protected
  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> updateModelToNamedDatabaseNP()
  {
    if(_isNotExistsDataSource) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    return super.updateModelToNamedDatabaseNP();
  }

  @override
  @protected
  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> updateModelToNamedDatabaseNPUsingTypeParameterForFBDS(
      BaseTypeParameter typeParameterForFBDS)
  {
    if(_isNotExistsDataSource) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    return super.updateModelToNamedDatabaseNPUsingTypeParameterForFBDS(typeParameterForFBDS);
  }
  // end updateNP 2

  // start updateParameterNamed 4
  @override
  @protected
  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> updateModelToNamedDatabaseParameterNamed(
      BaseTypeParameter typeParameter)
  {
    if(_isNotExistsDataSource) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    return super.updateModelToNamedDatabaseParameterNamed(typeParameter);
  }

  @override
  @protected
  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> updateModelToNamedDatabaseParameterNamedUsingTypeParameterForFBDS(
      BaseTypeParameter typeParameter,
      BaseTypeParameter typeParameterForFBDS)
  {
    if(_isNotExistsDataSource) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    return super.updateModelToNamedDatabaseParameterNamedUsingTypeParameterForFBDS(
        typeParameter,
        typeParameterForFBDS);
  }

  @protected
  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> updateModelToNamedDatabaseParameterNamedUsingStateTypeParameter()
  {
    return updateModelToNamedDatabaseParameterNamed(getTypeParameter(EnumBaseTypeParameterVM.updateModelToNamedDatabaseParameterNamed));
  }

  @protected
  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> updateModelToNamedDatabaseParameterNamedUsingStateTypeParameterAndTypeParameterForFBDS(
      BaseTypeParameter typeParameterForFBDS)
  {
    return updateModelToNamedDatabaseParameterNamedUsingTypeParameterForFBDS(
        getTypeParameter(EnumBaseTypeParameterVM.updateModelToNamedDatabaseParameterNamed),
        typeParameterForFBDS);
  }
  // end updateParameterNamed 4

  // start updateListTIP 4
  @override
  @protected
  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> updateListModelToNamedDatabaseTIP(
      List<T> listModel)
  {
    if(_isNotExistsDataSource) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    return super.updateListModelToNamedDatabaseTIP(listModel);
  }

  @override
  @protected
  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> updateListModelToNamedDatabaseTIPUsingTypeParameterForFBDS(
      List<T> listModel,
      BaseTypeParameter typeParameterForFBDS)
  {
    if(_isNotExistsDataSource) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    return super.updateListModelToNamedDatabaseTIPUsingTypeParameterForFBDS(
        listModel,
        typeParameterForFBDS);
  }

  @protected
  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> updateListModelToNamedDatabaseTIPUsingStateListModel()
  {
    return updateListModelToNamedDatabaseTIP(getListModel(EnumBaseListModelVM.updateListModelToNamedDatabaseTIP));
  }

  @protected
  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> updateListModelToNamedDatabaseTIPUsingStateListModelAndTypeParameterForFBDS(
      BaseTypeParameter typeParameterForFBDS)
  {
    return updateListModelToNamedDatabaseTIPUsingTypeParameterForFBDS(
        getListModel(EnumBaseListModelVM.updateListModelToNamedDatabaseTIP),
        typeParameterForFBDS);
  }
  // end updateListTIP 4

  // start updateListNP 2
  @override
  @protected
  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> updateListModelToNamedDatabaseNP()
  {
    if(_isNotExistsDataSource) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    return super.updateListModelToNamedDatabaseNP();
  }

  @override
  @protected
  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> updateListModelToNamedDatabaseNPUsingTypeParameterForFBDS(
      BaseTypeParameter typeParameterForFBDS)
  {
    if(_isNotExistsDataSource) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    return super.updateListModelToNamedDatabaseNPUsingTypeParameterForFBDS(typeParameterForFBDS);
  }
  // end updateListNP 2

  // start updateListParameterNamed 4
  @override
  @protected
  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> updateListModelToNamedDatabaseParameterNamed(
      BaseTypeParameter typeParameter)
  {
    if(_isNotExistsDataSource) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    return super.updateListModelToNamedDatabaseParameterNamed(typeParameter);
  }

  @override
  @protected
  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> updateListModelToNamedDatabaseParameterNamedUsingTypeParameterForFBDS(
      BaseTypeParameter typeParameter,
      BaseTypeParameter typeParameterForFBDS)
  {
    if(_isNotExistsDataSource) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    return super.updateListModelToNamedDatabaseParameterNamedUsingTypeParameterForFBDS(
        typeParameter,
        typeParameterForFBDS);
  }

  @protected
  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> updateListModelToNamedDatabaseParameterNamedUsingStateTypeParameter()
  {
    return updateListModelToNamedDatabaseParameterNamed(getTypeParameter(EnumBaseTypeParameterVM.updateListModelToNamedDatabaseParameterNamed));
  }

  @protected
  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> updateListModelToNamedDatabaseParameterNamedUsingStateTypeParameterAndTypeParameterForFBDS(
      BaseTypeParameter typeParameterForFBDS)
  {
    return updateListModelToNamedDatabaseParameterNamedUsingTypeParameterForFBDS(
        getTypeParameter(EnumBaseTypeParameterVM.updateListModelToNamedDatabaseParameterNamed),
        typeParameterForFBDS);
  }
  // end updateListParameterNamed 4

  // start deleteTIP 4
  @override
  @protected
  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> deleteModelToNamedDatabaseTIP(
      T model)
  {
    if(_isNotExistsDataSource) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    return super.deleteModelToNamedDatabaseTIP(model);
  }

  @override
  @protected
  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> deleteModelToNamedDatabaseTIPUsingTypeParameterForFBDS(
      T model,
      BaseTypeParameter typeParameterForFBDS)
  {
    if(_isNotExistsDataSource) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    return super.deleteModelToNamedDatabaseTIPUsingTypeParameterForFBDS(
        model,
        typeParameterForFBDS);
  }

  @protected
  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> deleteModelToNamedDatabaseTIPUsingStateModel()
  {
    return deleteModelToNamedDatabaseTIP(getModel(EnumBaseModelVM.deleteModelToNamedDatabaseTIP));
  }

  @protected
  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> deleteModelToNamedDatabaseTIPUsingStateModelAndTypeParameterForFBDS(
      BaseTypeParameter typeParameterForFBDS)
  {
    return deleteModelToNamedDatabaseTIPUsingTypeParameterForFBDS(
        getModel(EnumBaseModelVM.deleteModelToNamedDatabaseTIP),
        typeParameterForFBDS);
  }
  // end deleteTIP 4

  // start deleteNP 2
  @override
  @protected
  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> deleteModelToNamedDatabaseNP()
  {
    if(_isNotExistsDataSource) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    return super.deleteModelToNamedDatabaseNP();
  }

  @override
  @protected
  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> deleteModelToNamedDatabaseNPUsingTypeParameterForFBDS(
      BaseTypeParameter typeParameterForFBDS)
  {
    if(_isNotExistsDataSource) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    return super.deleteModelToNamedDatabaseNPUsingTypeParameterForFBDS(typeParameterForFBDS);
  }
  // end deleteNP 2

  // start deleteParameterNamed 4
  @override
  @protected
  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> deleteModelToNamedDatabaseParameterNamed(
      BaseTypeParameter typeParameter)
  {
    if(_isNotExistsDataSource) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    return super.deleteModelToNamedDatabaseParameterNamed(typeParameter);
  }

  @override
  @protected
  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> deleteModelToNamedDatabaseParameterNamedUsingTypeParameterForFBDS(
      BaseTypeParameter typeParameter,
      BaseTypeParameter typeParameterForFBDS)
  {
    if(_isNotExistsDataSource) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    return super.deleteModelToNamedDatabaseParameterNamedUsingTypeParameterForFBDS(
        typeParameter,
        typeParameterForFBDS);
  }

  @protected
  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> deleteModelToNamedDatabaseParameterNamedUsingStateTypeParameter()
  {
    return deleteModelToNamedDatabaseParameterNamed(getTypeParameter(EnumBaseTypeParameterVM.deleteModelToNamedDatabaseParameterNamed));
  }

  @protected
  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> deleteModelToNamedDatabaseParameterNamedUsingStateTypeParameterAndTypeParameterForFBDS(
      BaseTypeParameter typeParameterForFBDS)
  {
    return deleteModelToNamedDatabaseParameterNamedUsingTypeParameterForFBDS(
        getTypeParameter(EnumBaseTypeParameterVM.deleteModelToNamedDatabaseParameterNamed),
        typeParameterForFBDS);
  }
  // end deleteParameterNamed 4

  // start deleteListTIP 4
  @override
  @protected
  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> deleteListModelToNamedDatabaseTIP(
      List<T> listModel)
  {
    if(_isNotExistsDataSource) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    return super.deleteListModelToNamedDatabaseTIP(listModel);
  }

  @override
  @protected
  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> deleteListModelToNamedDatabaseTIPUsingTypeParameterForFBDS(
      List<T> listModel,
      BaseTypeParameter typeParameterForFBDS)
  {
    if(_isNotExistsDataSource) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    return super.deleteListModelToNamedDatabaseTIPUsingTypeParameterForFBDS(
        listModel,
        typeParameterForFBDS);
  }

  @protected
  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> deleteListModelToNamedDatabaseTIPUsingStateListModel()
  {
    return deleteListModelToNamedDatabaseTIP(getListModel(EnumBaseListModelVM.deleteListModelToNamedDatabaseTIP));
  }

  @protected
  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> deleteListModelToNamedDatabaseTIPUsingStateListModelAndTypeParameterForFBDS(
      BaseTypeParameter typeParameterForFBDS)
  {
    return deleteListModelToNamedDatabaseTIPUsingTypeParameterForFBDS(
        getListModel(EnumBaseListModelVM.deleteListModelToNamedDatabaseTIP),
        typeParameterForFBDS);
  }
  // end deleteListTIP 4

  // start deleteListNP 2
  @override
  @protected
  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> deleteListModelToNamedDatabaseNP()
  {
    if(_isNotExistsDataSource) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    return super.deleteListModelToNamedDatabaseNP();
  }

  @override
  @protected
  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> deleteListModelToNamedDatabaseNPUsingTypeParameterForFBDS(
      BaseTypeParameter typeParameterForFBDS)
  {
    if(_isNotExistsDataSource) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    return super.deleteListModelToNamedDatabaseNPUsingTypeParameterForFBDS(typeParameterForFBDS);
  }
  // end deleteListNP 2

  // start deleteListParameterNamed 4
  @override
  @protected
  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> deleteListModelToNamedDatabaseParameterNamed(
      BaseTypeParameter typeParameter)
  {
    if(_isNotExistsDataSource) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    return super.deleteListModelToNamedDatabaseParameterNamed(typeParameter);
  }

  @override
  @protected
  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> deleteListModelToNamedDatabaseParameterNamedUsingTypeParameterForFBDS(
      BaseTypeParameter typeParameter,
      BaseTypeParameter typeParameterForFBDS)
  {
    if(_isNotExistsDataSource) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    return super.deleteListModelToNamedDatabaseParameterNamedUsingTypeParameterForFBDS(
        typeParameter,
        typeParameterForFBDS);
  }

  @protected
  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> deleteListModelToNamedDatabaseParameterNamedUsingStateTypeParameter()
  {
    return deleteListModelToNamedDatabaseParameterNamed(getTypeParameter(EnumBaseTypeParameterVM.deleteListModelToNamedDatabaseParameterNamed));
  }

  @protected
  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> deleteListModelToNamedDatabaseParameterNamedUsingStateTypeParameterAndTypeParameterForFBDS(
      BaseTypeParameter typeParameterForFBDS)
  {
    return deleteListModelToNamedDatabaseParameterNamedUsingTypeParameterForFBDS(
        getTypeParameter(EnumBaseTypeParameterVM.deleteListModelToNamedDatabaseParameterNamed),
        typeParameterForFBDS);
  }
  // end deleteListParameterNamed 4
  /// End DataSource **/

  /// Start For GetListModelParameterNamed **/
  // start runIteratorForGetListParameterNamed 2
  @protected
  @nonVirtual
  Response<List<T>, BaseException> runIteratorForGetListModelParameterNamed(
      BaseTypeParameter<EnumIterator> enumTypeParameterForBaseIterator)
  {
    return _baseRunIteratorForGetListModel(
        enumTypeParameterForBaseIterator,
        _getBaseListModel(EnumBaseListModelVM.getListModelFromNamedDatabaseParameterNamed));
  }

  @protected
  @nonVirtual
  Response<List<T>, BaseException> runIteratorForGetListModelParameterNamedUsingStateEnumTypeParameterForBaseIterator() {
    return _baseRunIteratorForGetListModel(
        getEnumTypeParameterForBaseIterator,
        _getBaseListModel(EnumBaseListModelVM.getListModelFromNamedDatabaseParameterNamed));
  }
  // end runIteratorForGetListParameterNamed 2

  // start insertToGetListParameterNamed 2
  @protected
  @nonVirtual
  Response<bool, BaseException> insertModelToGetListModelParameterNamed(
      T model)
  {
    return _baseInsertModelToGetListModel(
        model,
        _getBaseListModel(EnumBaseListModelVM.getListModelFromNamedDatabaseParameterNamed));
  }

  @protected
  @nonVirtual
  Response<bool, BaseException> insertModelToGetListModelParameterNamedUsingStateModel() {
    return _baseInsertModelToGetListModel(
        getModel(EnumBaseModelVM.insertModelToNamedDatabaseTIP),
        _getBaseListModel(EnumBaseListModelVM.getListModelFromNamedDatabaseParameterNamed));
  }
  // end insertToGetListParameterNamed 2

  // start insertListToGetListParameterNamed 2
  @protected
  @nonVirtual
  Response<bool, BaseException> insertListModelToGetListModelParameterNamed(
      List<T> listModel)
  {
    return _baseInsertListModelToGetListModel(
        listModel,
        _getBaseListModel(EnumBaseListModelVM.getListModelFromNamedDatabaseParameterNamed));
  }

  @protected
  @nonVirtual
  Response<bool, BaseException> insertListModelToGetListModelParameterNamedUsingStateListModel() {
    return _baseInsertListModelToGetListModel(
        getListModel(EnumBaseListModelVM.insertListModelToNamedDatabaseTIP),
        _getBaseListModel(EnumBaseListModelVM.getListModelFromNamedDatabaseParameterNamed));
  }
  // end insertListToGetListParameterNamed 2

  // start updateToGetListParameterNamed 2
  @protected
  @nonVirtual
  Response<bool, BaseException> updateModelToGetListModelParameterNamed(
      T model)
  {
    return _baseUpdateModelToGetListModel(
        model,
        _getBaseListModel(EnumBaseListModelVM.getListModelFromNamedDatabaseParameterNamed));
  }

  @protected
  @nonVirtual
  Response<bool, BaseException> updateModelToGetListModelParameterNamedUsingStateModel() {
    return _baseUpdateModelToGetListModel(
        getModel(EnumBaseModelVM.updateModelToNamedDatabaseTIP),
        _getBaseListModel(EnumBaseListModelVM.getListModelFromNamedDatabaseParameterNamed));
  }
  // start updateToGetListParameterNamed 2

  // start updateListToGetListParameterNamed 2
  @protected
  @nonVirtual
  Response<bool, BaseException> updateListModelToGetListModelParameterNamed(
      List<T> listModel)
  {
    return _baseUpdateListModelToGetListModel(
        listModel,
        _getBaseListModel(EnumBaseListModelVM.getListModelFromNamedDatabaseParameterNamed));
  }

  @protected
  @nonVirtual
  Response<bool, BaseException> updateListModelToGetListModelParameterNamedUsingStateListModel() {
    return _baseUpdateListModelToGetListModel(
        getListModel(EnumBaseListModelVM.updateListModelToNamedDatabaseTIP),
        _getBaseListModel(EnumBaseListModelVM.getListModelFromNamedDatabaseParameterNamed));
  }
  // end updateListToGetListParameterNamed 2

  // start deleteToGetListParameterNamed 2
  @protected
  @nonVirtual
  Response<bool, BaseException> deleteModelToGetListModelParameterNamed(
      T model)
  {
    return _baseDeleteModelToGetListModel(
        model,
        _getBaseListModel(EnumBaseListModelVM.getListModelFromNamedDatabaseParameterNamed));
  }

  @protected
  @nonVirtual
  Response<bool, BaseException> deleteModelToGetListModelParameterNamedUsingStateModel() {
    return _baseDeleteModelToGetListModel(
        getModel(EnumBaseModelVM.deleteModelToNamedDatabaseTIP),
        _getBaseListModel(EnumBaseListModelVM.getListModelFromNamedDatabaseParameterNamed));
  }
  // end deleteToGetListParameterNamed 2

  // start deleteListToGetListParameterNamed 2
  @protected
  @nonVirtual
  Response<bool, BaseException> deleteListModelToGetListModelParameterNamed(
      List<T> listModel)
  {
    return _baseDeleteListModelToGetListModel(
        listModel,
        _getBaseListModel(EnumBaseListModelVM.getListModelFromNamedDatabaseParameterNamed));
  }

  @protected
  @nonVirtual
  Response<bool, BaseException> deleteListModelToGetListModelParameterNamedUsingStateListModel() {
    return _baseDeleteListModelToGetListModel(
        getListModel(EnumBaseListModelVM.deleteListModelToNamedDatabaseTIP),
        _getBaseListModel(EnumBaseListModelVM.getListModelFromNamedDatabaseParameterNamed));
  }
  // end deleteListToGetListParameterNamed 2
  /// End For GetListModelParameterNamed **/

  /// Start For GetListModelNP **/
  ///
  // start runIteratorForGetListNP 2
  @protected
  @nonVirtual
  Response<List<T>, BaseException> runIteratorForGetListModelNP(
      BaseTypeParameter<EnumIterator> enumTypeParameterForBaseIterator)
  {
    return _baseRunIteratorForGetListModel(
        enumTypeParameterForBaseIterator,
        _getBaseListModel(EnumBaseListModelVM.getListModelFromNamedDatabaseNP));
  }

  @protected
  @nonVirtual
  Response<List<T>, BaseException> runIteratorForGetListModelNPUsingStateEnumTypeParameterForBaseIterator() {
    return _baseRunIteratorForGetListModel(
        getEnumTypeParameterForBaseIterator,
        _getBaseListModel(EnumBaseListModelVM.getListModelFromNamedDatabaseNP));
  }
  // end runIteratorForGetListNP 2

  // start insertToGetListNP 2
  @protected
  @nonVirtual
  Response<bool, BaseException> insertModelToGetListModelNP(
      T model)
  {
    return _baseInsertModelToGetListModel(
        model,
        _getBaseListModel(EnumBaseListModelVM.getListModelFromNamedDatabaseNP));
  }

  @protected
  @nonVirtual
  Response<bool, BaseException> insertModelToGetListModelNPUsingStateModel() {
    return _baseInsertModelToGetListModel(
        getModel(EnumBaseModelVM.insertModelToNamedDatabaseTIP),
        _getBaseListModel(EnumBaseListModelVM.getListModelFromNamedDatabaseNP));
  }
  // end insertToGetListNP 2

  // start insertListToGetListNP 2
  @protected
  @nonVirtual
  Response<bool, BaseException> insertListModelToGetListModelNP(
      List<T> listModel)
  {
    return _baseInsertListModelToGetListModel(
        listModel,
        _getBaseListModel(EnumBaseListModelVM.getListModelFromNamedDatabaseNP));
  }

  @protected
  @nonVirtual
  Response<bool, BaseException> insertListModelToGetListModelNPUsingStateListModel() {
    return _baseInsertListModelToGetListModel(
        getListModel(EnumBaseListModelVM.insertListModelToNamedDatabaseTIP),
        _getBaseListModel(EnumBaseListModelVM.getListModelFromNamedDatabaseNP));
  }
  // end insertListToGetListNP 2

  // start updateToGetListNP 2
  @protected
  @nonVirtual
  Response<bool, BaseException> updateModelToGetListModelNP(
      T model)
  {
    return _baseUpdateModelToGetListModel(
        model,
        _getBaseListModel(EnumBaseListModelVM.getListModelFromNamedDatabaseNP));
  }

  @protected
  @nonVirtual
  Response<bool, BaseException> updateModelToGetListModelNPUsingStateModel() {
    return _baseUpdateModelToGetListModel(
        getModel(EnumBaseModelVM.updateModelToNamedDatabaseTIP),
        _getBaseListModel(EnumBaseListModelVM.getListModelFromNamedDatabaseNP));
  }
  // start updateToGetListNP 2

  // start updateListToGetListNP 2
  @protected
  @nonVirtual
  Response<bool, BaseException> updateListModelToGetListModelNP(
      List<T> listModel)
  {
    return _baseUpdateListModelToGetListModel(
        listModel,
        _getBaseListModel(EnumBaseListModelVM.getListModelFromNamedDatabaseNP));
  }

  @protected
  @nonVirtual
  Response<bool, BaseException> updateListModelToGetListModelNPUsingStateListModel() {
    return _baseUpdateListModelToGetListModel(
        getListModel(EnumBaseListModelVM.updateListModelToNamedDatabaseTIP),
        _getBaseListModel(EnumBaseListModelVM.getListModelFromNamedDatabaseNP));
  }
  // end updateListToGetListNP 2

  // start deleteToGetListNP 2
  @protected
  @nonVirtual
  Response<bool, BaseException> deleteModelToGetListModelNP(
      T model)
  {
    return _baseDeleteModelToGetListModel(
        model,
        _getBaseListModel(EnumBaseListModelVM.getListModelFromNamedDatabaseNP));
  }

  @protected
  @nonVirtual
  Response<bool, BaseException> deleteModelToGetListModelNPUsingStateModel() {
    return _baseDeleteModelToGetListModel(
        getModel(EnumBaseModelVM.deleteModelToNamedDatabaseTIP),
        _getBaseListModel(EnumBaseListModelVM.getListModelFromNamedDatabaseNP));
  }
  // end deleteToGetListNP 2

  // start deleteListToGetListNP 2
  @protected
  @nonVirtual
  Response<bool, BaseException> deleteListModelToGetListModelNP(
      List<T> listModel)
  {
    return _baseDeleteListModelToGetListModel(
        listModel,
        _getBaseListModel(EnumBaseListModelVM.getListModelFromNamedDatabaseNP));
  }

  @protected
  @nonVirtual
  Response<bool, BaseException> deleteListModelToGetListModelNPUsingStateListModel() {
    return _baseDeleteListModelToGetListModel(
        getListModel(EnumBaseListModelVM.deleteListModelToNamedDatabaseTIP),
        _getBaseListModel(EnumBaseListModelVM.getListModelFromNamedDatabaseNP));
  }
  // end deleteListToGetListNP 2
  /// End For GetListModelNP **/
  
  /// Start Base/EnumTypeParameter **/
  @protected
  @nonVirtual
  void setEnumAndBaseIteratorToMap(
      EnumIterator operation,
      BaseIterator<T> baseIterator)
  {
    _mapEnumAndBaseIterator[operation] = baseIterator;
  }

  @protected
  @nonVirtual
  BaseTypeParameter<EnumIterator> get getEnumTypeParameterForBaseIterator {
    return _enumTypeParameterForBaseIterator;
  }

  @protected
  @nonVirtual
  set setEnumTypeParameterForBaseIterator(
      BaseTypeParameter<EnumIterator> enumTypeParameterForBaseIterator)
  {
    _enumTypeParameterForBaseIterator = enumTypeParameterForBaseIterator;
  }

  BaseTypeParameter getTypeParameter(
      EnumBaseTypeParameterVM operation)
  {
    if(!_mapEnumBaseTypeParameterVMAndBaseTypeParameter.containsKey(operation)) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"$operation not found");
    }
    return _mapEnumBaseTypeParameterVMAndBaseTypeParameter[operation];
  }

  @protected
  @nonVirtual
  void setTypeParameter(
      EnumBaseTypeParameterVM operation,
      BaseTypeParameter typeParameter)
  {
    if(!_mapEnumBaseTypeParameterVMAndBaseTypeParameter.containsKey(operation)) {
      throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"$operation not found");
    }
    _mapEnumBaseTypeParameterVMAndBaseTypeParameter[operation] = typeParameter;
  }

  @protected
  @nonVirtual
  void setTypeParameterUsingClone(
      EnumBaseTypeParameterVM operation,
      BaseTypeParameter typeParameter)
  {
    if(!_mapEnumBaseTypeParameterVMAndBaseTypeParameter.containsKey(operation)) {
      throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"$operation not found");
    }
    _mapEnumBaseTypeParameterVMAndBaseTypeParameter[operation] = BaseTypeParameter(typeParameter.getParameter);
  }
  /// End Base/EnumTypeParameter **/

  /// Start Model **/
  @protected
  @nonVirtual
  T getModel(
      EnumBaseModelVM operation)
  {
    if(!_mapEnumBaseModelVMAndBaseModel.containsKey(operation)) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"$operation not found");
    }
    return _mapEnumBaseModelVMAndBaseModel[operation];
  }

  @protected
  @nonVirtual
  void setModel(
      EnumBaseModelVM operation,
      T model)
  {
    if(!_mapEnumBaseModelVMAndBaseModel.containsKey(operation)) {
      throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"$operation not found");
    }
    _mapEnumBaseModelVMAndBaseModel[operation] = model;
  }

  @protected
  @nonVirtual
  void setModelUsingClone(
      EnumBaseModelVM operation,
      T model)
  {
    if(!_mapEnumBaseModelVMAndBaseModel.containsKey(operation)) {
      throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"$operation not found");
    }
    _mapEnumBaseModelVMAndBaseModel[operation] = cloneModel(model);
  }

  @protected
  @nonVirtual
  Future<T> getFutureModel(
      EnumBaseModelVM operation)
  async {
    if(!_mapEnumBaseModelVMAndBaseModel.containsKey(operation)) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"$operation not found");
    }
    return _mapEnumBaseModelVMAndBaseModel[operation];
  }

  @protected
  @nonVirtual
  Stream<T> getStreamModel(
      EnumBaseModelVM operation)
  {
    if(!_mapEnumBaseModelVMAndStreamControllerForBaseModel.containsKey(operation)) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"$operation not found");
    }
    return _mapEnumBaseModelVMAndStreamControllerForBaseModel[operation].stream;
  }

  @protected
  @nonVirtual
  void notifyStreamModel(
      EnumBaseModelVM operation)
  {
    if(!_mapEnumBaseModelVMAndStreamControllerForBaseModel.containsKey(operation) ||
        !_mapEnumBaseModelVMAndBaseModel.containsKey(operation))
    {
      throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"$operation not found");
    }
    _mapEnumBaseModelVMAndStreamControllerForBaseModel[operation]
        .sink
        .add(_mapEnumBaseModelVMAndBaseModel[operation]);
  }
  /// End Model **/
  
  /// Start ListModel **/
  @protected
  @nonVirtual
  List<T> getListModel(
      EnumBaseListModelVM operation)
  {
    if(!_mapEnumBaseListModelVMAndBaseListModel.containsKey(operation)) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"$operation not found");
    }
    return _mapEnumBaseListModelVMAndBaseListModel[operation].getParameterListModel;
  }

  @protected
  @nonVirtual
  void setListModel(
      EnumBaseListModelVM operation,
      List<T> listModel)
  {
    if(!_mapEnumBaseListModelVMAndBaseListModel.containsKey(operation)) {
      throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"$operation not found");
    }
    _mapEnumBaseListModelVMAndBaseListModel[operation]
        .setParameterListModel = listModel;
  }

  @protected
  @nonVirtual
  void setListModelUsingClone(
      EnumBaseListModelVM operation,
      List<T> listModel)
  {
    if(!_mapEnumBaseListModelVMAndBaseListModel.containsKey(operation)) {
      throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"$operation not found");
    }
    _mapEnumBaseListModelVMAndBaseListModel[operation]
        .setParameterListModel = cloneListModel(listModel);
  }

  @protected
  @nonVirtual
  Future<List<T>> getFutureListModel(
      EnumBaseListModelVM operation)
  async {
    if(!_mapEnumBaseListModelVMAndBaseListModel.containsKey(operation)) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"$operation not found");
    }
    return _mapEnumBaseListModelVMAndBaseListModel[operation].getParameterListModel;
  }

  @protected
  @nonVirtual
  Stream<List<T>> getStreamListModel(
      EnumBaseListModelVM operation)
  {
    if(!_mapEnumBaseListModelVMAndStreamControllerForListBaseModel.containsKey(operation)) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"$operation not found");
    }
    return _mapEnumBaseListModelVMAndStreamControllerForListBaseModel[operation].stream;
  }

  @protected
  @nonVirtual
  void notifyStreamListModel(
      EnumBaseListModelVM operation)
  {
    if(!_mapEnumBaseListModelVMAndStreamControllerForListBaseModel.containsKey(operation) ||
        !_mapEnumBaseListModelVMAndBaseListModel.containsKey(operation))
    {
      throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"$operation not found");
    }
    _mapEnumBaseListModelVMAndStreamControllerForListBaseModel[operation]
        .sink
        .add(_mapEnumBaseListModelVMAndBaseListModel[operation].getParameterListModel);
  }
  /// End ListModel **/

  /// Start BaseListModel **/
  Y _getBaseListModel(
      EnumBaseListModelVM operation)
  {
    if(!_mapEnumBaseListModelVMAndBaseListModel.containsKey(operation)) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"$operation not found");
    }
    return _mapEnumBaseListModelVMAndBaseListModel[operation];
  }
  /// End BaseListModel **/

  /// Start Setters DataSource **/
  @override
  @protected
  @nonVirtual
  set setDataSource(
      Object dataSource)
  {
    super.setDataSource = dataSource;
    _initListEnumBaseModelVMAndListEnumBaseListModelVMAndListEnumBaseTypeParameterVM();
    _initMapEnumBaseModelVMAndBaseModel();
    _initMapEnumBaseModelVMAndStreamControllerForBaseModel();
    _initMapEnumBaseListModelVMAndBaseListModel();
    _initMapEnumBaseListModelVMAndStreamControllerForListBaseModel();
    _initMapEnumBaseTypeParameterVMAndBaseTypeParameter();
  }
  /// End Setters DataSource **/

  bool get _isNotExistsDataSource {
    return !_isExistsDataSource;
  }

  void _initListEnumBaseModelVMAndListEnumBaseListModelVMAndListEnumBaseTypeParameterVM() {
    if(_isNotExistsDataSource) {
      throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    if(getDataSource == null) {
      throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"DataSource equals null");
    }
    if(getDataSource is InsertModelToNamedDatabaseTIPDataSource<Z>) {
      _listEnumBaseModelVM.add(EnumBaseModelVM.insertModelToNamedDatabaseTIP);
    }
    if(getDataSource is UpdateModelToNamedDatabaseTIPDataSource<Z>) {
      _listEnumBaseModelVM.add(EnumBaseModelVM.updateModelToNamedDatabaseTIP);
    }
    if(getDataSource is DeleteModelToNamedDatabaseTIPDataSource<Z>) {
      _listEnumBaseModelVM.add(EnumBaseModelVM.deleteModelToNamedDatabaseTIP);
    }
    if(getDataSource is GetModelFromNamedDatabaseParameterNamedDataSource<Z,BaseTypeParameter>) {
      _listEnumBaseModelVM.add(EnumBaseModelVM.getModelFromNamedDatabaseParameterNamed);
      _listEnumBaseTypeParameterVM.add(EnumBaseTypeParameterVM.getModelFromNamedDatabaseParameterNamed);
    }
    if(getDataSource is GetModelFromNamedDatabaseNPDataSource<Z>) {
      _listEnumBaseModelVM.add(EnumBaseModelVM.getModelFromNamedDatabaseNP);
    }
    if(getDataSource is InsertListModelToNamedDatabaseTIPDataSource<X>) {
      _listEnumBaseListModelVM.add(EnumBaseListModelVM.insertListModelToNamedDatabaseTIP);
    }
    if(getDataSource is UpdateListModelToNamedDatabaseTIPDataSource<X>) {
      _listEnumBaseListModelVM.add(EnumBaseListModelVM.updateListModelToNamedDatabaseTIP);
    }
    if(getDataSource is DeleteListModelToNamedDatabaseTIPDataSource<X>) {
      _listEnumBaseListModelVM.add(EnumBaseListModelVM.deleteListModelToNamedDatabaseTIP);
    }
    if(getDataSource is GetListModelFromNamedDatabaseParameterNamedDataSource<X,BaseTypeParameter>) {
      _listEnumBaseListModelVM.add(EnumBaseListModelVM.getListModelFromNamedDatabaseParameterNamed);
      _listEnumBaseTypeParameterVM.add(EnumBaseTypeParameterVM.getListModelFromNamedDatabaseParameterNamed);
    }
    if(getDataSource is GetListModelFromNamedDatabaseNPDataSource<X>) {
      _listEnumBaseListModelVM.add(EnumBaseListModelVM.getListModelFromNamedDatabaseNP);
    }
    if(getDataSource is UpdateModelToNamedDatabaseParameterNamedDataSource<BaseTypeParameter>) {
      _listEnumBaseTypeParameterVM.add(EnumBaseTypeParameterVM.updateModelToNamedDatabaseParameterNamed);
    }
    if(getDataSource is DeleteModelToNamedDatabaseParameterNamedDataSource<BaseTypeParameter>) {
      _listEnumBaseTypeParameterVM.add(EnumBaseTypeParameterVM.deleteModelToNamedDatabaseParameterNamed);
    }
    if(getDataSource is UpdateListModelToNamedDatabaseParameterNamedDataSource<BaseTypeParameter>) {
      _listEnumBaseTypeParameterVM.add(EnumBaseTypeParameterVM.updateListModelToNamedDatabaseParameterNamed);
    }
    if(getDataSource is DeleteListModelToNamedDatabaseParameterNamedDataSource<BaseTypeParameter>) {
      _listEnumBaseTypeParameterVM.add(EnumBaseTypeParameterVM.deleteListModelToNamedDatabaseParameterNamed);
    }
  }

  void _initNoDataSourceListEnumBaseModelVM(
      List<EnumBaseModelVM> listEnumBaseModelVM)
  {
    if(_isExistsDataSource) {
      throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"Constructor call noDataSource: $_isNotExistsDataSource");
    }
    if(listEnumBaseModelVM == null) {
      return;
    }
    if(listEnumBaseModelVM.isEmpty) {
      return;
    }
    _listEnumBaseModelVM.addAll(listEnumBaseModelVM);
  }

  void _initNoDataSourceListEnumBaseListModelVM(
      List<EnumBaseListModelVM> listEnumBaseListModelVM)
  {
    if(_isExistsDataSource) {
      throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"Constructor call noDataSource: $_isNotExistsDataSource");
    }
    if(listEnumBaseListModelVM == null) {
      return;
    }
    if(listEnumBaseListModelVM.isEmpty) {
      return;
    }
    _listEnumBaseListModelVM.addAll(listEnumBaseListModelVM);
  }
  
  void _initMapEnumBaseModelVMAndBaseModel() {
    if(_listEnumBaseModelVM.isEmpty) {
      return;
    }
    if(_initObjectBaseModel == null) {
      throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"InitObjectBaseModel equals null");
    }
    for(EnumBaseModelVM enumBaseModelVM in _listEnumBaseModelVM) {
      _mapEnumBaseModelVMAndBaseModel[enumBaseModelVM] = _initObjectBaseModel();
    }
  }

  void _initMapEnumBaseModelVMAndStreamControllerForBaseModel() {
    if(_listEnumBaseModelVM.isEmpty) {
      return;
    }
    for(EnumBaseModelVM enumBaseModelVM in _listEnumBaseModelVM) {
      _mapEnumBaseModelVMAndStreamControllerForBaseModel[enumBaseModelVM] = _initObjectStreamControllerForBaseModel() ?? StreamController<T>.broadcast();
    }
  }

  void _initMapEnumBaseListModelVMAndBaseListModel() {
    if(_listEnumBaseListModelVM.isEmpty) {
      return;
    }
    if(_initObjectBaseListModel == null) {
      throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"InitObjectBaseListModel equals null");
    }
    for(EnumBaseListModelVM enumBaseListModelVM in _listEnumBaseListModelVM) {
      _mapEnumBaseListModelVMAndBaseListModel[enumBaseListModelVM] = _initObjectBaseListModel();
    }
  }

  void _initMapEnumBaseListModelVMAndStreamControllerForListBaseModel() {
    if(_listEnumBaseListModelVM.isEmpty) {
      return;
    }
    for(EnumBaseListModelVM enumBaseListModelVM in _listEnumBaseListModelVM) {
      _mapEnumBaseListModelVMAndStreamControllerForListBaseModel[enumBaseListModelVM] = _initObjectStreamControllerForBaseListModel() ?? StreamController<List<T>>.broadcast();
    }
  }

  void _initMapEnumBaseTypeParameterVMAndBaseTypeParameter() {
    if(_listEnumBaseTypeParameterVM.isEmpty) {
      return;
    }
    for(EnumBaseTypeParameterVM enumBaseTypeParameterVM in _listEnumBaseTypeParameterVM) {
      _mapEnumBaseTypeParameterVMAndBaseTypeParameter[enumBaseTypeParameterVM] = BaseTypeParameter(null);
    }
  }

  Response<List<T>,BaseException> _baseRunIteratorForGetListModel(
      BaseTypeParameter<EnumIterator> baseTypeParameterForBaseIterator,
      Y listModel)
  {
    return listModel
        .runIteratorForGetListModel(thisClass, baseTypeParameterForBaseIterator, _mapEnumAndBaseIterator);
  }

  Response<bool, BaseException> _baseInsertModelToGetListModel(
      T model,
      Y listModel)
  {
    return listModel
        .insertModelToGetListModel(thisClass, cloneModel(model));
  }

  Response<bool, BaseException> _baseInsertListModelToGetListModel(
      List<T> listModelForInsert,
      Y listModel)
  {
    return listModel
        .insertListModelToGetListModel(thisClass, cloneListModel(listModelForInsert));
  }

  Response<bool, BaseException> _baseUpdateModelToGetListModel(
      T model,
      Y listModel)
  {
    return listModel
        .updateModelToGetListModel(thisClass, cloneModel(model));
  }

  Response<bool, BaseException> _baseUpdateListModelToGetListModel(
      List<T> listModelForUpdate,
      Y listModel)
  {
    return listModel
        .updateListModelToGetListModel(thisClass, cloneListModel(listModelForUpdate));
  }

  Response<bool, BaseException> _baseDeleteModelToGetListModel(
      T model,
      Y listModel)
  {
    return listModel
        .deleteModelToGetListModel(thisClass, cloneModel(model));
  }

  Response<bool, BaseException> _baseDeleteListModelToGetListModel(
      List<T> listModelForDelete,
      Y listModel)
  {
    return listModel
        .deleteListModelToGetListModel(thisClass, cloneListModel(listModelForDelete));
  }

  void _disposeForMapEnumAndStreamController(
      Map<Enum,StreamController> map)
  {
    if(map == null) {
      return;
    }
    for(StreamController streamController in map.values) {
      if(streamController == null) {
        continue;
      }
      if(streamController.isClosed) {
        continue;
      }
      streamController.close();
    }
  }
}