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
import 'package:library_architecture_mvvm_modify/base_model_named_database/base_list_model_named.dart';
import 'package:library_architecture_mvvm_modify/base_model_named_database/base_model_named.dart';
import 'package:library_architecture_mvvm_modify/base_type_parameter/base_type_parameter.dart';
import 'package:library_architecture_mvvm_modify/base_view_model/enum_named_vm/enum_base_model_named_and_base_list_model_named_vm.dart';
import 'package:library_architecture_mvvm_modify/base_view_model/enum_named_vm/enum_base_type_parameter_vm.dart';
import 'package:library_architecture_mvvm_modify/interface_data_source/delete_list_model_to_named_parameter_named_data_source.dart';
import 'package:library_architecture_mvvm_modify/interface_data_source/delete_list_model_to_named_tip_data_source.dart';
import 'package:library_architecture_mvvm_modify/interface_data_source/delete_model_to_named_parameter_named_data_source.dart';
import 'package:library_architecture_mvvm_modify/interface_data_source/delete_model_to_named_tip_data_source.dart';
import 'package:library_architecture_mvvm_modify/interface_data_source/get_list_model_from_named_np_data_source.dart';
import 'package:library_architecture_mvvm_modify/interface_data_source/get_list_model_from_named_parameter_named_data_source.dart';
import 'package:library_architecture_mvvm_modify/interface_data_source/get_model_from_named_np_data_source.dart';
import 'package:library_architecture_mvvm_modify/interface_data_source/get_model_from_named_parameter_named_data_source.dart';
import 'package:library_architecture_mvvm_modify/interface_data_source/insert_list_model_to_named_parameter_named_data_source.dart';
import 'package:library_architecture_mvvm_modify/interface_data_source/insert_list_model_to_named_tip_data_source.dart';
import 'package:library_architecture_mvvm_modify/interface_data_source/insert_model_to_named_parameter_named_data_source.dart';
import 'package:library_architecture_mvvm_modify/interface_data_source/insert_model_to_named_tip_data_source.dart';
import 'package:library_architecture_mvvm_modify/interface_data_source/update_list_model_to_named_parameter_named_data_source.dart';
import 'package:library_architecture_mvvm_modify/interface_data_source/update_list_model_to_named_tip_data_source.dart';
import 'package:library_architecture_mvvm_modify/interface_data_source/update_model_to_named_parameter_named_data_source.dart';
import 'package:library_architecture_mvvm_modify/interface_data_source/update_model_to_named_tip_data_source.dart';
import 'package:library_architecture_mvvm_modify/response/response.dart';
import 'package:library_architecture_mvvm_modify/utility/i_stream.dart';

