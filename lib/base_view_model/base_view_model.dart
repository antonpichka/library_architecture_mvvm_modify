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
import 'package:library_architecture_mvvm_modify/base_background_model/base_background_model.dart';
import 'package:library_architecture_mvvm_modify/base_dispose/base_dispose.dart';
import 'package:library_architecture_mvvm_modify/base_exception/base_exception.dart';
import 'package:library_architecture_mvvm_modify/base_exception/local_exception.dart';
import 'package:library_architecture_mvvm_modify/base_iterator/base_iterator.dart';
import 'package:library_architecture_mvvm_modify/base_model_named_database/base_list_model_named_database.dart';
import 'package:library_architecture_mvvm_modify/base_model_named_database/base_model_named_database.dart';
import 'package:library_architecture_mvvm_modify/base_type_parameter/base_type_parameter.dart';
import 'package:library_architecture_mvvm_modify/base_view_model/enum_named_vm/enum_base_model_named_database_and_base_list_model_named_database_vm.dart';
import 'package:library_architecture_mvvm_modify/base_view_model/enum_named_vm/enum_base_type_parameter_vm.dart';
import 'package:library_architecture_mvvm_modify/interface_data_source/delete_list_model_to_named_database_parameter_named_data_source.dart';
import 'package:library_architecture_mvvm_modify/interface_data_source/delete_list_model_to_named_database_tip_data_source.dart';
import 'package:library_architecture_mvvm_modify/interface_data_source/delete_model_to_named_database_parameter_named_data_source.dart';
import 'package:library_architecture_mvvm_modify/interface_data_source/delete_model_to_named_database_tip_data_source.dart';
import 'package:library_architecture_mvvm_modify/interface_data_source/get_list_model_from_named_database_np_data_source.dart';
import 'package:library_architecture_mvvm_modify/interface_data_source/get_list_model_from_named_database_parameter_named_data_source.dart';
import 'package:library_architecture_mvvm_modify/interface_data_source/get_model_from_named_database_np_data_source.dart';
import 'package:library_architecture_mvvm_modify/interface_data_source/get_model_from_named_database_parameter_named_data_source.dart';
import 'package:library_architecture_mvvm_modify/interface_data_source/insert_list_model_to_named_database_tip_data_source.dart';
import 'package:library_architecture_mvvm_modify/interface_data_source/insert_model_to_named_database_tip_data_source.dart';
import 'package:library_architecture_mvvm_modify/interface_data_source/update_list_model_to_named_database_parameter_named_data_source.dart';
import 'package:library_architecture_mvvm_modify/interface_data_source/update_list_model_to_named_database_tip_data_source.dart';
import 'package:library_architecture_mvvm_modify/interface_data_source/update_model_to_named_database_parameter_named_data_source.dart';
import 'package:library_architecture_mvvm_modify/interface_data_source/update_model_to_named_database_tip_data_source.dart';
import 'package:library_architecture_mvvm_modify/response/response.dart';
import 'package:library_architecture_mvvm_modify/utility/i_streams.dart';
import 'package:library_architecture_mvvm_modify/utility/sc_model.dart';

typedef InitObject<S> = S Function();