abstract class BaseViewModel<T extends BaseModelNamed,Y extends BaseListModelNamed<T>,EnumIterator extends Enum>
    extends BaseBackgroundModel<T,Y>
    implements BaseDispose
{
  /* Init List Objects For Model And BaseTypeParameter */
  final List<EnumBaseModelNamedAndBaseListModelNamedVM> _listEnumBaseModelNamedAndBaseListModelNamedVM = List.empty(growable: true);
  final List<EnumBaseTypeParameterVM> _listEnumBaseTypeParameterVM = List.empty(growable: true);

  /* Maps For Model And StreamModel And BaseTypeParameter */
  final Map<EnumBaseModelNamedAndBaseListModelNamedVM,IStream> _mapEnumBaseModelNamedAndBaseListModelNamedVMAndIStream = {};
  final Map<EnumBaseTypeParameterVM,BaseTypeParameter> _mapEnumBaseTypeParameterVMAndBaseTypeParameter = {};

  /* Maps And BaseTypeParameterForBaseIterator For Iterator */
  final Map<EnumIterator,BaseIterator<T>> _mapEnumAndBaseIterator = {};
  BaseTypeParameter<EnumIterator> _enumTypeParameterForBaseIterator = BaseTypeParameter<EnumIterator>(null);

  /* Init DataSource */
  bool _isExistsDataSource;

  // Where parameter initObjectSCModel. SCModel parameter IStreams init DefaultStreamController();
  BaseViewModel.thereIsDataSource(Object dataSource) : super.thereIsDataSource(dataSource)
  {
    _isExistsDataSource = true;
    _initListEnumBaseModelNamedAndBaseListModelNamedAndListEnumBaseTypeParameterVM();
    _initMapEnumBaseModelNamedAndBaseListModelNamedVMAndIStream();
    _initMapEnumBaseTypeParameterVMAndBaseTypeParameter();
  }

  // Where parameter initObjectSCModel. SCModel parameter IStreams init DefaultStreamController();
  BaseViewModel.noDataSource(List<EnumBaseModelNamedAndBaseListModelNamedVM> listEnumBaseModelNamedAndBaseListModelNamedVM) : super.thereIsDataSource(null)
  {
    _isExistsDataSource = false;
    _initNoDataSourceListEnumBaseModelNamedAndBaseListModelNamedVM(listEnumBaseModelNamedAndBaseListModelNamedVM);
    _initMapEnumBaseModelNamedAndBaseListModelNamedVMAndIStream();
  }

  bool get _isNotExistsDataSource {
    return !_isExistsDataSource;
  }

  @override
  void dispose() {
    _mapEnumBaseModelNamedAndBaseListModelNamedVMAndIStream.forEach((
        EnumBaseModelNamedAndBaseListModelNamedVM enumBaseModelAndBaseListModelVM,
        IStream iStreams)
    {
      iStreams.dispose();
    });
  }

  /// Start Clone **/
  ///
  IStream<T> initAndCloneIStream();
  /// End Clone **/

  /// Start DataSource **/
  ///
  // start getListNP 4
  @override
  @protected
  @nonVirtual
  Future<Response<List<T>, BaseException>> getListModelFromNamedNP()
  {
    if(_isNotExistsDataSource) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,'Constructor call thereIsDataSource...: $_isExistsDataSource');
    }
    return super.getListModelFromNamedNP();
  }

  @override
  @protected
  @nonVirtual
  Future<Response<List<T>, BaseException>> getListModelFromNamedNPUsingTypeParameterForFBDS(
      BaseTypeParameter typeParameterForFBDS)
  {
    if(_isNotExistsDataSource) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    return super.getListModelFromNamedNPUsingTypeParameterForFBDS(typeParameterForFBDS);
  }

  @protected
  @nonVirtual
  Future<Response<List<T>, BaseException>> getListModelFromNamedNPAndSetListModelNamed()
  async {
    Response<List<T>, BaseException> result = await getListModelFromNamedNP();
    if(result.isExceptionResponse()) {
      return Response.exception(result.getException);
    }
    if(result.isCanceledOperationWithoutExceptionAndSuccess()) {
      return Response.cancelOperationWithoutExceptionAndSuccess(result.getCancelOperationWithoutExceptionAndSuccess);
    }
    _mapEnumBaseModelNamedAndBaseListModelNamedVMAndIStream[EnumBaseModelNamedAndBaseListModelNamedVM.getListModelFromNamedNP]
        .getListModelNamed
        .setParameterListModelNamed = result.getData;
    return Response.success(_mapEnumBaseModelNamedAndBaseListModelNamedVMAndIStream[EnumBaseModelNamedAndBaseListModelNamedVM.getListModelFromNamedNP]
        .getListModelNamed
        .listModelNamed);
  }

  @protected
  @nonVirtual
  Future<Response<List<T>, BaseException>> getListModelFromNamedNPAndSetListModelNamedUsingTypeParameterForFBDS(
      BaseTypeParameter typeParameterForFBDS)
  async {
    Response<List<T>, BaseException> result = await getListModelFromNamedNPUsingTypeParameterForFBDS(typeParameterForFBDS);
    if(result.isExceptionResponse()) {
      return Response.exception(result.getException);
    }
    if(result.isCanceledOperationWithoutExceptionAndSuccess()) {
      return Response.cancelOperationWithoutExceptionAndSuccess(result.getCancelOperationWithoutExceptionAndSuccess);
    }
    _mapEnumBaseModelNamedAndBaseListModelNamedVMAndIStream[EnumBaseModelNamedAndBaseListModelNamedVM.getListModelFromNamedNP]
        .getListModelNamed
        .setParameterListModelNamed = result.getData;
    return Response.success(_mapEnumBaseModelNamedAndBaseListModelNamedVMAndIStream[EnumBaseModelNamedAndBaseListModelNamedVM.getListModelFromNamedNP]
        .getListModelNamed
        .listModelNamed);
  }
  // end getListNP 4

  // start getListParameterNamed 8
  @override
  @protected
  @nonVirtual
  Future<Response<List<T>, BaseException>> getListModelFromNamedParameterNamed(
      BaseTypeParameter typeParameter)
  {
    if(_isNotExistsDataSource) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    return super.getListModelFromNamedParameterNamed(typeParameter);
  }

  @override
  @protected
  @nonVirtual
  Future<Response<List<T>, BaseException>> getListModelFromNamedParameterNamedUsingTypeParameterForFBDS(
      BaseTypeParameter typeParameter,
      BaseTypeParameter typeParameterForFBDS)
  {
    if(_isNotExistsDataSource) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    return super.getListModelFromNamedParameterNamedUsingTypeParameterForFBDS(
        typeParameter,
        typeParameterForFBDS);
  }

  @protected
  @nonVirtual
  Future<Response<List<T>, BaseException>> getListModelFromNamedParameterNamedUsingStateTypeParameter()
  {
    return getListModelFromNamedParameterNamed(getTypeParameter(EnumBaseTypeParameterVM.getListModelFromNamedParameterNamed));
  }

  @protected
  @nonVirtual
  Future<Response<List<T>, BaseException>> getListModelFromNamedParameterNamedAndSetListModelNamed(
      BaseTypeParameter typeParameter)
  async {
    Response<List<T>, BaseException> result = await getListModelFromNamedParameterNamed(typeParameter);
    if(result.isExceptionResponse()) {
      return Response.exception(result.getException);
    }
    if(result.isCanceledOperationWithoutExceptionAndSuccess()) {
      return Response.cancelOperationWithoutExceptionAndSuccess(result.getCancelOperationWithoutExceptionAndSuccess);
    }
    _mapEnumBaseModelNamedAndBaseListModelNamedVMAndIStream[EnumBaseModelNamedAndBaseListModelNamedVM.getListModelFromNamedParameterNamed]
        .getListModelNamed
        .setParameterListModelNamed = result.getData;
    return Response.success(_mapEnumBaseModelNamedAndBaseListModelNamedVMAndIStream[EnumBaseModelNamedAndBaseListModelNamedVM.getListModelFromNamedParameterNamed]
        .getListModelNamed
        .listModelNamed);
  }

  @protected
  @nonVirtual
  Future<Response<List<T>, BaseException>> getListModelFromNamedParameterNamedAndSetListModelNamedUsingStateTypeParameter()
  {
    return getListModelFromNamedParameterNamedAndSetListModelNamed(getTypeParameter(EnumBaseTypeParameterVM.getListModelFromNamedParameterNamed));
  }

  @protected
  @nonVirtual
  Future<Response<List<T>, BaseException>> getListModelFromNamedParameterNamedAndSetListModelNamedUsingTypeParameterForFBDS(
      BaseTypeParameter typeParameter,
      BaseTypeParameter typeParameterForFBDS)
  async {
    Response<List<T>, BaseException> result = await getListModelFromNamedParameterNamedUsingTypeParameterForFBDS(
        typeParameter,
        typeParameterForFBDS);
    if(result.isExceptionResponse()) {
      return Response.exception(result.getException);
    }
    if(result.isCanceledOperationWithoutExceptionAndSuccess()) {
      return Response.cancelOperationWithoutExceptionAndSuccess(result.getCancelOperationWithoutExceptionAndSuccess);
    }
    _mapEnumBaseModelNamedAndBaseListModelNamedVMAndIStream[EnumBaseModelNamedAndBaseListModelNamedVM.getListModelFromNamedParameterNamed]
        .getListModelNamed
        .setParameterListModelNamed = result.getData;
    return Response.success(_mapEnumBaseModelNamedAndBaseListModelNamedVMAndIStream[EnumBaseModelNamedAndBaseListModelNamedVM.getListModelFromNamedParameterNamed]
        .getListModelNamed
        .listModelNamed);
  }

  @protected
  @nonVirtual
  Future<Response<List<T>, BaseException>> getListModelFromNamedParameterNamedUsingStateTypeParameterAndTypeParameterForFBDS(
      BaseTypeParameter typeParameterForFBDS)
  {
    return getListModelFromNamedParameterNamedUsingTypeParameterForFBDS(
        getTypeParameter(EnumBaseTypeParameterVM.getListModelFromNamedParameterNamed),
        typeParameterForFBDS);
  }

  @protected
  @nonVirtual
  Future<Response<List<T>, BaseException>> getListModelFromNamedParameterNamedAndSetListModelNamedUsingStateTypeParameterAndTypeParameterForFBDS(
      BaseTypeParameter typeParameterForFBDS)
  {
    return getListModelFromNamedParameterNamedAndSetListModelNamedUsingTypeParameterForFBDS(
        getTypeParameter(EnumBaseTypeParameterVM.getListModelFromNamedParameterNamed),
        typeParameterForFBDS);
  }
  // end getListParameterNamed 8

  // start getNP 4
  @override
  @protected
  @nonVirtual
  Future<Response<T, BaseException>> getModelFromNamedNP()
  {
    if(_isNotExistsDataSource) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    return super.getModelFromNamedNP();
  }

  @override
  @protected
  @nonVirtual
  Future<Response<T, BaseException>> getModelFromNamedNPUsingTypeParameterForFBDS(
      BaseTypeParameter typeParameterForFBDS)
  {
    if(_isNotExistsDataSource) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    return super.getModelFromNamedNPUsingTypeParameterForFBDS(typeParameterForFBDS);
  }

  @protected
  @nonVirtual
  Future<Response<T, BaseException>> getModelFromNamedNPAndSetModelNamed()
  async {
    Response<T, BaseException> result = await getModelFromNamedNP();
    if(result.isExceptionResponse()) {
      return Response.exception(result.getException);
    }
    if(result.isCanceledOperationWithoutExceptionAndSuccess()) {
      return Response.cancelOperationWithoutExceptionAndSuccess(result.getCancelOperationWithoutExceptionAndSuccess);
    }
    setModelNamed(EnumBaseModelNamedAndBaseListModelNamedVM.getModelFromNamedNP,result.getData);
    return Response.success(getModelNamed(EnumBaseModelNamedAndBaseListModelNamedVM.getModelFromNamedNP));
  }

  @protected
  @nonVirtual
  Future<Response<T, BaseException>> getModelFromNamedNPAndSetModelNamedUsingTypeParameterForFBDS(
      BaseTypeParameter typeParameterForFBDS)
  async {
    Response<T, BaseException> result = await getModelFromNamedNPUsingTypeParameterForFBDS(typeParameterForFBDS);
    if(result.isExceptionResponse()) {
      return Response.exception(result.getException);
    }
    if(result.isCanceledOperationWithoutExceptionAndSuccess()) {
      return Response.cancelOperationWithoutExceptionAndSuccess(result.getCancelOperationWithoutExceptionAndSuccess);
    }
    setModelNamed(EnumBaseModelNamedAndBaseListModelNamedVM.getModelFromNamedNP,result.getData);
    return Response.success(getModelNamed(EnumBaseModelNamedAndBaseListModelNamedVM.getModelFromNamedNP));
  }
  // end getNP 4

  // start getParameterNamed 8
  @override
  @protected
  @nonVirtual
  Future<Response<T, BaseException>> getModelFromNamedParameterNamed(
      BaseTypeParameter typeParameter)
  {
    if(_isNotExistsDataSource) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    return super.getModelFromNamedParameterNamed(typeParameter);
  }

  @override
  @protected
  @nonVirtual
  Future<Response<T, BaseException>> getModelFromNamedParameterNamedUsingTypeParameterForFBDS(
      BaseTypeParameter typeParameter,
      BaseTypeParameter typeParameterForFBDS)
  {
    if(_isNotExistsDataSource) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    return super.getModelFromNamedParameterNamedUsingTypeParameterForFBDS(
        typeParameter,
        typeParameterForFBDS);
  }

  @protected
  @nonVirtual
  Future<Response<T, BaseException>> getModelFromNamedParameterNamedUsingStateTypeParameter()
  {
    return getModelFromNamedParameterNamed(getTypeParameter(EnumBaseTypeParameterVM.getModelFromNamedParameterNamed));
  }

  @protected
  @nonVirtual
  Future<Response<T, BaseException>> getModelFromNamedParameterNamedAndSetModelNamed(
      BaseTypeParameter typeParameter)
  async {
    Response<T, BaseException> result = await getModelFromNamedParameterNamed(typeParameter);
    if(result.isExceptionResponse()) {
      return Response.exception(result.getException);
    }
    if(result.isCanceledOperationWithoutExceptionAndSuccess()) {
      return Response.cancelOperationWithoutExceptionAndSuccess(result.getCancelOperationWithoutExceptionAndSuccess);
    }
    setModelNamed(EnumBaseModelNamedAndBaseListModelNamedVM.getModelFromNamedParameterNamed,result.getData);
    return Response.success(getModelNamed(EnumBaseModelNamedAndBaseListModelNamedVM.getModelFromNamedParameterNamed));
  }

  @protected
  @nonVirtual
  Future<Response<T, BaseException>> getModelFromNamedParameterNamedAndSetModelNamedUsingStateTypeParameter()
  {
    return getModelFromNamedParameterNamedAndSetModelNamed(getTypeParameter(EnumBaseTypeParameterVM.getModelFromNamedParameterNamed));
  }

  @protected
  @nonVirtual
  Future<Response<T, BaseException>> getModelFromNamedParameterNamedAndSetModelNamedUsingTypeParameterForFBDS(
      BaseTypeParameter typeParameter,
      BaseTypeParameter typeParameterForFBDS)
  async {
    Response<T, BaseException> result = await getModelFromNamedParameterNamedUsingTypeParameterForFBDS(
        typeParameter,
        typeParameterForFBDS);
    if(result.isExceptionResponse()) {
      return Response.exception(result.getException);
    }
    if(result.isCanceledOperationWithoutExceptionAndSuccess()) {
      return Response.cancelOperationWithoutExceptionAndSuccess(result.getCancelOperationWithoutExceptionAndSuccess);
    }
    setModelNamed(EnumBaseModelNamedAndBaseListModelNamedVM.getModelFromNamedParameterNamed,result.getData);
    return Response.success(getModelNamed(EnumBaseModelNamedAndBaseListModelNamedVM.getModelFromNamedParameterNamed));
  }

  @protected
  @nonVirtual
  Future<Response<T, BaseException>> getModelFromNamedParameterNamedUsingStateTypeParameterAndTypeParameterForFBDS(
      BaseTypeParameter typeParameterForFBDS)
  {
    return getModelFromNamedParameterNamedUsingTypeParameterForFBDS(
        getTypeParameter(EnumBaseTypeParameterVM.getModelFromNamedParameterNamed),
        typeParameterForFBDS);
  }

  @protected
  @nonVirtual
  Future<Response<T, BaseException>> getModelFromNamedParameterNamedAndSetModelNamedUsingStateTypeParameterAndTypeParameterForFBDS(
      BaseTypeParameter typeParameterForFBDS)
  {
    return getModelFromNamedParameterNamedAndSetModelNamedUsingTypeParameterForFBDS(
        getTypeParameter(EnumBaseTypeParameterVM.getModelFromNamedParameterNamed),
        typeParameterForFBDS);
  }
  // end getParameterNamed 8

  // start insertTIP 4
  @override
  @protected
  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> insertModelToNamedTIP(
      T modelNamed)
  {
    if(_isNotExistsDataSource) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    return super.insertModelToNamedTIP(modelNamed);
  }

  @override
  @protected
  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> insertModelToNamedTIPUsingTypeParameterForFBDS(
      T modelNamed,
      BaseTypeParameter typeParameterForFBDS)
  {
    if(_isNotExistsDataSource) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    return super.insertModelToNamedTIPUsingTypeParameterForFBDS(
        modelNamed,
        typeParameterForFBDS);
  }

  @protected
  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> insertModelToNamedTIPUsingStateModelNamed()
  {
    return insertModelToNamedTIP(getModelNamed(EnumBaseModelNamedAndBaseListModelNamedVM.insertModelToNamedTIP));
  }

  @protected
  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> insertModelToNamedTIPUsingStateModelNamedAndTypeParameterForFBDS(
      BaseTypeParameter typeParameterForFBDS)
  {
    return insertModelToNamedTIPUsingTypeParameterForFBDS(
        getModelNamed(EnumBaseModelNamedAndBaseListModelNamedVM.insertModelToNamedTIP),
        typeParameterForFBDS);
  }
  // end insertTIP 4

  // start insertNP 2
  @override
  @protected
  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> insertModelToNamedNP()
  {
    if(_isNotExistsDataSource) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    return super.insertModelToNamedNP();
  }

  @override
  @protected
  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> insertModelToNamedNPUsingTypeParameterForFBDS(
      BaseTypeParameter typeParameterForFBDS)
  {
    if(_isNotExistsDataSource) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    return super.insertModelToNamedNPUsingTypeParameterForFBDS(typeParameterForFBDS);
  }
  // end insertNP 2

  // start insertParameterNamed 4
  @override
  @protected
  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> insertModelToNamedParameterNamed(
      BaseTypeParameter typeParameter)
  {
    if(_isNotExistsDataSource) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    return super.insertModelToNamedParameterNamed(typeParameter);
  }

  @override
  @protected
  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> insertModelToNamedParameterNamedUsingTypeParameterForFBDS(
      BaseTypeParameter typeParameter,
      BaseTypeParameter typeParameterForFBDS)
  {
    if(_isNotExistsDataSource) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    return super.insertModelToNamedParameterNamedUsingTypeParameterForFBDS(
        typeParameter,
        typeParameterForFBDS);
  }

  @protected
  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> insertModelToNamedParameterNamedUsingStateTypeParameter()
  {
    return insertModelToNamedParameterNamed(getTypeParameter(EnumBaseTypeParameterVM.insertModelToNamedParameterNamed));
  }

  @protected
  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> insertModelToNamedParameterNamedUsingStateTypeParameterAndTypeParameterForFBDS(
      BaseTypeParameter typeParameterForFBDS)
  {
    return insertModelToNamedParameterNamedUsingTypeParameterForFBDS(
        getTypeParameter(EnumBaseTypeParameterVM.insertModelToNamedParameterNamed),
        typeParameterForFBDS);
  }
  // end insertParameterNamed 4

  // start insertListTIP 4
  @override
  @protected
  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> insertListModelToNamedTIP(
      List<T> listModelNamed)
  {
    if(_isNotExistsDataSource) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    return super.insertListModelToNamedTIP(listModelNamed);
  }

  @override
  @protected
  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> insertListModelToNamedTIPUsingTypeParameterForFBDS(
      List<T> listModelNamed,
      BaseTypeParameter typeParameterForFBDS)
  {
    if(_isNotExistsDataSource) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    return super.insertListModelToNamedTIPUsingTypeParameterForFBDS(
        listModelNamed,
        typeParameterForFBDS);
  }

  @protected
  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> insertListModelToNamedTIPUsingStateListModelNamed()
  {
    return insertListModelToNamedTIP(getListModelNamed(EnumBaseModelNamedAndBaseListModelNamedVM.insertListModelToNamedTIP));
  }

  @protected
  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> insertListModelToNamedTIPUsingStateListModelNamedAndTypeParameterForFBDS(
      BaseTypeParameter typeParameterForFBDS)
  {
    return insertListModelToNamedTIPUsingTypeParameterForFBDS(
        getListModelNamed(EnumBaseModelNamedAndBaseListModelNamedVM.insertListModelToNamedTIP),
        typeParameterForFBDS);
  }
  // end insertListTIP 4

  // start insertListNP 2
  @override
  @protected
  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> insertListModelToNamedNP()
  {
    if(_isNotExistsDataSource) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    return super.insertListModelToNamedNP();
  }

  @override
  @protected
  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> insertListModelToNamedNPUsingTypeParameterForFBDS(
      BaseTypeParameter typeParameterForFBDS)
  {
    if(_isNotExistsDataSource) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    return super.insertListModelToNamedNPUsingTypeParameterForFBDS(typeParameterForFBDS);
  }
  // end insertListNP 2

  // start insertListParameterNamed 4
  @override
  @protected
  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> insertListModelToNamedParameterNamed(
      BaseTypeParameter typeParameter)
  {
    if(_isNotExistsDataSource) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    return super.insertListModelToNamedParameterNamed(typeParameter);
  }

  @override
  @protected
  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> insertListModelToNamedParameterNamedUsingTypeParameterForFBDS(
      BaseTypeParameter typeParameter,
      BaseTypeParameter typeParameterForFBDS)
  {
    if(_isNotExistsDataSource) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    return super.insertListModelToNamedParameterNamedUsingTypeParameterForFBDS(
        typeParameter,
        typeParameterForFBDS);
  }

  @protected
  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> insertListModelToNamedParameterNamedUsingStateTypeParameter()
  {
    return insertListModelToNamedParameterNamed(getTypeParameter(EnumBaseTypeParameterVM.insertListModelToNamedParameterNamed));
  }

  @protected
  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> insertListModelToNamedParameterNamedUsingStateTypeParameterAndTypeParameterForFBDS(
      BaseTypeParameter typeParameterForFBDS)
  {
    return insertListModelToNamedParameterNamedUsingTypeParameterForFBDS(
        getTypeParameter(EnumBaseTypeParameterVM.insertListModelToNamedParameterNamed),
        typeParameterForFBDS);
  }
  // end insertListParameterNamed 4

  // start updateTIP 4
  @override
  @protected
  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> updateModelToNamedTIP(
      T modelNamed)
  {
    if(_isNotExistsDataSource) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    return super.updateModelToNamedTIP(modelNamed);
  }

  @override
  @protected
  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> updateModelToNamedTIPUsingTypeParameterForFBDS(
      T modelNamed,
      BaseTypeParameter typeParameterForFBDS)
  {
    if(_isNotExistsDataSource) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    return super.updateModelToNamedTIPUsingTypeParameterForFBDS(
        modelNamed,
        typeParameterForFBDS);
  }

  @protected
  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> updateModelToNamedTIPUsingStateModelNamed()
  {
    return updateModelToNamedTIP(getModelNamed(EnumBaseModelNamedAndBaseListModelNamedVM.updateModelToNamedTIP));
  }

  @protected
  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> updateModelToNamedTIPUsingStateModelNamedAndTypeParameterForFBDS(
      BaseTypeParameter typeParameterForFBDS)
  {
    return updateModelToNamedTIPUsingTypeParameterForFBDS(
        getModelNamed(EnumBaseModelNamedAndBaseListModelNamedVM.updateModelToNamedTIP),
        typeParameterForFBDS);
  }
  // end updateTIP 4

  // start updateNP 2
  @override
  @protected
  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> updateModelToNamedNP()
  {
    if(_isNotExistsDataSource) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    return super.updateModelToNamedNP();
  }

  @override
  @protected
  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> updateModelToNamedNPUsingTypeParameterForFBDS(
      BaseTypeParameter typeParameterForFBDS)
  {
    if(_isNotExistsDataSource) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    return super.updateModelToNamedNPUsingTypeParameterForFBDS(typeParameterForFBDS);
  }
  // end updateNP 2

  // start updateParameterNamed 4
  @override
  @protected
  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> updateModelToNamedParameterNamed(
      BaseTypeParameter typeParameter)
  {
    if(_isNotExistsDataSource) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    return super.updateModelToNamedParameterNamed(typeParameter);
  }

  @override
  @protected
  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> updateModelToNamedParameterNamedUsingTypeParameterForFBDS(
      BaseTypeParameter typeParameter,
      BaseTypeParameter typeParameterForFBDS)
  {
    if(_isNotExistsDataSource) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    return super.updateModelToNamedParameterNamedUsingTypeParameterForFBDS(
        typeParameter,
        typeParameterForFBDS);
  }

  @protected
  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> updateModelToNamedParameterNamedUsingStateTypeParameter()
  {
    return updateModelToNamedParameterNamed(getTypeParameter(EnumBaseTypeParameterVM.updateModelToNamedParameterNamed));
  }

  @protected
  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> updateModelToNamedParameterNamedUsingStateTypeParameterAndTypeParameterForFBDS(
      BaseTypeParameter typeParameterForFBDS)
  {
    return updateModelToNamedParameterNamedUsingTypeParameterForFBDS(
        getTypeParameter(EnumBaseTypeParameterVM.updateModelToNamedParameterNamed),
        typeParameterForFBDS);
  }
  // end updateParameterNamed 4

  // start updateListTIP 4
  @override
  @protected
  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> updateListModelToNamedTIP(
      List<T> listModelNamed)
  {
    if(_isNotExistsDataSource) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    return super.updateListModelToNamedTIP(listModelNamed);
  }

  @override
  @protected
  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> updateListModelToNamedTIPUsingTypeParameterForFBDS(
      List<T> listModelNamed,
      BaseTypeParameter typeParameterForFBDS)
  {
    if(_isNotExistsDataSource) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    return super.updateListModelToNamedTIPUsingTypeParameterForFBDS(
        listModelNamed,
        typeParameterForFBDS);
  }

  @protected
  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> updateListModelToNamedTIPUsingStateListModelNamed()
  {
    return updateListModelToNamedTIP(getListModelNamed(EnumBaseModelNamedAndBaseListModelNamedVM.updateListModelToNamedTIP));
  }

  @protected
  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> updateListModelToNamedTIPUsingStateListModelNamedAndTypeParameterForFBDS(
      BaseTypeParameter typeParameterForFBDS)
  {
    return updateListModelToNamedTIPUsingTypeParameterForFBDS(
        getListModelNamed(EnumBaseModelNamedAndBaseListModelNamedVM.updateListModelToNamedTIP),
        typeParameterForFBDS);
  }
  // end updateListTIP 4

  // start updateListNP 2
  @override
  @protected
  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> updateListModelToNamedNP()
  {
    if(_isNotExistsDataSource) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    return super.updateListModelToNamedNP();
  }

  @override
  @protected
  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> updateListModelToNamedNPUsingTypeParameterForFBDS(
      BaseTypeParameter typeParameterForFBDS)
  {
    if(_isNotExistsDataSource) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    return super.updateListModelToNamedNPUsingTypeParameterForFBDS(typeParameterForFBDS);
  }
  // end updateListNP 2

  // start updateListParameterNamed 4
  @override
  @protected
  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> updateListModelToNamedParameterNamed(
      BaseTypeParameter typeParameter)
  {
    if(_isNotExistsDataSource) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    return super.updateListModelToNamedParameterNamed(typeParameter);
  }

  @override
  @protected
  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> updateListModelToNamedParameterNamedUsingTypeParameterForFBDS(
      BaseTypeParameter typeParameter,
      BaseTypeParameter typeParameterForFBDS)
  {
    if(_isNotExistsDataSource) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    return super.updateListModelToNamedParameterNamedUsingTypeParameterForFBDS(
        typeParameter,
        typeParameterForFBDS);
  }

  @protected
  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> updateListModelToNamedParameterNamedUsingStateTypeParameter()
  {
    return updateListModelToNamedParameterNamed(getTypeParameter(EnumBaseTypeParameterVM.updateListModelToNamedParameterNamed));
  }

  @protected
  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> updateListModelToNamedParameterNamedUsingStateTypeParameterAndTypeParameterForFBDS(
      BaseTypeParameter typeParameterForFBDS)
  {
    return updateListModelToNamedParameterNamedUsingTypeParameterForFBDS(
        getTypeParameter(EnumBaseTypeParameterVM.updateListModelToNamedParameterNamed),
        typeParameterForFBDS);
  }
  // end updateListParameterNamed 4

  // start deleteTIP 4
  @override
  @protected
  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> deleteModelToNamedTIP(
      T modelNamed)
  {
    if(_isNotExistsDataSource) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    return super.deleteModelToNamedTIP(modelNamed);
  }

  @override
  @protected
  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> deleteModelToNamedTIPUsingTypeParameterForFBDS(
      T modelNamed,
      BaseTypeParameter typeParameterForFBDS)
  {
    if(_isNotExistsDataSource) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    return super.deleteModelToNamedTIPUsingTypeParameterForFBDS(
        modelNamed,
        typeParameterForFBDS);
  }

  @protected
  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> deleteModelToNamedTIPUsingStateModelNamed()
  {
    return deleteModelToNamedTIP(getModelNamed(EnumBaseModelNamedAndBaseListModelNamedVM.deleteModelToNamedTIP));
  }

  @protected
  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> deleteModelToNamedTIPUsingStateModelNamedAndTypeParameterForFBDS(
      BaseTypeParameter typeParameterForFBDS)
  {
    return deleteModelToNamedTIPUsingTypeParameterForFBDS(
        getModelNamed(EnumBaseModelNamedAndBaseListModelNamedVM.deleteModelToNamedTIP),
        typeParameterForFBDS);
  }
  // end deleteTIP 4

  // start deleteNP 2
  @override
  @protected
  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> deleteModelToNamedNP()
  {
    if(_isNotExistsDataSource) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    return super.deleteModelToNamedNP();
  }

  @override
  @protected
  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> deleteModelToNamedNPUsingTypeParameterForFBDS(
      BaseTypeParameter typeParameterForFBDS)
  {
    if(_isNotExistsDataSource) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    return super.deleteModelToNamedNPUsingTypeParameterForFBDS(typeParameterForFBDS);
  }
  // end deleteNP 2

  // start deleteParameterNamed 4
  @override
  @protected
  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> deleteModelToNamedParameterNamed(
      BaseTypeParameter typeParameter)
  {
    if(_isNotExistsDataSource) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    return super.deleteModelToNamedParameterNamed(typeParameter);
  }

  @override
  @protected
  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> deleteModelToNamedParameterNamedUsingTypeParameterForFBDS(
      BaseTypeParameter typeParameter,
      BaseTypeParameter typeParameterForFBDS)
  {
    if(_isNotExistsDataSource) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    return super.deleteModelToNamedParameterNamedUsingTypeParameterForFBDS(
        typeParameter,
        typeParameterForFBDS);
  }

  @protected
  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> deleteModelToNamedParameterNamedUsingStateTypeParameter()
  {
    return deleteModelToNamedParameterNamed(getTypeParameter(EnumBaseTypeParameterVM.deleteModelToNamedParameterNamed));
  }

  @protected
  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> deleteModelToNamedParameterNamedUsingStateTypeParameterAndTypeParameterForFBDS(
      BaseTypeParameter typeParameterForFBDS)
  {
    return deleteModelToNamedParameterNamedUsingTypeParameterForFBDS(
        getTypeParameter(EnumBaseTypeParameterVM.deleteModelToNamedParameterNamed),
        typeParameterForFBDS);
  }
  // end deleteParameterNamed 4

  // start deleteListTIP 4
  @override
  @protected
  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> deleteListModelToNamedTIP(
      List<T> listModelNamed)
  {
    if(_isNotExistsDataSource) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    return super.deleteListModelToNamedTIP(listModelNamed);
  }

  @override
  @protected
  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> deleteListModelToNamedTIPUsingTypeParameterForFBDS(
      List<T> listModelNamed,
      BaseTypeParameter typeParameterForFBDS)
  {
    if(_isNotExistsDataSource) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    return super.deleteListModelToNamedTIPUsingTypeParameterForFBDS(
        listModelNamed,
        typeParameterForFBDS);
  }

  @protected
  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> deleteListModelToNamedTIPUsingStateListModelNamed()
  {
    return deleteListModelToNamedTIP(getListModelNamed(EnumBaseModelNamedAndBaseListModelNamedVM.deleteListModelToNamedTIP));
  }

  @protected
  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> deleteListModelToNamedTIPUsingStateListModelNamedAndTypeParameterForFBDS(
      BaseTypeParameter typeParameterForFBDS)
  {
    return deleteListModelToNamedTIPUsingTypeParameterForFBDS(
        getListModelNamed(EnumBaseModelNamedAndBaseListModelNamedVM.deleteListModelToNamedTIP),
        typeParameterForFBDS);
  }
  // end deleteListTIP 4

  // start deleteListNP 2
  @override
  @protected
  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> deleteListModelToNamedNP()
  {
    if(_isNotExistsDataSource) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    return super.deleteListModelToNamedNP();
  }

  @override
  @protected
  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> deleteListModelToNamedNPUsingTypeParameterForFBDS(
      BaseTypeParameter typeParameterForFBDS)
  {
    if(_isNotExistsDataSource) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    return super.deleteListModelToNamedNPUsingTypeParameterForFBDS(typeParameterForFBDS);
  }
  // end deleteListNP 2

  // start deleteListParameterNamed 4
  @override
  @protected
  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> deleteListModelToNamedParameterNamed(
      BaseTypeParameter typeParameter)
  {
    if(_isNotExistsDataSource) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    return super.deleteListModelToNamedParameterNamed(typeParameter);
  }

  @override
  @protected
  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> deleteListModelToNamedParameterNamedUsingTypeParameterForFBDS(
      BaseTypeParameter typeParameter,
      BaseTypeParameter typeParameterForFBDS)
  {
    if(_isNotExistsDataSource) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    return super.deleteListModelToNamedParameterNamedUsingTypeParameterForFBDS(
        typeParameter,
        typeParameterForFBDS);
  }

  @protected
  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> deleteListModelToNamedParameterNamedUsingStateTypeParameter()
  {
    return deleteListModelToNamedParameterNamed(getTypeParameter(EnumBaseTypeParameterVM.deleteListModelToNamedParameterNamed));
  }

  @protected
  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> deleteListModelToNamedParameterNamedUsingStateTypeParameterAndTypeParameterForFBDS(
      BaseTypeParameter typeParameterForFBDS)
  {
    return deleteListModelToNamedParameterNamedUsingTypeParameterForFBDS(
        getTypeParameter(EnumBaseTypeParameterVM.deleteListModelToNamedParameterNamed),
        typeParameterForFBDS);
  }
  // end deleteListParameterNamed 4
  /// End DataSource **/

  /// Start For GetListModelParameterNamed **/
  // start runIteratorForGetListParameterNamed 2
  @protected
  @nonVirtual
  Response<List<T>, BaseException> runIteratorForGetListModelNamedParameterNamed(
      BaseTypeParameter<EnumIterator> enumTypeParameterForBaseIterator)
  {
    return _baseRunIteratorForGetListModelNamed(
        enumTypeParameterForBaseIterator,
        _mapEnumBaseModelNamedAndBaseListModelNamedVMAndIStream[EnumBaseModelNamedAndBaseListModelNamedVM.getListModelFromNamedParameterNamed].getListModelNamed);
  }

  @protected
  @nonVirtual
  Response<List<T>, BaseException> runIteratorForGetListModelNamedParameterNamedUsingStateEnumTypeParameterForBaseIterator() {
    return _baseRunIteratorForGetListModelNamed(
        getEnumTypeParameterForBaseIterator,
        _mapEnumBaseModelNamedAndBaseListModelNamedVMAndIStream[EnumBaseModelNamedAndBaseListModelNamedVM.getListModelFromNamedParameterNamed].getListModelNamed);
  }
  // end runIteratorForGetListParameterNamed 2

  // start insertToGetListParameterNamed 2
  @protected
  @nonVirtual
  Response<bool, BaseException> insertModelNamedToGetListModelNamedParameterNamed(
      T modelNamed)
  {
    return _baseInsertModelNamedToGetListModelNamed(
        modelNamed,
        _mapEnumBaseModelNamedAndBaseListModelNamedVMAndIStream[EnumBaseModelNamedAndBaseListModelNamedVM.getListModelFromNamedParameterNamed].getListModelNamed);
  }

  @protected
  @nonVirtual
  Response<bool, BaseException> insertModelNamedToGetListModelNamedParameterNamedUsingStateModelNamed() {
    return _baseInsertModelNamedToGetListModelNamed(
        getModelNamed(EnumBaseModelNamedAndBaseListModelNamedVM.insertModelToNamedTIP),
        _mapEnumBaseModelNamedAndBaseListModelNamedVMAndIStream[EnumBaseModelNamedAndBaseListModelNamedVM.getListModelFromNamedParameterNamed].getListModelNamed);
  }
  // end insertToGetListParameterNamed 2

  // start insertListToGetListParameterNamed 2
  @protected
  @nonVirtual
  Response<bool, BaseException> insertListModelNamedToGetListModelNamedParameterNamed(
      List<T> listModelNamed)
  {
    return _baseInsertListModelNamedToGetListModelNamed(
        listModelNamed,
        _mapEnumBaseModelNamedAndBaseListModelNamedVMAndIStream[EnumBaseModelNamedAndBaseListModelNamedVM.getListModelFromNamedParameterNamed].getListModelNamed);
  }

  @protected
  @nonVirtual
  Response<bool, BaseException> insertListModelNamedToGetListModelNamedParameterNamedUsingStateListModelNamed() {
    return _baseInsertListModelNamedToGetListModelNamed(
        getListModelNamed(EnumBaseModelNamedAndBaseListModelNamedVM.insertListModelToNamedTIP),
        _mapEnumBaseModelNamedAndBaseListModelNamedVMAndIStream[EnumBaseModelNamedAndBaseListModelNamedVM.getListModelFromNamedParameterNamed].getListModelNamed);
  }
  // end insertListToGetListParameterNamed 2

  // start updateToGetListParameterNamed 2
  @protected
  @nonVirtual
  Response<bool, BaseException> updateModelNamedToGetListModelNamedParameterNamed(
      T modelNamed)
  {
    return _baseUpdateModelNamedToGetListModelNamed(
        modelNamed,
        _mapEnumBaseModelNamedAndBaseListModelNamedVMAndIStream[EnumBaseModelNamedAndBaseListModelNamedVM.getListModelFromNamedParameterNamed].getListModelNamed);
  }

  @protected
  @nonVirtual
  Response<bool, BaseException> updateModelNamedToGetListModelNamedParameterNamedUsingStateModelNamed() {
    return _baseUpdateModelNamedToGetListModelNamed(
        getModelNamed(EnumBaseModelNamedAndBaseListModelNamedVM.updateModelToNamedTIP),
        _mapEnumBaseModelNamedAndBaseListModelNamedVMAndIStream[EnumBaseModelNamedAndBaseListModelNamedVM.getListModelFromNamedParameterNamed].getListModelNamed);
  }
  // start updateToGetListParameterNamed 2

  // start updateListToGetListParameterNamed 2
  @protected
  @nonVirtual
  Response<bool, BaseException> updateListModelNamedToGetListModelNamedParameterNamed(
      List<T> listModelNamed)
  {
    return _baseUpdateListModelNamedToGetListModelNamed(
        listModelNamed,
        _mapEnumBaseModelNamedAndBaseListModelNamedVMAndIStream[EnumBaseModelNamedAndBaseListModelNamedVM.getListModelFromNamedParameterNamed].getListModelNamed);
  }

  @protected
  @nonVirtual
  Response<bool, BaseException> updateListModelNamedToGetListModelNamedParameterNamedUsingStateListModelNamed() {
    return _baseUpdateListModelNamedToGetListModelNamed(
        getListModelNamed(EnumBaseModelNamedAndBaseListModelNamedVM.updateListModelToNamedTIP),
        _mapEnumBaseModelNamedAndBaseListModelNamedVMAndIStream[EnumBaseModelNamedAndBaseListModelNamedVM.getListModelFromNamedParameterNamed].getListModelNamed);
  }
  // end updateListToGetListParameterNamed 2

  // start deleteToGetListParameterNamed 2
  @protected
  @nonVirtual
  Response<bool, BaseException> deleteModelNamedToGetListModelNamedParameterNamed(
      T modelNamed)
  {
    return _baseDeleteModelNamedToGetListModelNamed(
        modelNamed,
        _mapEnumBaseModelNamedAndBaseListModelNamedVMAndIStream[EnumBaseModelNamedAndBaseListModelNamedVM.getListModelFromNamedParameterNamed].getListModelNamed);
  }

  @protected
  @nonVirtual
  Response<bool, BaseException> deleteModelNamedToGetListModelNamedParameterNamedUsingStateModelNamed() {
    return _baseDeleteModelNamedToGetListModelNamed(
        getModelNamed(EnumBaseModelNamedAndBaseListModelNamedVM.deleteModelToNamedTIP),
        _mapEnumBaseModelNamedAndBaseListModelNamedVMAndIStream[EnumBaseModelNamedAndBaseListModelNamedVM.getListModelFromNamedParameterNamed].getListModelNamed);
  }
  // end deleteToGetListParameterNamed 2

  // start deleteListToGetListParameterNamed 2
  @protected
  @nonVirtual
  Response<bool, BaseException> deleteListModelNamedToGetListModelNamedParameterNamed(
      List<T> listModelNamed)
  {
    return _baseDeleteListModelNamedToGetListModelNamed(
        listModelNamed,
        _mapEnumBaseModelNamedAndBaseListModelNamedVMAndIStream[EnumBaseModelNamedAndBaseListModelNamedVM.getListModelFromNamedParameterNamed].getListModelNamed);
  }

  @protected
  @nonVirtual
  Response<bool, BaseException> deleteListModelNamedToGetListModelNamedParameterNamedUsingStateListModelNamed() {
    return _baseDeleteListModelNamedToGetListModelNamed(
        getListModelNamed(EnumBaseModelNamedAndBaseListModelNamedVM.deleteListModelToNamedTIP),
        _mapEnumBaseModelNamedAndBaseListModelNamedVMAndIStream[EnumBaseModelNamedAndBaseListModelNamedVM.getListModelFromNamedParameterNamed].getListModelNamed);
  }
  // end deleteListToGetListParameterNamed 2
  /// End For GetListModelParameterNamed **/

  /// Start For GetListModelNP **/
  ///
  // start runIteratorForGetListNP 2
  @protected
  @nonVirtual
  Response<List<T>, BaseException> runIteratorForGetListModelNamedNP(
      BaseTypeParameter<EnumIterator> enumTypeParameterForBaseIterator)
  {
    return _baseRunIteratorForGetListModelNamed(
        enumTypeParameterForBaseIterator,
        _mapEnumBaseModelNamedAndBaseListModelNamedVMAndIStream[EnumBaseModelNamedAndBaseListModelNamedVM.getListModelFromNamedNP].getListModelNamed);
  }

  @protected
  @nonVirtual
  Response<List<T>, BaseException> runIteratorForGetListModelNamedNPUsingStateEnumTypeParameterForBaseIterator() {
    return _baseRunIteratorForGetListModelNamed(
        getEnumTypeParameterForBaseIterator,
        _mapEnumBaseModelNamedAndBaseListModelNamedVMAndIStream[EnumBaseModelNamedAndBaseListModelNamedVM.getListModelFromNamedNP].getListModelNamed);
  }
  // end runIteratorForGetListNP 2

  // start insertToGetListNP 2
  @protected
  @nonVirtual
  Response<bool, BaseException> insertModelNamedToGetListModelNamedNP(
      T modelNamed)
  {
    return _baseInsertModelNamedToGetListModelNamed(
        modelNamed,
        _mapEnumBaseModelNamedAndBaseListModelNamedVMAndIStream[EnumBaseModelNamedAndBaseListModelNamedVM.getListModelFromNamedNP].getListModelNamed);
  }

  @protected
  @nonVirtual
  Response<bool, BaseException> insertModelNamedToGetListModelNamedNPUsingStateModelNamed() {
    return _baseInsertModelNamedToGetListModelNamed(
        getModelNamed(EnumBaseModelNamedAndBaseListModelNamedVM.insertModelToNamedTIP),
        _mapEnumBaseModelNamedAndBaseListModelNamedVMAndIStream[EnumBaseModelNamedAndBaseListModelNamedVM.getListModelFromNamedNP].getListModelNamed);
  }
  // end insertToGetListNP 2

  // start insertListToGetListNP 2
  @protected
  @nonVirtual
  Response<bool, BaseException> insertListModelNamedToGetListModelNamedNP(
      List<T> listModelNamed)
  {
    return _baseInsertListModelNamedToGetListModelNamed(
        listModelNamed,
        _mapEnumBaseModelNamedAndBaseListModelNamedVMAndIStream[EnumBaseModelNamedAndBaseListModelNamedVM.getListModelFromNamedNP].getListModelNamed);
  }

  @protected
  @nonVirtual
  Response<bool, BaseException> insertListModelNamedToGetListModelNamedNPUsingStateListModelNamed() {
    return _baseInsertListModelNamedToGetListModelNamed(
        getListModelNamed(EnumBaseModelNamedAndBaseListModelNamedVM.insertListModelToNamedTIP),
        _mapEnumBaseModelNamedAndBaseListModelNamedVMAndIStream[EnumBaseModelNamedAndBaseListModelNamedVM.getListModelFromNamedNP].getListModelNamed);
  }
  // end insertListToGetListNP 2

  // start updateToGetListNP 2
  @protected
  @nonVirtual
  Response<bool, BaseException> updateModelNamedToGetListModelNamedNP(
      T modelNamed)
  {
    return _baseUpdateModelNamedToGetListModelNamed(
        modelNamed,
        _mapEnumBaseModelNamedAndBaseListModelNamedVMAndIStream[EnumBaseModelNamedAndBaseListModelNamedVM.getListModelFromNamedNP].getListModelNamed);
  }

  @protected
  @nonVirtual
  Response<bool, BaseException> updateModelNamedToGetListModelNamedNPUsingStateModelNamed() {
    return _baseUpdateModelNamedToGetListModelNamed(
        getModelNamed(EnumBaseModelNamedAndBaseListModelNamedVM.updateModelToNamedTIP),
        _mapEnumBaseModelNamedAndBaseListModelNamedVMAndIStream[EnumBaseModelNamedAndBaseListModelNamedVM.getListModelFromNamedNP].getListModelNamed);
  }
  // start updateToGetListNP 2

  // start updateListToGetListNP 2
  @protected
  @nonVirtual
  Response<bool, BaseException> updateListModelNamedToGetListModelNamedNP(
      List<T> listModelNamed)
  {
    return _baseUpdateListModelNamedToGetListModelNamed(
        listModelNamed,
        _mapEnumBaseModelNamedAndBaseListModelNamedVMAndIStream[EnumBaseModelNamedAndBaseListModelNamedVM.getListModelFromNamedNP].getListModelNamed);
  }

  @protected
  @nonVirtual
  Response<bool, BaseException> updateListModelNamedToGetListModelNamedNPUsingStateListModelNamed() {
    return _baseUpdateListModelNamedToGetListModelNamed(
        getListModelNamed(EnumBaseModelNamedAndBaseListModelNamedVM.updateListModelToNamedTIP),
        _mapEnumBaseModelNamedAndBaseListModelNamedVMAndIStream[EnumBaseModelNamedAndBaseListModelNamedVM.getListModelFromNamedNP].getListModelNamed);
  }
  // end updateListToGetListNP 2

  // start deleteToGetListNP 2
  @protected
  @nonVirtual
  Response<bool, BaseException> deleteModelNamedToGetListModelNamedNP(
      T modelNamed)
  {
    return _baseDeleteModelNamedToGetListModelNamed(
        modelNamed,
        _mapEnumBaseModelNamedAndBaseListModelNamedVMAndIStream[EnumBaseModelNamedAndBaseListModelNamedVM.getListModelFromNamedNP].getListModelNamed);
  }

  @protected
  @nonVirtual
  Response<bool, BaseException> deleteModelNamedToGetListModelNamedNPUsingStateModelNamed() {
    return _baseDeleteModelNamedToGetListModelNamed(
        getModelNamed(EnumBaseModelNamedAndBaseListModelNamedVM.deleteModelToNamedTIP),
        _mapEnumBaseModelNamedAndBaseListModelNamedVMAndIStream[EnumBaseModelNamedAndBaseListModelNamedVM.getListModelFromNamedNP].getListModelNamed);
  }
  // end deleteToGetListNP 2

  // start deleteListToGetListNP 2
  @protected
  @nonVirtual
  Response<bool, BaseException> deleteListModelNamedToGetListModelNamedNP(
      List<T> listModelNamed)
  {
    return _baseDeleteListModelNamedToGetListModelNamed(
        listModelNamed,
        _mapEnumBaseModelNamedAndBaseListModelNamedVMAndIStream[EnumBaseModelNamedAndBaseListModelNamedVM.getListModelFromNamedNP].getListModelNamed);
  }

  @protected
  @nonVirtual
  Response<bool, BaseException> deleteListModelNamedToGetListModelNamedNPUsingStateListModelNamed() {
    return _baseDeleteListModelNamedToGetListModelNamed(
        getListModelNamed(EnumBaseModelNamedAndBaseListModelNamedVM.deleteListModelToNamedTIP),
        _mapEnumBaseModelNamedAndBaseListModelNamedVMAndIStream[EnumBaseModelNamedAndBaseListModelNamedVM.getListModelFromNamedNP].getListModelNamed);
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

  /// Start IStream **/
  IStream<T> getIStream(
      EnumBaseModelNamedAndBaseListModelNamedVM operation)
  {
    if(!_mapEnumBaseModelNamedAndBaseListModelNamedVMAndIStream.containsKey(operation)) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"$operation not found");
    }
    return _mapEnumBaseModelNamedAndBaseListModelNamedVMAndIStream[operation];
  }
  /// End IStream **/

  /// Start ModelNamed **/
  @protected
  @nonVirtual
  T getModelNamed(
      EnumBaseModelNamedAndBaseListModelNamedVM operation)
  {
    if(!_mapEnumBaseModelNamedAndBaseListModelNamedVMAndIStream.containsKey(operation)) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"$operation not found");
    }
    return _mapEnumBaseModelNamedAndBaseListModelNamedVMAndIStream[operation].getModelNamed;
  }

  @protected
  @nonVirtual
  void setModelNamed(
      EnumBaseModelNamedAndBaseListModelNamedVM operation,
      T modelNamed)
  {
    if(!_mapEnumBaseModelNamedAndBaseListModelNamedVMAndIStream.containsKey(operation)) {
      throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"$operation not found");
    }
    _mapEnumBaseModelNamedAndBaseListModelNamedVMAndIStream[operation].setModelNamed = modelNamed;
  }

  @protected
  @nonVirtual
  void setModelNamedUsingClone(
      EnumBaseModelNamedAndBaseListModelNamedVM operation,
      T modelNamed)
  {
    if(!_mapEnumBaseModelNamedAndBaseListModelNamedVMAndIStream.containsKey(operation)) {
      throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"$operation not found");
    }
    _mapEnumBaseModelNamedAndBaseListModelNamedVMAndIStream[operation].setModelNamed = cloneModelNamed(modelNamed);
  }

  @protected
  @nonVirtual
  Future<T> getFutureModelNamed(
      EnumBaseModelNamedAndBaseListModelNamedVM operation)
  async {
    if(!_mapEnumBaseModelNamedAndBaseListModelNamedVMAndIStream.containsKey(operation)) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"$operation not found");
    }
    return _mapEnumBaseModelNamedAndBaseListModelNamedVMAndIStream[operation].getModelNamed;
  }

  @protected
  @nonVirtual
  Stream<T> getStreamModelNamed(
      EnumBaseModelNamedAndBaseListModelNamedVM operation)
  {
    if(!_mapEnumBaseModelNamedAndBaseListModelNamedVMAndIStream.containsKey(operation)) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"$operation not found");
    }
    return _mapEnumBaseModelNamedAndBaseListModelNamedVMAndIStream[operation].getStreamModelNamed;
  }

  @protected
  @nonVirtual
  void notifyStreamModelNamed(
      EnumBaseModelNamedAndBaseListModelNamedVM operation)
  {
    if(!_mapEnumBaseModelNamedAndBaseListModelNamedVMAndIStream.containsKey(operation)) {
      throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"$operation not found");
    }
    _mapEnumBaseModelNamedAndBaseListModelNamedVMAndIStream[operation]
        .notifyStreamModelNamed(thisClass);
  }

  @protected
  @nonVirtual
  void notifyStreamModelNamedUsingDelayInSeconds(
      EnumBaseModelNamedAndBaseListModelNamedVM operation)
  {
    if(!_mapEnumBaseModelNamedAndBaseListModelNamedVMAndIStream.containsKey(operation)) {
      throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"$operation not found");
    }
    _mapEnumBaseModelNamedAndBaseListModelNamedVMAndIStream[operation]
        .notifyStreamModelNamedUsingDelayInSeconds(thisClass);
  }
  /// End ModelNamed **/
  
  /// Start ListModelNamed **/
  @protected
  @nonVirtual
  List<T> getListModelNamed(
      EnumBaseModelNamedAndBaseListModelNamedVM operation)
  {
    if(!_mapEnumBaseModelNamedAndBaseListModelNamedVMAndIStream.containsKey(operation)) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"$operation not found");
    }
    return _mapEnumBaseModelNamedAndBaseListModelNamedVMAndIStream[operation].getListModelNamed.listModelNamed;
  }

  @protected
  @nonVirtual
  void setListModelNamed(
      EnumBaseModelNamedAndBaseListModelNamedVM operation,
      List<T> listModelNamed)
  {
    if(!_mapEnumBaseModelNamedAndBaseListModelNamedVMAndIStream.containsKey(operation)) {
      throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"$operation not found");
    }
    _mapEnumBaseModelNamedAndBaseListModelNamedVMAndIStream[operation]
        .getListModelNamed
        .setParameterListModelNamed = listModelNamed;
  }

  @protected
  @nonVirtual
  void setListModelNamedUsingClone(
      EnumBaseModelNamedAndBaseListModelNamedVM operation,
      List<T> listModelNamed)
  {
    if(!_mapEnumBaseModelNamedAndBaseListModelNamedVMAndIStream.containsKey(operation)) {
      throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"$operation not found");
    }
    _mapEnumBaseModelNamedAndBaseListModelNamedVMAndIStream[operation]
        .getListModelNamed
        .setParameterListModelNamed = cloneListModelNamed(listModelNamed);
  }

  @protected
  @nonVirtual
  Future<List<T>> getFutureListModelNamed(
      EnumBaseModelNamedAndBaseListModelNamedVM operation)
  async {
    if(!_mapEnumBaseModelNamedAndBaseListModelNamedVMAndIStream.containsKey(operation)) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"$operation not found");
    }
    return _mapEnumBaseModelNamedAndBaseListModelNamedVMAndIStream[operation].getListModelNamed.listModelNamed;
  }

  @protected
  @nonVirtual
  Stream<List<T>> getStreamListModelNamed(
      EnumBaseModelNamedAndBaseListModelNamedVM operation)
  {
    if(!_mapEnumBaseModelNamedAndBaseListModelNamedVMAndIStream.containsKey(operation)) {
      return throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"$operation not found");
    }
    return _mapEnumBaseModelNamedAndBaseListModelNamedVMAndIStream[operation].getStreamListModelNamed;
  }

  @protected
  @nonVirtual
  void notifyStreamListModelNamed(
      EnumBaseModelNamedAndBaseListModelNamedVM operation)
  {
    if(!_mapEnumBaseModelNamedAndBaseListModelNamedVMAndIStream.containsKey(operation)) {
      throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"$operation not found");
    }
    _mapEnumBaseModelNamedAndBaseListModelNamedVMAndIStream[operation]
        .notifyStreamListModelNamed(thisClass);
  }

  @protected
  @nonVirtual
  void notifyStreamListModelNamedUsingDelayInSeconds(
      EnumBaseModelNamedAndBaseListModelNamedVM operation)
  {
    if(!_mapEnumBaseModelNamedAndBaseListModelNamedVMAndIStream.containsKey(operation)) {
      throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"$operation not found");
    }
    _mapEnumBaseModelNamedAndBaseListModelNamedVMAndIStream[operation]
        .notifyStreamListModelNamedUsingDelayInSeconds(thisClass);
  }
  /// End ListModelNamed **/

  Response<List<T>,BaseException> _baseRunIteratorForGetListModelNamed(
      BaseTypeParameter<EnumIterator> typeParameterForBaseIterator,
      Y listModelNamed)
  {
    return listModelNamed
        .runIteratorForGetListModelNamed(thisClass, typeParameterForBaseIterator, _mapEnumAndBaseIterator);
  }

  Response<bool, BaseException> _baseInsertModelNamedToGetListModelNamed(
      T modelNamed,
      Y listModelNamed)
  {
    return listModelNamed
        .insertModelNamedToGetListModelNamed(thisClass, cloneModelNamed(modelNamed));
  }

  Response<bool, BaseException> _baseInsertListModelNamedToGetListModelNamed(
      List<T> listModelNamedForInsert,
      Y listModelNamed)
  {
    return listModelNamed
        .insertListModelNamedToGetListModelNamed(thisClass, cloneListModelNamed(listModelNamedForInsert));
  }

  Response<bool, BaseException> _baseUpdateModelNamedToGetListModelNamed(
      T modelNamed,
      Y listModelNamed)
  {
    return listModelNamed
        .updateModelNamedToGetListModelNamed(thisClass, cloneModelNamed(modelNamed));
  }

  Response<bool, BaseException> _baseUpdateListModelNamedToGetListModelNamed(
      List<T> listModelNamedForUpdate,
      Y listModelNamed)
  {
    return listModelNamed
        .updateListModelNamedToGetListModelNamed(thisClass, cloneListModelNamed(listModelNamedForUpdate));
  }

  Response<bool, BaseException> _baseDeleteModelNamedToGetListModelNamed(
      T modelNamed,
      Y listModelNamed)
  {
    return listModelNamed
        .deleteModelNamedToGetListModelNamed(thisClass, cloneModelNamed(modelNamed));
  }

  Response<bool, BaseException> _baseDeleteListModelNamedToGetListModelNamed(
      List<T> listModelNamedForDelete,
      Y listModelNamed)
  {
    return listModelNamed
        .deleteListModelNamedToGetListModelNamed(thisClass, cloneListModelNamed(listModelNamedForDelete));
  }

  void _initListEnumBaseModelNamedAndBaseListModelNamedAndListEnumBaseTypeParameterVM() {
    if(_isNotExistsDataSource) {
      throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    if(dataSource == null) {
      throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"DataSource equals null");
    }
    if(dataSource is InsertModelToNamedTIPDataSource<T>) {
      _listEnumBaseModelNamedAndBaseListModelNamedVM.add(EnumBaseModelNamedAndBaseListModelNamedVM.insertModelToNamedTIP);
    }
    if(dataSource is UpdateModelToNamedTIPDataSource<T>) {
      _listEnumBaseModelNamedAndBaseListModelNamedVM.add(EnumBaseModelNamedAndBaseListModelNamedVM.updateModelToNamedTIP);
    }
    if(dataSource is DeleteModelToNamedTIPDataSource<T>) {
      _listEnumBaseModelNamedAndBaseListModelNamedVM.add(EnumBaseModelNamedAndBaseListModelNamedVM.deleteModelToNamedTIP);
    }
    if(dataSource is InsertListModelToNamedTIPDataSource<Y>) {
      _listEnumBaseModelNamedAndBaseListModelNamedVM.add(EnumBaseModelNamedAndBaseListModelNamedVM.insertListModelToNamedTIP);
    }
    if(dataSource is UpdateListModelToNamedTIPDataSource<Y>) {
      _listEnumBaseModelNamedAndBaseListModelNamedVM.add(EnumBaseModelNamedAndBaseListModelNamedVM.updateListModelToNamedTIP);
    }
    if(dataSource is DeleteListModelToNamedTIPDataSource<Y>) {
      _listEnumBaseModelNamedAndBaseListModelNamedVM.add(EnumBaseModelNamedAndBaseListModelNamedVM.deleteListModelToNamedTIP);
    }
    if(dataSource is GetModelFromNamedNPDataSource<T>) {
      _listEnumBaseModelNamedAndBaseListModelNamedVM.add(EnumBaseModelNamedAndBaseListModelNamedVM.getModelFromNamedNP);
    }
    if(dataSource is GetListModelFromNamedNPDataSource<Y>) {
      _listEnumBaseModelNamedAndBaseListModelNamedVM.add(EnumBaseModelNamedAndBaseListModelNamedVM.getListModelFromNamedNP);
    }
    if(dataSource is GetModelFromNamedParameterNamedDataSource<T,BaseTypeParameter>) {
      _listEnumBaseModelNamedAndBaseListModelNamedVM.add(EnumBaseModelNamedAndBaseListModelNamedVM.getModelFromNamedParameterNamed);
      _listEnumBaseTypeParameterVM.add(EnumBaseTypeParameterVM.getModelFromNamedParameterNamed);
    }
    if(dataSource is GetListModelFromNamedParameterNamedDataSource<Y,BaseTypeParameter>) {
      _listEnumBaseModelNamedAndBaseListModelNamedVM.add(EnumBaseModelNamedAndBaseListModelNamedVM.getListModelFromNamedParameterNamed);
      _listEnumBaseTypeParameterVM.add(EnumBaseTypeParameterVM.getListModelFromNamedParameterNamed);
    }
    if(dataSource is InsertModelToNamedParameterNamedDataSource<BaseTypeParameter>) {
      _listEnumBaseTypeParameterVM.add(EnumBaseTypeParameterVM.insertModelToNamedParameterNamed);
    }
    if(dataSource is UpdateModelToNamedParameterNamedDataSource<BaseTypeParameter>) {
      _listEnumBaseTypeParameterVM.add(EnumBaseTypeParameterVM.updateModelToNamedParameterNamed);
    }
    if(dataSource is DeleteModelToNamedParameterNamedDataSource<BaseTypeParameter>) {
      _listEnumBaseTypeParameterVM.add(EnumBaseTypeParameterVM.deleteModelToNamedParameterNamed);
    }
    if(dataSource is InsertListModelToNamedParameterNamedDataSource<BaseTypeParameter>) {
      _listEnumBaseTypeParameterVM.add(EnumBaseTypeParameterVM.insertListModelToNamedParameterNamed);
    }
    if(dataSource is UpdateListModelToNamedParameterNamedDataSource<BaseTypeParameter>) {
      _listEnumBaseTypeParameterVM.add(EnumBaseTypeParameterVM.updateListModelToNamedParameterNamed);
    }
    if(dataSource is DeleteListModelToNamedParameterNamedDataSource<BaseTypeParameter>) {
      _listEnumBaseTypeParameterVM.add(EnumBaseTypeParameterVM.deleteListModelToNamedParameterNamed);
    }
  }

  void _initNoDataSourceListEnumBaseModelNamedAndBaseListModelNamedVM(
      List<EnumBaseModelNamedAndBaseListModelNamedVM> listEnumBaseModelNamedDatabaseAndBaseListModelNamedDatabaseVM)
  {
    if(_isExistsDataSource) {
      throw LocalException(thisClass,EnumGuiltyForLocalException.developer,"Constructor call noDataSource: $_isNotExistsDataSource");
    }
    if(listEnumBaseModelNamedDatabaseAndBaseListModelNamedDatabaseVM.isEmpty) {
      return;
    }
    _listEnumBaseModelNamedAndBaseListModelNamedVM.addAll(listEnumBaseModelNamedDatabaseAndBaseListModelNamedDatabaseVM);
  }

  void _initMapEnumBaseModelNamedAndBaseListModelNamedVMAndIStream() {
    if(_listEnumBaseModelNamedAndBaseListModelNamedVM.isEmpty) {
      return;
    }
    for(EnumBaseModelNamedAndBaseListModelNamedVM enumBaseModelNamedDatabaseAndBaseListModelNamedDatabaseVM in _listEnumBaseModelNamedAndBaseListModelNamedVM) {
      _mapEnumBaseModelNamedAndBaseListModelNamedVMAndIStream[enumBaseModelNamedDatabaseAndBaseListModelNamedDatabaseVM] = initAndCloneIStream();
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