abstract class BaseViewModel<T extends BaseModelNamedDatabase,Y extends BaseListModelNamedDatabase<T>,EnumIterator extends Enum>
    extends BaseBackgroundModel<T,Y>
    implements BaseDispose
{
  /* Init Objects */
  final InitObject<SCModel> _initObjectSCModel;

  /* Init List Objects For Model And BaseTypeParameter */
  final List<EnumBaseModelNamedDatabaseAndBaseListModelNamedDatabaseVM> _listEnumBaseModelNamedDatabaseAndBaseListModelNamedDatabaseVM = List.empty(growable: true);
  final List<EnumBaseTypeParameterVM> _listEnumBaseTypeParameterVM = List.empty(growable: true);

  /* Maps For Model And StreamModel And BaseTypeParameter */
  final Map<EnumBaseModelNamedDatabaseAndBaseListModelNamedDatabaseVM,SCModel> _mapEnumBaseModelNamedDatabaseAndBaseListModelNamedDatabaseVMAndSCModel = {};
  final Map<EnumBaseTypeParameterVM,BaseTypeParameter> _mapEnumBaseTypeParameterVMAndBaseTypeParameter = {};

  /* Maps And BaseTypeParameterForBaseIterator For Iterator */
  final Map<EnumIterator,BaseIterator<T>> _mapEnumAndBaseIterator = {};
  BaseTypeParameter<EnumIterator> _enumTypeParameterForBaseIterator = BaseTypeParameter<EnumIterator>(null);

  /* Init DataSource */
  bool _isExistsDataSource;

  // Where parameter initObjectSCModel. SCModel parameter IStreams init DefaultStreamController();
  BaseViewModel.thereIsDataSource(
      Object dataSource,
      this._initObjectSCModel) : super.thereIsDataSource(dataSource)
  {
    _isExistsDataSource = true;
    _initListEnumBaseModelNamedDatabaseAndBaseListModelNamedDatabaseVMAndListEnumBaseTypeParameterVM();
    _initMapEnumBaseModelNamedDatabaseAndBaseListModelNamedDatabaseVMAndSCModel();
    _initMapEnumBaseTypeParameterVMAndBaseTypeParameter();
  }

  // Where parameter initObjectSCModel. SCModel parameter IStreams init DefaultStreamController();
  BaseViewModel.noDataSource(
      List<EnumBaseModelNamedDatabaseAndBaseListModelNamedDatabaseVM> listEnumBaseModelNamedDatabaseAndBaseListModelNamedDatabaseVM,
      this._initObjectSCModel) : super.thereIsDataSource(null)
  {
    _isExistsDataSource = false;
    _initNoDataSourceListEnumBaseModelNamedDatabaseAndBaseListModelNamedDatabaseVM(listEnumBaseModelNamedDatabaseAndBaseListModelNamedDatabaseVM);
    _initMapEnumBaseModelNamedDatabaseAndBaseListModelNamedDatabaseVMAndSCModel();
  }

  bool get _isNotExistsDataSource {
    return !_isExistsDataSource;
  }

  @override
  void dispose() {
    _mapEnumBaseModelNamedDatabaseAndBaseListModelNamedDatabaseVMAndSCModel.forEach((
        EnumBaseModelNamedDatabaseAndBaseListModelNamedDatabaseVM enumBaseModelAndBaseListModelVM,
        SCModel scModel)
    {
      scModel
          .iStreams
          .dispose();
    });
  }

  /// Start Clone **/
  ///
  SCModel _cloneSCModel(
      SCModel scModel)
  {
    return SCModel(
        scModel.iStreams,
        scModel.modelNamedDatabase,
        scModel.listModelNamedDatabase);
  }
  /// End Clone **/

  /// Start DataSource **/
  ///
  // start getListNP 4
  @override
  @protected
  @nonVirtual
  Future<Response<List<T>, BaseException>> getListModelFromNamedDatabaseNP()
  {
    if(_isNotExistsDataSource) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,'Constructor call thereIsDataSource...: $_isExistsDataSource');
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
  Future<Response<List<T>, BaseException>> getListModelFromNamedDatabaseNPAndSetListModelNamedDatabase()
  async {
    Response<List<T>, BaseException> result = await getListModelFromNamedDatabaseNP();
    if(result.isExceptionResponse()) {
      return Response.exception(result.getException);
    }
    if(result.isCanceledOperationWithoutExceptionAndSuccess()) {
      return Response.cancelOperationWithoutExceptionAndSuccess(result.getCancelOperationWithoutExceptionAndSuccess);
    }
    _mapEnumBaseModelNamedDatabaseAndBaseListModelNamedDatabaseVMAndSCModel[EnumBaseModelNamedDatabaseAndBaseListModelNamedDatabaseVM.getListModelFromNamedDatabaseNP]
        .listModelNamedDatabase
        .setParameterListModelNamedDatabase = result.getData;
    return Response.success(_mapEnumBaseModelNamedDatabaseAndBaseListModelNamedDatabaseVMAndSCModel[EnumBaseModelNamedDatabaseAndBaseListModelNamedDatabaseVM.getListModelFromNamedDatabaseNP]
        .listModelNamedDatabase
        .listModelNamedDatabase);
  }

  @protected
  @nonVirtual
  Future<Response<List<T>, BaseException>> getListModelFromNamedDatabaseNPAndSetListModelNamedDatabaseUsingTypeParameterForFBDS(
      BaseTypeParameter typeParameterForFBDS)
  async {
    Response<List<T>, BaseException> result = await getListModelFromNamedDatabaseNPUsingTypeParameterForFBDS(typeParameterForFBDS);
    if(result.isExceptionResponse()) {
      return Response.exception(result.getException);
    }
    if(result.isCanceledOperationWithoutExceptionAndSuccess()) {
      return Response.cancelOperationWithoutExceptionAndSuccess(result.getCancelOperationWithoutExceptionAndSuccess);
    }
    _mapEnumBaseModelNamedDatabaseAndBaseListModelNamedDatabaseVMAndSCModel[EnumBaseModelNamedDatabaseAndBaseListModelNamedDatabaseVM.getListModelFromNamedDatabaseNP]
        .listModelNamedDatabase
        .setParameterListModelNamedDatabase = result.getData;
    return Response.success(_mapEnumBaseModelNamedDatabaseAndBaseListModelNamedDatabaseVMAndSCModel[EnumBaseModelNamedDatabaseAndBaseListModelNamedDatabaseVM.getListModelFromNamedDatabaseNP]
        .listModelNamedDatabase
        .listModelNamedDatabase);
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
  Future<Response<List<T>, BaseException>> getListModelFromNamedDatabaseParameterNamedAndSetListModelNamedDatabase(
      BaseTypeParameter typeParameter)
  async {
    Response<List<T>, BaseException> result = await getListModelFromNamedDatabaseParameterNamed(typeParameter);
    if(result.isExceptionResponse()) {
      return Response.exception(result.getException);
    }
    if(result.isCanceledOperationWithoutExceptionAndSuccess()) {
      return Response.cancelOperationWithoutExceptionAndSuccess(result.getCancelOperationWithoutExceptionAndSuccess);
    }
    _mapEnumBaseModelNamedDatabaseAndBaseListModelNamedDatabaseVMAndSCModel[EnumBaseModelNamedDatabaseAndBaseListModelNamedDatabaseVM.getListModelFromNamedDatabaseParameterNamed]
        .listModelNamedDatabase
        .setParameterListModelNamedDatabase = result.getData;
    return Response.success(_mapEnumBaseModelNamedDatabaseAndBaseListModelNamedDatabaseVMAndSCModel[EnumBaseModelNamedDatabaseAndBaseListModelNamedDatabaseVM.getListModelFromNamedDatabaseParameterNamed]
        .listModelNamedDatabase
        .listModelNamedDatabase);
  }

  @protected
  @nonVirtual
  Future<Response<List<T>, BaseException>> getListModelFromNamedDatabaseParameterNamedAndSetListModelNamedDatabaseUsingStateTypeParameter()
  {
    return getListModelFromNamedDatabaseParameterNamedAndSetListModelNamedDatabase(getTypeParameter(EnumBaseTypeParameterVM.getListModelFromNamedDatabaseParameterNamed));
  }

  @protected
  @nonVirtual
  Future<Response<List<T>, BaseException>> getListModelFromNamedDatabaseParameterNamedAndSetListModelNamedDatabaseUsingTypeParameterForFBDS(
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
    _mapEnumBaseModelNamedDatabaseAndBaseListModelNamedDatabaseVMAndSCModel[EnumBaseModelNamedDatabaseAndBaseListModelNamedDatabaseVM.getListModelFromNamedDatabaseParameterNamed]
        .listModelNamedDatabase
        .setParameterListModelNamedDatabase = result.getData;
    return Response.success(_mapEnumBaseModelNamedDatabaseAndBaseListModelNamedDatabaseVMAndSCModel[EnumBaseModelNamedDatabaseAndBaseListModelNamedDatabaseVM.getListModelFromNamedDatabaseParameterNamed]
        .listModelNamedDatabase
        .listModelNamedDatabase);
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
  Future<Response<List<T>, BaseException>> getListModelFromNamedDatabaseParameterNamedAndSetListModelNamedDatabaseUsingStateTypeParameterAndTypeParameterForFBDS(
      BaseTypeParameter typeParameterForFBDS)
  {
    return getListModelFromNamedDatabaseParameterNamedAndSetListModelNamedDatabaseUsingTypeParameterForFBDS(
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
  Future<Response<T, BaseException>> getModelFromNamedDatabaseNPAndSetModelNamedDatabase()
  async {
    Response<T, BaseException> result = await getModelFromNamedDatabaseNP();
    if(result.isExceptionResponse()) {
      return Response.exception(result.getException);
    }
    if(result.isCanceledOperationWithoutExceptionAndSuccess()) {
      return Response.cancelOperationWithoutExceptionAndSuccess(result.getCancelOperationWithoutExceptionAndSuccess);
    }
    setModelNamedDatabase(EnumBaseModelNamedDatabaseAndBaseListModelNamedDatabaseVM.getModelFromNamedDatabaseNP,result.getData);
    return Response.success(getModelNamedDatabase(EnumBaseModelNamedDatabaseAndBaseListModelNamedDatabaseVM.getModelFromNamedDatabaseNP));
  }

  @protected
  @nonVirtual
  Future<Response<T, BaseException>> getModelFromNamedDatabaseNPAndSetModelNamedDatabaseUsingTypeParameterForFBDS(
      BaseTypeParameter typeParameterForFBDS)
  async {
    Response<T, BaseException> result = await getModelFromNamedDatabaseNPUsingTypeParameterForFBDS(typeParameterForFBDS);
    if(result.isExceptionResponse()) {
      return Response.exception(result.getException);
    }
    if(result.isCanceledOperationWithoutExceptionAndSuccess()) {
      return Response.cancelOperationWithoutExceptionAndSuccess(result.getCancelOperationWithoutExceptionAndSuccess);
    }
    setModelNamedDatabase(EnumBaseModelNamedDatabaseAndBaseListModelNamedDatabaseVM.getModelFromNamedDatabaseNP,result.getData);
    return Response.success(getModelNamedDatabase(EnumBaseModelNamedDatabaseAndBaseListModelNamedDatabaseVM.getModelFromNamedDatabaseNP));
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
  Future<Response<T, BaseException>> getModelFromNamedDatabaseParameterNamedAndSetModelNamedDatabase(
      BaseTypeParameter typeParameter)
  async {
    Response<T, BaseException> result = await getModelFromNamedDatabaseParameterNamed(typeParameter);
    if(result.isExceptionResponse()) {
      return Response.exception(result.getException);
    }
    if(result.isCanceledOperationWithoutExceptionAndSuccess()) {
      return Response.cancelOperationWithoutExceptionAndSuccess(result.getCancelOperationWithoutExceptionAndSuccess);
    }
    setModelNamedDatabase(EnumBaseModelNamedDatabaseAndBaseListModelNamedDatabaseVM.getModelFromNamedDatabaseParameterNamed,result.getData);
    return Response.success(getModelNamedDatabase(EnumBaseModelNamedDatabaseAndBaseListModelNamedDatabaseVM.getModelFromNamedDatabaseParameterNamed));
  }

  @protected
  @nonVirtual
  Future<Response<T, BaseException>> getModelFromNamedDatabaseParameterNamedAndSetModelNamedDatabaseUsingStateTypeParameter()
  {
    return getModelFromNamedDatabaseParameterNamedAndSetModelNamedDatabase(getTypeParameter(EnumBaseTypeParameterVM.getModelFromNamedDatabaseParameterNamed));
  }

  @protected
  @nonVirtual
  Future<Response<T, BaseException>> getModelFromNamedDatabaseParameterNamedAndSetModelNamedDatabaseUsingTypeParameterForFBDS(
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
    setModelNamedDatabase(EnumBaseModelNamedDatabaseAndBaseListModelNamedDatabaseVM.getModelFromNamedDatabaseParameterNamed,result.getData);
    return Response.success(getModelNamedDatabase(EnumBaseModelNamedDatabaseAndBaseListModelNamedDatabaseVM.getModelFromNamedDatabaseParameterNamed));
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
  Future<Response<T, BaseException>> getModelFromNamedDatabaseParameterNamedAndSetModelNamedDatabaseUsingStateTypeParameterAndTypeParameterForFBDS(
      BaseTypeParameter typeParameterForFBDS)
  {
    return getModelFromNamedDatabaseParameterNamedAndSetModelNamedDatabaseUsingTypeParameterForFBDS(
        getTypeParameter(EnumBaseTypeParameterVM.getModelFromNamedDatabaseParameterNamed),
        typeParameterForFBDS);
  }
  // end getParameterNamed 8

  // start insertTIP 4
  @override
  @protected
  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> insertModelToNamedDatabaseTIP(
      T modelNamedDatabase)
  {
    if(_isNotExistsDataSource) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    return super.insertModelToNamedDatabaseTIP(modelNamedDatabase);
  }

  @override
  @protected
  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> insertModelToNamedDatabaseTIPUsingTypeParameterForFBDS(
      T modelNamedDatabase,
      BaseTypeParameter typeParameterForFBDS)
  {
    if(_isNotExistsDataSource) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    return super.insertModelToNamedDatabaseTIPUsingTypeParameterForFBDS(
        modelNamedDatabase,
        typeParameterForFBDS);
  }

  @protected
  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> insertModelToNamedDatabaseTIPUsingStateModelNamedDatabase()
  {
    return insertModelToNamedDatabaseTIP(getModelNamedDatabase(EnumBaseModelNamedDatabaseAndBaseListModelNamedDatabaseVM.insertModelToNamedDatabaseTIP));
  }

  @protected
  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> insertModelToNamedDatabaseTIPUsingStateModelNamedDatabaseAndTypeParameterForFBDS(
      BaseTypeParameter typeParameterForFBDS)
  {
    return insertModelToNamedDatabaseTIPUsingTypeParameterForFBDS(
        getModelNamedDatabase(EnumBaseModelNamedDatabaseAndBaseListModelNamedDatabaseVM.insertModelToNamedDatabaseTIP),
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
      List<T> listModelNamedDatabase)
  {
    if(_isNotExistsDataSource) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    return super.insertListModelToNamedDatabaseTIP(listModelNamedDatabase);
  }

  @override
  @protected
  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> insertListModelToNamedDatabaseTIPUsingTypeParameterForFBDS(
      List<T> listModelNamedDatabase,
      BaseTypeParameter typeParameterForFBDS)
  {
    if(_isNotExistsDataSource) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    return super.insertListModelToNamedDatabaseTIPUsingTypeParameterForFBDS(
        listModelNamedDatabase,
        typeParameterForFBDS);
  }

  @protected
  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> insertListModelToNamedDatabaseTIPUsingStateListModelNamedDatabase()
  {
    return insertListModelToNamedDatabaseTIP(getListModelNamedDatabase(EnumBaseModelNamedDatabaseAndBaseListModelNamedDatabaseVM.insertListModelToNamedDatabaseTIP));
  }

  @protected
  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> insertListModelToNamedDatabaseTIPUsingStateListModelNamedDatabaseAndTypeParameterForFBDS(
      BaseTypeParameter typeParameterForFBDS)
  {
    return insertListModelToNamedDatabaseTIPUsingTypeParameterForFBDS(
        getListModelNamedDatabase(EnumBaseModelNamedDatabaseAndBaseListModelNamedDatabaseVM.insertListModelToNamedDatabaseTIP),
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
      T modelNamedDatabase)
  {
    if(_isNotExistsDataSource) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    return super.updateModelToNamedDatabaseTIP(modelNamedDatabase);
  }

  @override
  @protected
  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> updateModelToNamedDatabaseTIPUsingTypeParameterForFBDS(
      T modelNamedDatabase,
      BaseTypeParameter typeParameterForFBDS)
  {
    if(_isNotExistsDataSource) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    return super.updateModelToNamedDatabaseTIPUsingTypeParameterForFBDS(
        modelNamedDatabase,
        typeParameterForFBDS);
  }

  @protected
  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> updateModelToNamedDatabaseTIPUsingStateModelNamedDatabase()
  {
    return updateModelToNamedDatabaseTIP(getModelNamedDatabase(EnumBaseModelNamedDatabaseAndBaseListModelNamedDatabaseVM.updateModelToNamedDatabaseTIP));
  }

  @protected
  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> updateModelToNamedDatabaseTIPUsingStateModelNamedDatabaseAndTypeParameterForFBDS(
      BaseTypeParameter typeParameterForFBDS)
  {
    return updateModelToNamedDatabaseTIPUsingTypeParameterForFBDS(
        getModelNamedDatabase(EnumBaseModelNamedDatabaseAndBaseListModelNamedDatabaseVM.updateModelToNamedDatabaseTIP),
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
      List<T> listModelNamedDatabase)
  {
    if(_isNotExistsDataSource) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    return super.updateListModelToNamedDatabaseTIP(listModelNamedDatabase);
  }

  @override
  @protected
  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> updateListModelToNamedDatabaseTIPUsingTypeParameterForFBDS(
      List<T> listModelNamedDatabase,
      BaseTypeParameter typeParameterForFBDS)
  {
    if(_isNotExistsDataSource) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    return super.updateListModelToNamedDatabaseTIPUsingTypeParameterForFBDS(
        listModelNamedDatabase,
        typeParameterForFBDS);
  }

  @protected
  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> updateListModelToNamedDatabaseTIPUsingStateListModelNamedDatabase()
  {
    return updateListModelToNamedDatabaseTIP(getListModelNamedDatabase(EnumBaseModelNamedDatabaseAndBaseListModelNamedDatabaseVM.updateListModelToNamedDatabaseTIP));
  }

  @protected
  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> updateListModelToNamedDatabaseTIPUsingStateListModelNamedDatabaseAndTypeParameterForFBDS(
      BaseTypeParameter typeParameterForFBDS)
  {
    return updateListModelToNamedDatabaseTIPUsingTypeParameterForFBDS(
        getListModelNamedDatabase(EnumBaseModelNamedDatabaseAndBaseListModelNamedDatabaseVM.updateListModelToNamedDatabaseTIP),
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
      T modelNamedDatabase)
  {
    if(_isNotExistsDataSource) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    return super.deleteModelToNamedDatabaseTIP(modelNamedDatabase);
  }

  @override
  @protected
  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> deleteModelToNamedDatabaseTIPUsingTypeParameterForFBDS(
      T modelNamedDatabase,
      BaseTypeParameter typeParameterForFBDS)
  {
    if(_isNotExistsDataSource) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    return super.deleteModelToNamedDatabaseTIPUsingTypeParameterForFBDS(
        modelNamedDatabase,
        typeParameterForFBDS);
  }

  @protected
  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> deleteModelToNamedDatabaseTIPUsingStateModelNamedDatabase()
  {
    return deleteModelToNamedDatabaseTIP(getModelNamedDatabase(EnumBaseModelNamedDatabaseAndBaseListModelNamedDatabaseVM.deleteModelToNamedDatabaseTIP));
  }

  @protected
  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> deleteModelToNamedDatabaseTIPUsingStateModelNamedDatabaseAndTypeParameterForFBDS(
      BaseTypeParameter typeParameterForFBDS)
  {
    return deleteModelToNamedDatabaseTIPUsingTypeParameterForFBDS(
        getModelNamedDatabase(EnumBaseModelNamedDatabaseAndBaseListModelNamedDatabaseVM.deleteModelToNamedDatabaseTIP),
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
      List<T> listModelNamedDatabase)
  {
    if(_isNotExistsDataSource) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    return super.deleteListModelToNamedDatabaseTIP(listModelNamedDatabase);
  }

  @override
  @protected
  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> deleteListModelToNamedDatabaseTIPUsingTypeParameterForFBDS(
      List<T> listModelNamedDatabase,
      BaseTypeParameter typeParameterForFBDS)
  {
    if(_isNotExistsDataSource) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    return super.deleteListModelToNamedDatabaseTIPUsingTypeParameterForFBDS(
        listModelNamedDatabase,
        typeParameterForFBDS);
  }

  @protected
  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> deleteListModelToNamedDatabaseTIPUsingStateListModelNamedDatabase()
  {
    return deleteListModelToNamedDatabaseTIP(getListModelNamedDatabase(EnumBaseModelNamedDatabaseAndBaseListModelNamedDatabaseVM.deleteListModelToNamedDatabaseTIP));
  }

  @protected
  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> deleteListModelToNamedDatabaseTIPUsingStateListModelNamedDatabaseAndTypeParameterForFBDS(
      BaseTypeParameter typeParameterForFBDS)
  {
    return deleteListModelToNamedDatabaseTIPUsingTypeParameterForFBDS(
        getListModelNamedDatabase(EnumBaseModelNamedDatabaseAndBaseListModelNamedDatabaseVM.deleteListModelToNamedDatabaseTIP),
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
  Response<List<T>, BaseException> runIteratorForGetListModelNamedDatabaseParameterNamed(
      BaseTypeParameter<EnumIterator> enumTypeParameterForBaseIterator)
  {
    return _baseRunIteratorForGetListModelNamedDatabase(
        enumTypeParameterForBaseIterator,
        _mapEnumBaseModelNamedDatabaseAndBaseListModelNamedDatabaseVMAndSCModel[EnumBaseModelNamedDatabaseAndBaseListModelNamedDatabaseVM.getListModelFromNamedDatabaseParameterNamed].listModelNamedDatabase);
  }

  @protected
  @nonVirtual
  Response<List<T>, BaseException> runIteratorForGetListModelNamedDatabaseParameterNamedUsingStateEnumTypeParameterForBaseIterator() {
    return _baseRunIteratorForGetListModelNamedDatabase(
        getEnumTypeParameterForBaseIterator,
        _mapEnumBaseModelNamedDatabaseAndBaseListModelNamedDatabaseVMAndSCModel[EnumBaseModelNamedDatabaseAndBaseListModelNamedDatabaseVM.getListModelFromNamedDatabaseParameterNamed].listModelNamedDatabase);
  }
  // end runIteratorForGetListParameterNamed 2

  // start insertToGetListParameterNamed 2
  @protected
  @nonVirtual
  Response<bool, BaseException> insertModelNamedDatabaseToGetListModelNamedDatabaseParameterNamed(
      T model)
  {
    return _baseInsertModelNamedDatabaseToGetListModelNamedDatabase(
        model,
        _mapEnumBaseModelNamedDatabaseAndBaseListModelNamedDatabaseVMAndSCModel[EnumBaseModelNamedDatabaseAndBaseListModelNamedDatabaseVM.getListModelFromNamedDatabaseParameterNamed].listModelNamedDatabase);
  }

  @protected
  @nonVirtual
  Response<bool, BaseException> insertModelNamedDatabaseToGetListModelNamedDatabaseParameterNamedUsingStateModelNamedDatabase() {
    return _baseInsertModelNamedDatabaseToGetListModelNamedDatabase(
        getModelNamedDatabase(EnumBaseModelNamedDatabaseAndBaseListModelNamedDatabaseVM.insertModelToNamedDatabaseTIP),
        _mapEnumBaseModelNamedDatabaseAndBaseListModelNamedDatabaseVMAndSCModel[EnumBaseModelNamedDatabaseAndBaseListModelNamedDatabaseVM.getListModelFromNamedDatabaseParameterNamed].listModelNamedDatabase);
  }
  // end insertToGetListParameterNamed 2

  // start insertListToGetListParameterNamed 2
  @protected
  @nonVirtual
  Response<bool, BaseException> insertListModelNamedDatabaseToGetListModelNamedDatabaseParameterNamed(
      List<T> listModel)
  {
    return _baseInsertListModelNamedDatabaseToGetListModelNamedDatabase(
        listModel,
        _mapEnumBaseModelNamedDatabaseAndBaseListModelNamedDatabaseVMAndSCModel[EnumBaseModelNamedDatabaseAndBaseListModelNamedDatabaseVM.getListModelFromNamedDatabaseParameterNamed].listModelNamedDatabase);
  }

  @protected
  @nonVirtual
  Response<bool, BaseException> insertListModelNamedDatabaseToGetListModelNamedDatabaseParameterNamedUsingStateListModelNamedDatabase() {
    return _baseInsertListModelNamedDatabaseToGetListModelNamedDatabase(
        getListModelNamedDatabase(EnumBaseModelNamedDatabaseAndBaseListModelNamedDatabaseVM.insertListModelToNamedDatabaseTIP),
        _mapEnumBaseModelNamedDatabaseAndBaseListModelNamedDatabaseVMAndSCModel[EnumBaseModelNamedDatabaseAndBaseListModelNamedDatabaseVM.getListModelFromNamedDatabaseParameterNamed].listModelNamedDatabase);
  }
  // end insertListToGetListParameterNamed 2

  // start updateToGetListParameterNamed 2
  @protected
  @nonVirtual
  Response<bool, BaseException> updateModelNamedDatabaseToGetListModelNamedDatabaseParameterNamed(
      T modelNamedDatabase)
  {
    return _baseUpdateModelNamedDatabaseToGetListModelNamedDatabase(
        modelNamedDatabase,
        _mapEnumBaseModelNamedDatabaseAndBaseListModelNamedDatabaseVMAndSCModel[EnumBaseModelNamedDatabaseAndBaseListModelNamedDatabaseVM.getListModelFromNamedDatabaseParameterNamed].listModelNamedDatabase);
  }

  @protected
  @nonVirtual
  Response<bool, BaseException> updateModelNamedDatabaseToGetListModelNamedDatabaseParameterNamedUsingStateModelNamedDatabase() {
    return _baseUpdateModelNamedDatabaseToGetListModelNamedDatabase(
        getModelNamedDatabase(EnumBaseModelNamedDatabaseAndBaseListModelNamedDatabaseVM.updateModelToNamedDatabaseTIP),
        _mapEnumBaseModelNamedDatabaseAndBaseListModelNamedDatabaseVMAndSCModel[EnumBaseModelNamedDatabaseAndBaseListModelNamedDatabaseVM.getListModelFromNamedDatabaseParameterNamed].listModelNamedDatabase);
  }
  // start updateToGetListParameterNamed 2

  // start updateListToGetListParameterNamed 2
  @protected
  @nonVirtual
  Response<bool, BaseException> updateListModelNamedDatabaseToGetListModelNamedDatabaseParameterNamed(
      List<T> listModelNamedDatabase)
  {
    return _baseUpdateListModelNamedDatabaseToGetListModelNamedDatabase(
        listModelNamedDatabase,
        _mapEnumBaseModelNamedDatabaseAndBaseListModelNamedDatabaseVMAndSCModel[EnumBaseModelNamedDatabaseAndBaseListModelNamedDatabaseVM.getListModelFromNamedDatabaseParameterNamed].listModelNamedDatabase);
  }

  @protected
  @nonVirtual
  Response<bool, BaseException> updateListModelNamedDatabaseToGetListModelNamedDatabaseParameterNamedUsingStateListModelNamedDatabase() {
    return _baseUpdateListModelNamedDatabaseToGetListModelNamedDatabase(
        getListModelNamedDatabase(EnumBaseModelNamedDatabaseAndBaseListModelNamedDatabaseVM.updateListModelToNamedDatabaseTIP),
        _mapEnumBaseModelNamedDatabaseAndBaseListModelNamedDatabaseVMAndSCModel[EnumBaseModelNamedDatabaseAndBaseListModelNamedDatabaseVM.getListModelFromNamedDatabaseParameterNamed].listModelNamedDatabase);
  }
  // end updateListToGetListParameterNamed 2

  // start deleteToGetListParameterNamed 2
  @protected
  @nonVirtual
  Response<bool, BaseException> deleteModelNamedDatabaseToGetListModelNamedDatabaseParameterNamed(
      T modelNamedDatabase)
  {
    return _baseDeleteModelNamedDatabaseToGetListModelNamedDatabase(
        modelNamedDatabase,
        _mapEnumBaseModelNamedDatabaseAndBaseListModelNamedDatabaseVMAndSCModel[EnumBaseModelNamedDatabaseAndBaseListModelNamedDatabaseVM.getListModelFromNamedDatabaseParameterNamed].listModelNamedDatabase);
  }

  @protected
  @nonVirtual
  Response<bool, BaseException> deleteModelNamedDatabaseToGetListModelNamedDatabaseParameterNamedUsingStateModelNamedDatabase() {
    return _baseDeleteModelNamedDatabaseToGetListModelNamedDatabase(
        getModelNamedDatabase(EnumBaseModelNamedDatabaseAndBaseListModelNamedDatabaseVM.deleteModelToNamedDatabaseTIP),
        _mapEnumBaseModelNamedDatabaseAndBaseListModelNamedDatabaseVMAndSCModel[EnumBaseModelNamedDatabaseAndBaseListModelNamedDatabaseVM.getListModelFromNamedDatabaseParameterNamed].listModelNamedDatabase);
  }
  // end deleteToGetListParameterNamed 2

  // start deleteListToGetListParameterNamed 2
  @protected
  @nonVirtual
  Response<bool, BaseException> deleteListModelNamedDatabaseToGetListModelNamedDatabaseParameterNamed(
      List<T> listModelNamedDatabase)
  {
    return _baseDeleteListModelNamedDatabaseToGetListModelNamedDatabase(
        listModelNamedDatabase,
        _mapEnumBaseModelNamedDatabaseAndBaseListModelNamedDatabaseVMAndSCModel[EnumBaseModelNamedDatabaseAndBaseListModelNamedDatabaseVM.getListModelFromNamedDatabaseParameterNamed].listModelNamedDatabase);
  }

  @protected
  @nonVirtual
  Response<bool, BaseException> deleteListModelNamedDatabaseToGetListModelNamedDatabaseParameterNamedUsingStateListModelNamedDatabase() {
    return _baseDeleteListModelNamedDatabaseToGetListModelNamedDatabase(
        getListModelNamedDatabase(EnumBaseModelNamedDatabaseAndBaseListModelNamedDatabaseVM.deleteListModelToNamedDatabaseTIP),
        _mapEnumBaseModelNamedDatabaseAndBaseListModelNamedDatabaseVMAndSCModel[EnumBaseModelNamedDatabaseAndBaseListModelNamedDatabaseVM.getListModelFromNamedDatabaseParameterNamed].listModelNamedDatabase);
  }
  // end deleteListToGetListParameterNamed 2
  /// End For GetListModelParameterNamed **/

  /// Start For GetListModelNP **/
  ///
  // start runIteratorForGetListNP 2
  @protected
  @nonVirtual
  Response<List<T>, BaseException> runIteratorForGetListModelNamedDatabaseNP(
      BaseTypeParameter<EnumIterator> enumTypeParameterForBaseIterator)
  {
    return _baseRunIteratorForGetListModelNamedDatabase(
        enumTypeParameterForBaseIterator,
        _mapEnumBaseModelNamedDatabaseAndBaseListModelNamedDatabaseVMAndSCModel[EnumBaseModelNamedDatabaseAndBaseListModelNamedDatabaseVM.getListModelFromNamedDatabaseNP].listModelNamedDatabase);
  }

  @protected
  @nonVirtual
  Response<List<T>, BaseException> runIteratorForGetListModelNamedDatabaseNPUsingStateEnumTypeParameterForBaseIterator() {
    return _baseRunIteratorForGetListModelNamedDatabase(
        getEnumTypeParameterForBaseIterator,
        _mapEnumBaseModelNamedDatabaseAndBaseListModelNamedDatabaseVMAndSCModel[EnumBaseModelNamedDatabaseAndBaseListModelNamedDatabaseVM.getListModelFromNamedDatabaseNP].listModelNamedDatabase);
  }
  // end runIteratorForGetListNP 2

  // start insertToGetListNP 2
  @protected
  @nonVirtual
  Response<bool, BaseException> insertModelNamedDatabaseToGetListModelNamedDatabaseNP(
      T modelNamedDatabase)
  {
    return _baseInsertModelNamedDatabaseToGetListModelNamedDatabase(
        modelNamedDatabase,
        _mapEnumBaseModelNamedDatabaseAndBaseListModelNamedDatabaseVMAndSCModel[EnumBaseModelNamedDatabaseAndBaseListModelNamedDatabaseVM.getListModelFromNamedDatabaseNP].listModelNamedDatabase);
  }

  @protected
  @nonVirtual
  Response<bool, BaseException> insertModelNamedDatabaseToGetListModelNamedDatabaseNPUsingStateModelNamedDatabase() {
    return _baseInsertModelNamedDatabaseToGetListModelNamedDatabase(
        getModelNamedDatabase(EnumBaseModelNamedDatabaseAndBaseListModelNamedDatabaseVM.insertModelToNamedDatabaseTIP),
        _mapEnumBaseModelNamedDatabaseAndBaseListModelNamedDatabaseVMAndSCModel[EnumBaseModelNamedDatabaseAndBaseListModelNamedDatabaseVM.getListModelFromNamedDatabaseNP].listModelNamedDatabase);
  }
  // end insertToGetListNP 2

  // start insertListToGetListNP 2
  @protected
  @nonVirtual
  Response<bool, BaseException> insertListModelNamedDatabaseToGetListModelNamedDatabaseNP(
      List<T> listModelNamedDatabase)
  {
    return _baseInsertListModelNamedDatabaseToGetListModelNamedDatabase(
        listModelNamedDatabase,
        _mapEnumBaseModelNamedDatabaseAndBaseListModelNamedDatabaseVMAndSCModel[EnumBaseModelNamedDatabaseAndBaseListModelNamedDatabaseVM.getListModelFromNamedDatabaseNP].listModelNamedDatabase);
  }

  @protected
  @nonVirtual
  Response<bool, BaseException> insertListModelNamedDatabaseToGetListModelNamedDatabaseNPUsingStateListModelNamedDatabase() {
    return _baseInsertListModelNamedDatabaseToGetListModelNamedDatabase(
        getListModelNamedDatabase(EnumBaseModelNamedDatabaseAndBaseListModelNamedDatabaseVM.insertListModelToNamedDatabaseTIP),
        _mapEnumBaseModelNamedDatabaseAndBaseListModelNamedDatabaseVMAndSCModel[EnumBaseModelNamedDatabaseAndBaseListModelNamedDatabaseVM.getListModelFromNamedDatabaseNP].listModelNamedDatabase);
  }
  // end insertListToGetListNP 2

  // start updateToGetListNP 2
  @protected
  @nonVirtual
  Response<bool, BaseException> updateModelNamedDatabaseToGetListModelNamedDatabaseNP(
      T modelNamedDatabase)
  {
    return _baseUpdateModelNamedDatabaseToGetListModelNamedDatabase(
        modelNamedDatabase,
        _mapEnumBaseModelNamedDatabaseAndBaseListModelNamedDatabaseVMAndSCModel[EnumBaseModelNamedDatabaseAndBaseListModelNamedDatabaseVM.getListModelFromNamedDatabaseNP].listModelNamedDatabase);
  }

  @protected
  @nonVirtual
  Response<bool, BaseException> updateModelNamedDatabaseToGetListModelNamedDatabaseNPUsingStateModelNamedDatabase() {
    return _baseUpdateModelNamedDatabaseToGetListModelNamedDatabase(
        getModelNamedDatabase(EnumBaseModelNamedDatabaseAndBaseListModelNamedDatabaseVM.updateModelToNamedDatabaseTIP),
        _mapEnumBaseModelNamedDatabaseAndBaseListModelNamedDatabaseVMAndSCModel[EnumBaseModelNamedDatabaseAndBaseListModelNamedDatabaseVM.getListModelFromNamedDatabaseNP].listModelNamedDatabase);
  }
  // start updateToGetListNP 2

  // start updateListToGetListNP 2
  @protected
  @nonVirtual
  Response<bool, BaseException> updateListModelNamedDatabaseToGetListModelNamedDatabaseNP(
      List<T> listModelNamedDatabase)
  {
    return _baseUpdateListModelNamedDatabaseToGetListModelNamedDatabase(
        listModelNamedDatabase,
        _mapEnumBaseModelNamedDatabaseAndBaseListModelNamedDatabaseVMAndSCModel[EnumBaseModelNamedDatabaseAndBaseListModelNamedDatabaseVM.getListModelFromNamedDatabaseNP].listModelNamedDatabase);
  }

  @protected
  @nonVirtual
  Response<bool, BaseException> updateListModelNamedDatabaseToGetListModelNamedDatabaseNPUsingStateListModelNamedDatabase() {
    return _baseUpdateListModelNamedDatabaseToGetListModelNamedDatabase(
        getListModelNamedDatabase(EnumBaseModelNamedDatabaseAndBaseListModelNamedDatabaseVM.updateListModelToNamedDatabaseTIP),
        _mapEnumBaseModelNamedDatabaseAndBaseListModelNamedDatabaseVMAndSCModel[EnumBaseModelNamedDatabaseAndBaseListModelNamedDatabaseVM.getListModelFromNamedDatabaseNP].listModelNamedDatabase);
  }
  // end updateListToGetListNP 2

  // start deleteToGetListNP 2
  @protected
  @nonVirtual
  Response<bool, BaseException> deleteModelNamedDatabaseToGetListModelNamedDatabaseNP(
      T modelNamedDatabase)
  {
    return _baseDeleteModelNamedDatabaseToGetListModelNamedDatabase(
        modelNamedDatabase,
        _mapEnumBaseModelNamedDatabaseAndBaseListModelNamedDatabaseVMAndSCModel[EnumBaseModelNamedDatabaseAndBaseListModelNamedDatabaseVM.getListModelFromNamedDatabaseNP].listModelNamedDatabase);
  }

  @protected
  @nonVirtual
  Response<bool, BaseException> deleteModelNamedDatabaseToGetListModelNamedDatabaseNPUsingStateModelNamedDatabase() {
    return _baseDeleteModelNamedDatabaseToGetListModelNamedDatabase(
        getModelNamedDatabase(EnumBaseModelNamedDatabaseAndBaseListModelNamedDatabaseVM.deleteModelToNamedDatabaseTIP),
        _mapEnumBaseModelNamedDatabaseAndBaseListModelNamedDatabaseVMAndSCModel[EnumBaseModelNamedDatabaseAndBaseListModelNamedDatabaseVM.getListModelFromNamedDatabaseNP].listModelNamedDatabase);
  }
  // end deleteToGetListNP 2

  // start deleteListToGetListNP 2
  @protected
  @nonVirtual
  Response<bool, BaseException> deleteListModelNamedDatabaseToGetListModelNamedDatabaseNP(
      List<T> listModelNamedDatabase)
  {
    return _baseDeleteListModelNamedDatabaseToGetListModelNamedDatabase(
        listModelNamedDatabase,
        _mapEnumBaseModelNamedDatabaseAndBaseListModelNamedDatabaseVMAndSCModel[EnumBaseModelNamedDatabaseAndBaseListModelNamedDatabaseVM.getListModelFromNamedDatabaseNP].listModelNamedDatabase);
  }

  @protected
  @nonVirtual
  Response<bool, BaseException> deleteListModelNamedDatabaseToGetListModelNamedDatabaseNPUsingStateListModelNamedDatabase() {
    return _baseDeleteListModelNamedDatabaseToGetListModelNamedDatabase(
        getListModelNamedDatabase(EnumBaseModelNamedDatabaseAndBaseListModelNamedDatabaseVM.deleteListModelToNamedDatabaseTIP),
        _mapEnumBaseModelNamedDatabaseAndBaseListModelNamedDatabaseVMAndSCModel[EnumBaseModelNamedDatabaseAndBaseListModelNamedDatabaseVM.getListModelFromNamedDatabaseNP].listModelNamedDatabase);
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

  /// Start IStreams **/
  IStreams getIStreams(
      EnumBaseModelNamedDatabaseAndBaseListModelNamedDatabaseVM operation)
  {
    if(!_mapEnumBaseModelNamedDatabaseAndBaseListModelNamedDatabaseVMAndSCModel.containsKey(operation)) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"$operation not found");
    }
    return _mapEnumBaseModelNamedDatabaseAndBaseListModelNamedDatabaseVMAndSCModel[operation].iStreams;
  }
  /// End IStreams **/

  /// Start ModelNamedDatabase **/
  @protected
  @nonVirtual
  T getModelNamedDatabase(
      EnumBaseModelNamedDatabaseAndBaseListModelNamedDatabaseVM operation)
  {
    if(!_mapEnumBaseModelNamedDatabaseAndBaseListModelNamedDatabaseVMAndSCModel.containsKey(operation)) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"$operation not found");
    }
    return _mapEnumBaseModelNamedDatabaseAndBaseListModelNamedDatabaseVMAndSCModel[operation].modelNamedDatabase;
  }

  @protected
  @nonVirtual
  void setModelNamedDatabase(
      EnumBaseModelNamedDatabaseAndBaseListModelNamedDatabaseVM operation,
      T modelNamedDatabase)
  {
    if(!_mapEnumBaseModelNamedDatabaseAndBaseListModelNamedDatabaseVMAndSCModel.containsKey(operation)) {
      throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"$operation not found");
    }
    _mapEnumBaseModelNamedDatabaseAndBaseListModelNamedDatabaseVMAndSCModel[operation].setParameterModelNamedDatabase = modelNamedDatabase;
  }

  @protected
  @nonVirtual
  void setModelNamedDatabaseUsingClone(
      EnumBaseModelNamedDatabaseAndBaseListModelNamedDatabaseVM operation,
      T modelNamedDatabase)
  {
    if(!_mapEnumBaseModelNamedDatabaseAndBaseListModelNamedDatabaseVMAndSCModel.containsKey(operation)) {
      throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"$operation not found");
    }
    _mapEnumBaseModelNamedDatabaseAndBaseListModelNamedDatabaseVMAndSCModel[operation].setParameterModelNamedDatabase = cloneModelNamedDatabase(modelNamedDatabase);
  }

  @protected
  @nonVirtual
  Future<T> getFutureModelNamedDatabase(
      EnumBaseModelNamedDatabaseAndBaseListModelNamedDatabaseVM operation)
  async {
    if(!_mapEnumBaseModelNamedDatabaseAndBaseListModelNamedDatabaseVMAndSCModel.containsKey(operation)) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"$operation not found");
    }
    return _mapEnumBaseModelNamedDatabaseAndBaseListModelNamedDatabaseVMAndSCModel[operation].modelNamedDatabase;
  }

  @protected
  @nonVirtual
  Stream<T> getStreamModelNamedDatabase(
      EnumBaseModelNamedDatabaseAndBaseListModelNamedDatabaseVM operation)
  {
    if(!_mapEnumBaseModelNamedDatabaseAndBaseListModelNamedDatabaseVMAndSCModel.containsKey(operation)) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"$operation not found");
    }
    return _mapEnumBaseModelNamedDatabaseAndBaseListModelNamedDatabaseVMAndSCModel[operation].iStreams.getStreamModelNamedDatabase;
  }

  @protected
  @nonVirtual
  void notifyStreamModelNamedDatabase(
      EnumBaseModelNamedDatabaseAndBaseListModelNamedDatabaseVM operation)
  {
    if(!_mapEnumBaseModelNamedDatabaseAndBaseListModelNamedDatabaseVMAndSCModel.containsKey(operation) ||
        !_mapEnumBaseModelNamedDatabaseAndBaseListModelNamedDatabaseVMAndSCModel.containsKey(operation))
    {
      throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"$operation not found");
    }
    _mapEnumBaseModelNamedDatabaseAndBaseListModelNamedDatabaseVMAndSCModel[operation]
        .notifyStreamModelNamedDatabase();
  }
  /// End ModelNamedDatabase **/
  
  /// Start ListModelNamedDatabase **/
  @protected
  @nonVirtual
  List<T> getListModelNamedDatabase(
      EnumBaseModelNamedDatabaseAndBaseListModelNamedDatabaseVM operation)
  {
    if(!_mapEnumBaseModelNamedDatabaseAndBaseListModelNamedDatabaseVMAndSCModel.containsKey(operation)) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"$operation not found");
    }
    return _mapEnumBaseModelNamedDatabaseAndBaseListModelNamedDatabaseVMAndSCModel[operation].listModelNamedDatabase.listModelNamedDatabase;
  }

  @protected
  @nonVirtual
  void setListModelNamedDatabase(
      EnumBaseModelNamedDatabaseAndBaseListModelNamedDatabaseVM operation,
      List<T> listModelNamedDatabase)
  {
    if(!_mapEnumBaseModelNamedDatabaseAndBaseListModelNamedDatabaseVMAndSCModel.containsKey(operation)) {
      throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"$operation not found");
    }
    _mapEnumBaseModelNamedDatabaseAndBaseListModelNamedDatabaseVMAndSCModel[operation]
        .listModelNamedDatabase
        .setParameterListModelNamedDatabase = listModelNamedDatabase;
  }

  @protected
  @nonVirtual
  void setListModelNamedDatabaseUsingClone(
      EnumBaseModelNamedDatabaseAndBaseListModelNamedDatabaseVM operation,
      List<T> listModelNamedDatabase)
  {
    if(!_mapEnumBaseModelNamedDatabaseAndBaseListModelNamedDatabaseVMAndSCModel.containsKey(operation)) {
      throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"$operation not found");
    }
    _mapEnumBaseModelNamedDatabaseAndBaseListModelNamedDatabaseVMAndSCModel[operation]
        .listModelNamedDatabase
        .setParameterListModelNamedDatabase = cloneListModelNamedDatabase(listModelNamedDatabase);
  }

  @protected
  @nonVirtual
  Future<List<T>> getFutureListModelNamedDatabase(
      EnumBaseModelNamedDatabaseAndBaseListModelNamedDatabaseVM operation)
  async {
    if(!_mapEnumBaseModelNamedDatabaseAndBaseListModelNamedDatabaseVMAndSCModel.containsKey(operation)) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"$operation not found");
    }
    return _mapEnumBaseModelNamedDatabaseAndBaseListModelNamedDatabaseVMAndSCModel[operation].listModelNamedDatabase.listModelNamedDatabase;
  }

  @protected
  @nonVirtual
  Stream<List<T>> getStreamListModelNamedDatabase(
      EnumBaseModelNamedDatabaseAndBaseListModelNamedDatabaseVM operation)
  {
    if(!_mapEnumBaseModelNamedDatabaseAndBaseListModelNamedDatabaseVMAndSCModel.containsKey(operation)) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"$operation not found");
    }
    return _mapEnumBaseModelNamedDatabaseAndBaseListModelNamedDatabaseVMAndSCModel[operation].iStreams.getStreamListModelNamedDatabase;
  }

  @protected
  @nonVirtual
  void notifyStreamListModelNamedDatabase(
      EnumBaseModelNamedDatabaseAndBaseListModelNamedDatabaseVM operation)
  {
    if(!_mapEnumBaseModelNamedDatabaseAndBaseListModelNamedDatabaseVMAndSCModel.containsKey(operation)) {
      throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"$operation not found");
    }
    _mapEnumBaseModelNamedDatabaseAndBaseListModelNamedDatabaseVMAndSCModel[operation]
        .notifyStreamListModelNamedDatabase();
  }
  /// End ListModelNamedDatabase **/

  Response<List<T>,BaseException> _baseRunIteratorForGetListModelNamedDatabase(
      BaseTypeParameter<EnumIterator> typeParameterForBaseIterator,
      Y listModelNamedDatabase)
  {
    return listModelNamedDatabase
        .runIteratorForGetListModelNamedDatabase(thisClass, typeParameterForBaseIterator, _mapEnumAndBaseIterator);
  }

  Response<bool, BaseException> _baseInsertModelNamedDatabaseToGetListModelNamedDatabase(
      T modelNamedDatabase,
      Y listModelNamedDatabase)
  {
    return listModelNamedDatabase
        .insertModelNamedDatabaseToGetListModelNamedDatabase(thisClass, cloneModelNamedDatabase(modelNamedDatabase));
  }

  Response<bool, BaseException> _baseInsertListModelNamedDatabaseToGetListModelNamedDatabase(
      List<T> listModelNamedDatabaseForInsert,
      Y listModelNamedDatabase)
  {
    return listModelNamedDatabase
        .insertListModelNamedDatabaseToGetListModelNamedDatabase(thisClass, cloneListModelNamedDatabase(listModelNamedDatabaseForInsert));
  }

  Response<bool, BaseException> _baseUpdateModelNamedDatabaseToGetListModelNamedDatabase(
      T modelNamedDatabase,
      Y listModelNamedDatabase)
  {
    return listModelNamedDatabase
        .updateModelNamedDatabaseToGetListModelNamedDatabase(thisClass, cloneModelNamedDatabase(modelNamedDatabase));
  }

  Response<bool, BaseException> _baseUpdateListModelNamedDatabaseToGetListModelNamedDatabase(
      List<T> listModelNamedDatabaseForUpdate,
      Y listModelNamedDatabase)
  {
    return listModelNamedDatabase
        .updateListModelNamedDatabaseToGetListModelNamedDatabase(thisClass, cloneListModelNamedDatabase(listModelNamedDatabaseForUpdate));
  }

  Response<bool, BaseException> _baseDeleteModelNamedDatabaseToGetListModelNamedDatabase(
      T modelNamedDatabase,
      Y listModelNamedDatabase)
  {
    return listModelNamedDatabase
        .deleteModelNamedDatabaseToGetListModelNamedDatabase(thisClass, cloneModelNamedDatabase(modelNamedDatabase));
  }

  Response<bool, BaseException> _baseDeleteListModelNamedDatabaseToGetListModelNamedDatabase(
      List<T> listModelNamedDatabaseForDelete,
      Y listModelNamedDatabase)
  {
    return listModelNamedDatabase
        .deleteListModelNamedDatabaseToGetListModelNamedDatabase(thisClass, cloneListModelNamedDatabase(listModelNamedDatabaseForDelete));
  }

  void _initListEnumBaseModelNamedDatabaseAndBaseListModelNamedDatabaseVMAndListEnumBaseTypeParameterVM() {
    if(_isNotExistsDataSource) {
      throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    if(dataSource == null) {
      throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"DataSource equals null");
    }
    if(dataSource is InsertModelToNamedDatabaseTIPDataSource<T>) {
      _listEnumBaseModelNamedDatabaseAndBaseListModelNamedDatabaseVM.add(EnumBaseModelNamedDatabaseAndBaseListModelNamedDatabaseVM.insertModelToNamedDatabaseTIP);
    }
    if(dataSource is UpdateModelToNamedDatabaseTIPDataSource<T>) {
      _listEnumBaseModelNamedDatabaseAndBaseListModelNamedDatabaseVM.add(EnumBaseModelNamedDatabaseAndBaseListModelNamedDatabaseVM.updateModelToNamedDatabaseTIP);
    }
    if(dataSource is DeleteModelToNamedDatabaseTIPDataSource<T>) {
      _listEnumBaseModelNamedDatabaseAndBaseListModelNamedDatabaseVM.add(EnumBaseModelNamedDatabaseAndBaseListModelNamedDatabaseVM.deleteModelToNamedDatabaseTIP);
    }
    if(dataSource is GetModelFromNamedDatabaseParameterNamedDataSource<T,BaseTypeParameter>) {
      _listEnumBaseModelNamedDatabaseAndBaseListModelNamedDatabaseVM.add(EnumBaseModelNamedDatabaseAndBaseListModelNamedDatabaseVM.getModelFromNamedDatabaseParameterNamed);
      _listEnumBaseTypeParameterVM.add(EnumBaseTypeParameterVM.getModelFromNamedDatabaseParameterNamed);
    }
    if(dataSource is GetModelFromNamedDatabaseNPDataSource<T>) {
      _listEnumBaseModelNamedDatabaseAndBaseListModelNamedDatabaseVM.add(EnumBaseModelNamedDatabaseAndBaseListModelNamedDatabaseVM.getModelFromNamedDatabaseNP);
    }
    if(dataSource is InsertListModelToNamedDatabaseTIPDataSource<Y>) {
      _listEnumBaseModelNamedDatabaseAndBaseListModelNamedDatabaseVM.add(EnumBaseModelNamedDatabaseAndBaseListModelNamedDatabaseVM.insertListModelToNamedDatabaseTIP);
    }
    if(dataSource is UpdateListModelToNamedDatabaseTIPDataSource<Y>) {
      _listEnumBaseModelNamedDatabaseAndBaseListModelNamedDatabaseVM.add(EnumBaseModelNamedDatabaseAndBaseListModelNamedDatabaseVM.updateListModelToNamedDatabaseTIP);
    }
    if(dataSource is DeleteListModelToNamedDatabaseTIPDataSource<Y>) {
      _listEnumBaseModelNamedDatabaseAndBaseListModelNamedDatabaseVM.add(EnumBaseModelNamedDatabaseAndBaseListModelNamedDatabaseVM.deleteListModelToNamedDatabaseTIP);
    }
    if(dataSource is GetListModelFromNamedDatabaseParameterNamedDataSource<Y,BaseTypeParameter>) {
      _listEnumBaseModelNamedDatabaseAndBaseListModelNamedDatabaseVM.add(EnumBaseModelNamedDatabaseAndBaseListModelNamedDatabaseVM.getListModelFromNamedDatabaseParameterNamed);
      _listEnumBaseTypeParameterVM.add(EnumBaseTypeParameterVM.getListModelFromNamedDatabaseParameterNamed);
    }
    if(dataSource is GetListModelFromNamedDatabaseNPDataSource<Y>) {
      _listEnumBaseModelNamedDatabaseAndBaseListModelNamedDatabaseVM.add(EnumBaseModelNamedDatabaseAndBaseListModelNamedDatabaseVM.getListModelFromNamedDatabaseNP);
    }
    if(dataSource is UpdateModelToNamedDatabaseParameterNamedDataSource<BaseTypeParameter>) {
      _listEnumBaseTypeParameterVM.add(EnumBaseTypeParameterVM.updateModelToNamedDatabaseParameterNamed);
    }
    if(dataSource is DeleteModelToNamedDatabaseParameterNamedDataSource<BaseTypeParameter>) {
      _listEnumBaseTypeParameterVM.add(EnumBaseTypeParameterVM.deleteModelToNamedDatabaseParameterNamed);
    }
    if(dataSource is UpdateListModelToNamedDatabaseParameterNamedDataSource<BaseTypeParameter>) {
      _listEnumBaseTypeParameterVM.add(EnumBaseTypeParameterVM.updateListModelToNamedDatabaseParameterNamed);
    }
    if(dataSource is DeleteListModelToNamedDatabaseParameterNamedDataSource<BaseTypeParameter>) {
      _listEnumBaseTypeParameterVM.add(EnumBaseTypeParameterVM.deleteListModelToNamedDatabaseParameterNamed);
    }
  }

  void _initNoDataSourceListEnumBaseModelNamedDatabaseAndBaseListModelNamedDatabaseVM(
      List<EnumBaseModelNamedDatabaseAndBaseListModelNamedDatabaseVM> listEnumBaseModelNamedDatabaseAndBaseListModelNamedDatabaseVM)
  {
    if(_isExistsDataSource) {
      throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"Constructor call noDataSource: $_isNotExistsDataSource");
    }
    if(listEnumBaseModelNamedDatabaseAndBaseListModelNamedDatabaseVM == null) {
      return;
    }
    if(listEnumBaseModelNamedDatabaseAndBaseListModelNamedDatabaseVM.isEmpty) {
      return;
    }
    _listEnumBaseModelNamedDatabaseAndBaseListModelNamedDatabaseVM.addAll(listEnumBaseModelNamedDatabaseAndBaseListModelNamedDatabaseVM);
  }

  void _initMapEnumBaseModelNamedDatabaseAndBaseListModelNamedDatabaseVMAndSCModel() {
    if(_listEnumBaseModelNamedDatabaseAndBaseListModelNamedDatabaseVM.isEmpty) {
      return;
    }
    if(_initObjectSCModel == null) {
      throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"InitObjectSCModel equals null");
    }
    for(EnumBaseModelNamedDatabaseAndBaseListModelNamedDatabaseVM enumBaseModelVM in _listEnumBaseModelNamedDatabaseAndBaseListModelNamedDatabaseVM) {
      _mapEnumBaseModelNamedDatabaseAndBaseListModelNamedDatabaseVMAndSCModel[enumBaseModelVM] = _cloneSCModel(_initObjectSCModel());
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
}