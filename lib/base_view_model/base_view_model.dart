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
import 'package:library_architecture_mvvm_modify/abstract_classes_function_before_data_source/delete_list_model_to_named_database_fbds.dart';
import 'package:library_architecture_mvvm_modify/abstract_classes_function_before_data_source/delete_model_to_named_database_fbds.dart';
import 'package:library_architecture_mvvm_modify/abstract_classes_function_before_data_source/insert_list_model_to_named_database_fbds.dart';
import 'package:library_architecture_mvvm_modify/abstract_classes_function_before_data_source/insert_model_to_named_database_fbds.dart';
import 'package:library_architecture_mvvm_modify/abstract_classes_function_before_data_source/update_list_model_to_named_database_fbds.dart';
import 'package:library_architecture_mvvm_modify/abstract_classes_function_before_data_source/update_model_to_named_database_fbds.dart';
import 'package:library_architecture_mvvm_modify/base_data_source/interface_data_source/delete_list_model_to_named_database_np_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_data_source/interface_data_source/delete_list_model_to_named_database_parameter_named_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_data_source/interface_data_source/delete_list_model_to_named_database_tip_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_data_source/interface_data_source/delete_model_to_named_database_np_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_data_source/interface_data_source/delete_model_to_named_database_parameter_named_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_data_source/interface_data_source/delete_model_to_named_database_tip_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_data_source/interface_data_source/get_list_model_from_named_database_np_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_data_source/interface_data_source/get_list_model_from_named_database_parameter_named_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_data_source/interface_data_source/get_model_from_named_database_np_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_data_source/interface_data_source/get_model_from_named_database_parameter_named_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_data_source/interface_data_source/insert_list_model_to_named_database_np_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_data_source/interface_data_source/insert_list_model_to_named_database_tip_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_data_source/interface_data_source/insert_model_to_named_database_np_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_data_source/interface_data_source/insert_model_to_named_database_tip_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_data_source/interface_data_source/update_list_model_to_named_database_np_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_data_source/interface_data_source/update_list_model_to_named_database_parameter_named_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_data_source/interface_data_source/update_list_model_to_named_database_tip_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_data_source/interface_data_source/update_model_to_named_database_np_data_source.dart';
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
import 'package:library_architecture_mvvm_modify/utility/constants.dart';
import 'package:library_architecture_mvvm_modify/response/response.dart';
import 'package:library_architecture_mvvm_modify/response/response_generic_bool_and_domain_exception.dart';

typedef InitObject<S> = S Function();

abstract class BaseViewModel<T extends BaseModel,Y extends BaseListModel<T>,Z extends BaseModelNamedDatabase<T>,X extends BaseListModelNamedDatabase<Y,Z>,EnumIterator extends Enum>
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
  Object _dataSource;
  bool _isExistsDataSource;
  
  /* CTMND (Converter To Model Named Database) */
  ConverterToBaseModelNamedDatabase<T,Z> _converterToBaseModelNamedDatabase;
  ConverterToBaseListModelNamedDatabase<Y,X> _converterToBaseListModelNamedDatabase;

  /* FBDS (Function Before Data Source) */
  InsertModelToNamedDatabaseFBDS<T> _insertModelToNamedDatabaseFBDS;
  InsertListModelToNamedDatabaseFBDS<T,Y> _insertListModelToNamedDatabaseFBDS;
  UpdateModelToNamedDatabaseFBDS<T> _updateModelToNamedDatabaseFBDS;
  UpdateListModelToNamedDatabaseFBDS<T,Y> _updateListModelToNamedDatabaseFBDS;
  DeleteModelToNamedDatabaseFBDS<T> _deleteModelToNamedDatabaseFBDS;
  DeleteListModelToNamedDatabaseFBDS<T,Y> _deleteListModelToNamedDatabaseFBDS;

  BaseViewModel.thereIsDataSourceUsingMethodSetDataSourceToBodyConstructor(
      this._converterToBaseModelNamedDatabase,
      this._converterToBaseListModelNamedDatabase,
      this._initObjectBaseModel,
      this._initObjectBaseListModel,
      [this._initObjectStreamControllerForBaseModel,
        this._initObjectStreamControllerForBaseListModel])
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

  /// Start Clone **/
  ///   Be sure to implement these methods as shown in the example below. The result of all date source methods depends on the implementation of that method.
  ///   Briefly, what this method does: Does not leave a reference to the object that will be sent to the data source and you can do whatever you want with
  ///   it without fear that it will change in the view model. Basically, this method appeared when FBDS (Function Before Data Source) appeared
  ///
  ///   Example Using:
  ///
  ///   User cloneModel(User model) {
  ///     return User(model.uniqueId,model.name);
  ///   }
  ///
  @protected
  T cloneModel(
      T model);

  List<T> _cloneListModel(
      List<T> listModel)
  {
    if(listModel.isEmpty) {
      return [];
    }
    List<T> listModelForCopy  = List.empty(growable: true);
    listModelForCopy.addAll(listModel);
    return listModelForCopy;
  }
  /// End Clone **/

  /// Start ThisClass **/
  ///   Example Using:
  ///
  ///   Object thisClass() {
  ///     return this;
  ///   }
  ///
  ///
  @protected
  Object thisClass();
  /// End ThisClass **/

  /// Start DataSource **/
  ///
  // start getListNP 2
  @protected
  @nonVirtual
  Future<Response<List<T>, BaseException>> getListModelFromNamedDatabaseNP()
  {
    if(_isNotExistsDataSource) {
      return throw LocalException(thisClass,constDeveloper,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    if(_dataSource == null) {
      return throw LocalException(thisClass,constDeveloper,"DataSource equals null");
    }
    return _baseGetListModelFromNamedDatabaseNP(_dataSource as GetListModelFromNamedDatabaseNPDataSource<X>);
  }

  @protected
  @nonVirtual
  Future<Response<List<T>, BaseException>> getListModelFromNamedDatabaseNPAndSetListModel()
  async {
    if(_isNotExistsDataSource) {
      return throw LocalException(thisClass,constDeveloper,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    if(_dataSource == null) {
      return throw LocalException(thisClass,constDeveloper,"DataSource equals null");
    }
    Response<List<T>, BaseException> result = await _baseGetListModelFromNamedDatabaseNP(_dataSource as GetListModelFromNamedDatabaseNPDataSource<X>);
    if(result.isExceptionResponse()) {
      return Response.exception(result.getException);
    }
    if(result.isCanceledOperationWithoutErrorAndSuccess()) {
      return Response.cancelOperationWithoutErrorAndSuccess(result.getCancelOperationWithoutErrorAndSuccess);
    }
    _getBaseListModel(EnumBaseListModelVM.getListModelFromNamedDatabaseNP)
        .setParameterListModel = result.getData;
    return Response.success(_getBaseListModel(EnumBaseListModelVM.getListModelFromNamedDatabaseNP).getListModel);
  }
  // end getListNP 2

  // start getListParameterNamed 4
  @protected
  @nonVirtual
  Future<Response<List<T>, BaseException>> getListModelFromNamedDatabaseParameterNamed(
      BaseTypeParameter baseTypeParameter)
  {
    if(_isNotExistsDataSource) {
      return throw LocalException(thisClass,constDeveloper,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    if(_dataSource == null) {
      return throw LocalException(thisClass,constDeveloper,"DataSource equals null");
    }
    return _baseGetListModelFromNamedDatabaseParameterNamed(
        _dataSource as  GetListModelFromNamedDatabaseParameterNamedDataSource<X,BaseTypeParameter>,
        baseTypeParameter);
  }

  @protected
  @nonVirtual
  Future<Response<List<T>, BaseException>> getListModelFromNamedDatabaseParameterNamedUsingStateBaseTypeParameter()
  {
    if(_isNotExistsDataSource) {
      return throw LocalException(thisClass,constDeveloper,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    if(_dataSource == null) {
      return throw LocalException(thisClass,constDeveloper,"DataSource equals null");
    }
    return _baseGetListModelFromNamedDatabaseParameterNamed(
        _dataSource as  GetListModelFromNamedDatabaseParameterNamedDataSource<X,BaseTypeParameter>,
        _getBaseTypeParameter(EnumBaseTypeParameterVM.getListModelFromNamedDatabaseParameterNamed));
  }

  @protected
  @nonVirtual
  Future<Response<List<T>, BaseException>> getListModelFromNamedDatabaseParameterNamedAndSetListModel(
      BaseTypeParameter baseTypeParameter)
  async {
    if(_isNotExistsDataSource) {
      return throw LocalException(thisClass,constDeveloper,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    if(_dataSource == null) {
      return throw LocalException(thisClass,constDeveloper,"DataSource equals null");
    }
    Response<List<T>, BaseException> result = await _baseGetListModelFromNamedDatabaseParameterNamed(
        _dataSource as  GetListModelFromNamedDatabaseParameterNamedDataSource<X,BaseTypeParameter>,
        baseTypeParameter);
    if(result.isExceptionResponse()) {
      return Response.exception(result.getException);
    }
    if(result.isCanceledOperationWithoutErrorAndSuccess()) {
      return Response.cancelOperationWithoutErrorAndSuccess(result.getCancelOperationWithoutErrorAndSuccess);
    }
    _getBaseListModel(EnumBaseListModelVM.getListModelFromNamedDatabaseParameterNamed)
        .setParameterListModel = result.getData;
    return Response.success(_getBaseListModel(EnumBaseListModelVM.getListModelFromNamedDatabaseParameterNamed).getListModel);
  }

  @protected
  @nonVirtual
  Future<Response<List<T>, BaseException>> getListModelFromNamedDatabaseParameterNamedAndSetListModelUsingStateBaseTypeParameter()
  async {
    if(_isNotExistsDataSource) {
      return throw LocalException(thisClass,constDeveloper,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    if(_dataSource == null) {
      return throw LocalException(thisClass,constDeveloper,"DataSource equals null");
    }
    Response<List<T>, BaseException> result = await _baseGetListModelFromNamedDatabaseParameterNamed(
        _dataSource as  GetListModelFromNamedDatabaseParameterNamedDataSource<X,BaseTypeParameter>,
        _getBaseTypeParameter(EnumBaseTypeParameterVM.getListModelFromNamedDatabaseParameterNamed));
    if(result.isExceptionResponse()) {
      return Response.exception(result.getException);
    }
    if(result.isCanceledOperationWithoutErrorAndSuccess()) {
      return Response.cancelOperationWithoutErrorAndSuccess(result.getCancelOperationWithoutErrorAndSuccess);
    }
    _getBaseListModel(EnumBaseListModelVM.getListModelFromNamedDatabaseParameterNamed)
        .setParameterListModel = result.getData;
    return Response.success(_getBaseListModel(EnumBaseListModelVM.getListModelFromNamedDatabaseParameterNamed).getListModel);
  }
  // end getListParameterNamed 4

  // start getNP 2
  @protected
  @nonVirtual
  Future<Response<T, BaseException>> getModelFromNamedDatabaseNP()
  {
    if(_isNotExistsDataSource) {
      return throw LocalException(thisClass,constDeveloper,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    if(_dataSource == null) {
      return throw LocalException(thisClass,constDeveloper,"DataSource equals null");
    }
    return _baseGetModelFromNamedDatabaseNP(_dataSource as GetModelFromNamedDatabaseNPDataSource<Z>);
  }

  @protected
  @nonVirtual
  Future<Response<T, BaseException>> getModelFromNamedDatabaseNPAndSetModel()
  async {
    if(_isNotExistsDataSource) {
      return throw LocalException(thisClass,constDeveloper,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    if(_dataSource == null) {
      return throw LocalException(thisClass,constDeveloper,"DataSource equals null");
    }
    Response<T, BaseException> result = await _baseGetModelFromNamedDatabaseNP(
        _dataSource as GetModelFromNamedDatabaseNPDataSource<Z>);
    if(result.isExceptionResponse()) {
      return Response.exception(result.getException);
    }
    if(result.isCanceledOperationWithoutErrorAndSuccess()) {
      return Response.cancelOperationWithoutErrorAndSuccess(result.getCancelOperationWithoutErrorAndSuccess);
    }
    setModel(EnumBaseModelVM.getModelFromNamedDatabaseNP,result.getData);
    return Response.success(getModel(EnumBaseModelVM.getModelFromNamedDatabaseNP));
  }
  // end getNP 2

  // start getParameterNamed 4
  @protected
  @nonVirtual
  Future<Response<T, BaseException>> getModelFromNamedDatabaseParameterNamed(
      BaseTypeParameter baseTypeParameter)
  {
    if(_isNotExistsDataSource) {
      return throw LocalException(thisClass,constDeveloper,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    if(_dataSource == null) {
      return throw LocalException(thisClass,constDeveloper,"DataSource equals null");
    }
    return _baseGetModelFromNamedDatabaseParameterNamed(
        _dataSource as GetModelFromNamedDatabaseParameterNamedDataSource<Z,BaseTypeParameter>,
        baseTypeParameter);
  }

  @protected
  @nonVirtual
  Future<Response<T, BaseException>> getModelFromNamedDatabaseParameterNamedUsingStateBaseTypeParameter()
  {
    if(_isNotExistsDataSource) {
      return throw LocalException(thisClass,constDeveloper,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    if(_dataSource == null) {
      return throw LocalException(thisClass,constDeveloper,"DataSource equals null");
    }
    return _baseGetModelFromNamedDatabaseParameterNamed(
        _dataSource as GetModelFromNamedDatabaseParameterNamedDataSource<Z,BaseTypeParameter>,
        _getBaseTypeParameter(EnumBaseTypeParameterVM.getModelFromNamedDatabaseParameterNamed));
  }

  @protected
  @nonVirtual
  Future<Response<T, BaseException>> getModelFromNamedDatabaseParameterNamedAndSetModel(
      BaseTypeParameter baseTypeParameter)
  async {
    if(_isNotExistsDataSource) {
      return throw LocalException(thisClass,constDeveloper,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    if(_dataSource == null) {
      return throw LocalException(thisClass,constDeveloper,"DataSource equals null");
    }
    Response<T, BaseException> result = await _baseGetModelFromNamedDatabaseParameterNamed(
        _dataSource as GetModelFromNamedDatabaseParameterNamedDataSource<Z,BaseTypeParameter>,
        baseTypeParameter);
    if(result.isExceptionResponse()) {
      return Response.exception(result.getException);
    }
    if(result.isCanceledOperationWithoutErrorAndSuccess()) {
      return Response.cancelOperationWithoutErrorAndSuccess(result.getCancelOperationWithoutErrorAndSuccess);
    }
    setModel(EnumBaseModelVM.getModelFromNamedDatabaseParameterNamed,result.getData);
    return Response.success(getModel(EnumBaseModelVM.getModelFromNamedDatabaseParameterNamed));
  }

  @protected
  @nonVirtual
  Future<Response<T, BaseException>> getModelFromNamedDatabaseParameterNamedAndSetModelUsingStateBaseTypeParameter()
  async {
    if(_isNotExistsDataSource) {
      return throw LocalException(thisClass,constDeveloper,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    if(_dataSource == null) {
      return throw LocalException(thisClass,constDeveloper,"DataSource equals null");
    }
    Response<T, BaseException> result = await _baseGetModelFromNamedDatabaseParameterNamed(
        _dataSource as GetModelFromNamedDatabaseParameterNamedDataSource<Z,BaseTypeParameter>,
        _getBaseTypeParameter(EnumBaseTypeParameterVM.getModelFromNamedDatabaseParameterNamed));
    if(result.isExceptionResponse()) {
      return Response.exception(result.getException);
    }
    if(result.isCanceledOperationWithoutErrorAndSuccess()) {
      return Response.cancelOperationWithoutErrorAndSuccess(result.getCancelOperationWithoutErrorAndSuccess);
    }
    setModel(EnumBaseModelVM.getModelFromNamedDatabaseParameterNamed,result.getData);
    return Response.success(getModel(EnumBaseModelVM.getModelFromNamedDatabaseParameterNamed));
  }
  // end getParameterNamed 4

  // start insertTIP 4
  @protected
  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> insertModelToNamedDatabaseTIP(
      T model)
  {
    if(_isNotExistsDataSource) {
      return throw LocalException(thisClass,constDeveloper,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    if(_dataSource == null) {
      return throw LocalException(thisClass,constDeveloper,"DataSource equals null");
    }
    return _baseInsertModelToNamedDatabaseTIPUsingListModelForFBDS(
        _dataSource as InsertModelToNamedDatabaseTIPDataSource<Z>,
        model,
        List.empty(growable: true));
  }

  @protected
  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> insertModelToNamedDatabaseTIPUsingStateModel()
  {
    if(_isNotExistsDataSource) {
      return throw LocalException(thisClass,constDeveloper,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    if(_dataSource == null) {
      return throw LocalException(thisClass,constDeveloper,"DataSource equals null");
    }
    return _baseInsertModelToNamedDatabaseTIPUsingListModelForFBDS(
        _dataSource as InsertModelToNamedDatabaseTIPDataSource<Z>,
        getModel(EnumBaseModelVM.insertModelToNamedDatabaseTIP),
        List.empty(growable: true));
  }

  @protected
  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> insertModelToNamedDatabaseTIPUsingListModelForFBDS(
      T model,
      List<T> listModelForFBDS)
  {
    if(_isNotExistsDataSource) {
      return throw LocalException(thisClass,constDeveloper,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    if(_dataSource == null) {
      return throw LocalException(thisClass,constDeveloper,"DataSource equals null");
    }
    return _baseInsertModelToNamedDatabaseTIPUsingListModelForFBDS(
        _dataSource as InsertModelToNamedDatabaseTIPDataSource<Z>,
        model,
        listModelForFBDS);
  }

  @protected
  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> insertModelToNamedDatabaseTIPUsingStateModelAndListModelForFBDS(
      List<T> listModelForFBDS)
  {
    if(_isNotExistsDataSource) {
      return throw LocalException(thisClass,constDeveloper,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    if(_dataSource == null) {
      return throw LocalException(thisClass,constDeveloper,"DataSource equals null");
    }
    return _baseInsertModelToNamedDatabaseTIPUsingListModelForFBDS(
        _dataSource as InsertModelToNamedDatabaseTIPDataSource<Z>,
        getModel(EnumBaseModelVM.insertModelToNamedDatabaseTIP),
        listModelForFBDS);
  }
  // end insertTIP 4

  // start insertNP 1
  @protected
  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> insertModelToNamedDatabaseNP()
  {
    if(_isNotExistsDataSource) {
      return throw LocalException(thisClass,constDeveloper,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    if(_dataSource == null) {
      return throw LocalException(thisClass,constDeveloper,"DataSource equals null");
    }
    return _baseInsertModelToNamedDatabaseNP(_dataSource as InsertModelToNamedDatabaseNPDataSource);
  }
  // end insertNP 1

  // start insertListTIP 4
  @protected
  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> insertListModelToNamedDatabaseTIP(
      List<T> listModel)
  {
    if(_isNotExistsDataSource) {
      return throw LocalException(thisClass,constDeveloper,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    if(_dataSource == null) {
      return throw LocalException(thisClass,constDeveloper,"DataSource equals null");
    }
    return _baseInsertListModelToNamedDatabaseTIPUsingListModelForFBDS(
        _dataSource as InsertListModelToNamedDatabaseTIPDataSource<X>,
        listModel,
        List.empty(growable: true));
  }

  @protected
  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> insertListModelToNamedDatabaseTIPUsingStateListModel()
  {
    if(_isNotExistsDataSource) {
      return throw LocalException(thisClass,constDeveloper,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    if(_dataSource == null) {
      return throw LocalException(thisClass,constDeveloper,"DataSource equals null");
    }
    return _baseInsertListModelToNamedDatabaseTIPUsingListModelForFBDS(
        _dataSource as InsertListModelToNamedDatabaseTIPDataSource<X>,
        getListModel(EnumBaseListModelVM.insertListModelToNamedDatabaseTIP),
        List.empty(growable: true));
  }

  @protected
  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> insertListModelToNamedDatabaseTIPUsingListModelForFBDS(
      List<T> listModel,
      List<T> listModelForFBDS)
  {
    if(_isNotExistsDataSource) {
      return throw LocalException(thisClass,constDeveloper,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    if(_dataSource == null) {
      return throw LocalException(thisClass,constDeveloper,"DataSource equals null");
    }
    return _baseInsertListModelToNamedDatabaseTIPUsingListModelForFBDS(
        _dataSource as InsertListModelToNamedDatabaseTIPDataSource<X>,
        listModel,
        listModelForFBDS);
  }

  @protected
  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> insertListModelToNamedDatabaseTIPUsingStateListModelAndListModelForFBDS(
      List<T> listModelForFBDS)
  {
    if(_isNotExistsDataSource) {
      return throw LocalException(thisClass,constDeveloper,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    if(_dataSource == null) {
      return throw LocalException(thisClass,constDeveloper,"DataSource equals null");
    }
    return _baseInsertListModelToNamedDatabaseTIPUsingListModelForFBDS(
        _dataSource as InsertListModelToNamedDatabaseTIPDataSource<X>,
        getListModel(EnumBaseListModelVM.insertListModelToNamedDatabaseTIP),
        listModelForFBDS);
  }
  // end insertListTIP 4

  // start insertListNP 1
  @protected
  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> insertListModelToNamedDatabaseNP()
  {
    if(_isNotExistsDataSource) {
      return throw LocalException(thisClass,constDeveloper,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    if(_dataSource == null) {
      return throw LocalException(thisClass,constDeveloper,"DataSource equals null");
    }
    return _baseInsertListModelToNamedDatabaseNP(_dataSource as InsertListModelToNamedDatabaseNPDataSource);
  }
  // end insertListNP 1

  // start updateTIP 4
  @protected
  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> updateModelToNamedDatabaseTIP(
      T model)
  {
    if(_isNotExistsDataSource) {
      return throw LocalException(thisClass,constDeveloper,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    if(_dataSource == null) {
      return throw LocalException(thisClass,constDeveloper,"DataSource equals null");
    }
    return _baseUpdateModelToNamedDatabaseTIPUsingListModelForFBDS(
        _dataSource as UpdateModelToNamedDatabaseTIPDataSource<Z>,
        model,
        List.empty(growable: true));
  }

  @protected
  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> updateModelToNamedDatabaseTIPUsingStateModel()
  {
    if(_isNotExistsDataSource) {
      return throw LocalException(thisClass,constDeveloper,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    if(_dataSource == null) {
      return throw LocalException(thisClass,constDeveloper,"DataSource equals null");
    }
    return _baseUpdateModelToNamedDatabaseTIPUsingListModelForFBDS(
        _dataSource as UpdateModelToNamedDatabaseTIPDataSource<Z>,
        getModel(EnumBaseModelVM.updateModelToNamedDatabaseTIP),
        List.empty(growable: true));
  }

  @protected
  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> updateModelToNamedDatabaseTIPUsingListModelForFBDS(
      T model,
      List<T> listModelForFBDS)
  {
    if(_isNotExistsDataSource) {
      return throw LocalException(thisClass,constDeveloper,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    if(_dataSource == null) {
      return throw LocalException(thisClass,constDeveloper,"DataSource equals null");
    }
    return _baseUpdateModelToNamedDatabaseTIPUsingListModelForFBDS(
        _dataSource as UpdateModelToNamedDatabaseTIPDataSource<Z>,
        model,
        listModelForFBDS);
  }

  @protected
  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> updateModelToNamedDatabaseTIPUsingStateModelAndListModelForFBDS(
      List<T> listModelForFBDS)
  {
    if(_isNotExistsDataSource) {
      return throw LocalException(thisClass,constDeveloper,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    if(_dataSource == null) {
      return throw LocalException(thisClass,constDeveloper,"DataSource equals null");
    }
    return _baseUpdateModelToNamedDatabaseTIPUsingListModelForFBDS(
        _dataSource as UpdateModelToNamedDatabaseTIPDataSource<Z>,
        getModel(EnumBaseModelVM.updateModelToNamedDatabaseTIP),
        listModelForFBDS);
  }
  // end updateTIP 4

  // start updateNP 1
  @protected
  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> updateModelToNamedDatabaseNP()
  {
    if(_isNotExistsDataSource) {
      return throw LocalException(thisClass,constDeveloper,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    if(_dataSource == null) {
      return throw LocalException(thisClass,constDeveloper,"DataSource equals null");
    }
    return _baseUpdateModelToNamedDatabaseNP(_dataSource as UpdateModelToNamedDatabaseNPDataSource);
  }
  // end updateNP 1

  // start updateParameterNamed 2
  @protected
  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> updateModelToNamedDatabaseParameterNamed(
      BaseTypeParameter baseTypeParameter)
  {
    if(_isNotExistsDataSource) {
      return throw LocalException(thisClass,constDeveloper,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    if(_dataSource == null) {
      return throw LocalException(thisClass,constDeveloper,"DataSource equals null");
    }
    return _baseUpdateModelToNamedDatabaseParameterNamed(
        _dataSource as UpdateModelToNamedDatabaseParameterNamedDataSource<BaseTypeParameter>,
        baseTypeParameter);
  }

  @protected
  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> updateModelToNamedDatabaseParameterNamedUsingStateBaseTypeParameter()
  {
    if(_isNotExistsDataSource) {
      return throw LocalException(thisClass,constDeveloper,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    if(_dataSource == null) {
      return throw LocalException(thisClass,constDeveloper,"DataSource equals null");
    }
    return _baseUpdateModelToNamedDatabaseParameterNamed(
        _dataSource as UpdateModelToNamedDatabaseParameterNamedDataSource<BaseTypeParameter>,
        _getBaseTypeParameter(EnumBaseTypeParameterVM.updateModelToNamedDatabaseParameterNamed));
  }
  // end updateParameterNamed 2

  // start updateListTIP 4
  @protected
  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> updateListModelToNamedDatabaseTIP(
      List<T> listModel)
  {
    if(_isNotExistsDataSource) {
      return throw LocalException(thisClass,constDeveloper,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    if(_dataSource == null) {
      return throw LocalException(thisClass,constDeveloper,"DataSource equals null");
    }
    return _baseUpdateListModelToNamedDatabaseTIPUsingListModelForFBDS(
        _dataSource as UpdateListModelToNamedDatabaseTIPDataSource<X>,
        listModel,
        List.empty(growable: true));
  }

  @protected
  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> updateListModelToNamedDatabaseTIPUsingStateListModel()
  {
    if(_isNotExistsDataSource) {
      return throw LocalException(thisClass,constDeveloper,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    if(_dataSource == null) {
      return throw LocalException(thisClass,constDeveloper,"DataSource equals null");
    }
    return _baseUpdateListModelToNamedDatabaseTIPUsingListModelForFBDS(
        _dataSource as UpdateListModelToNamedDatabaseTIPDataSource<X>,
        getListModel(EnumBaseListModelVM.updateListModelToNamedDatabaseTIP),
        List.empty(growable: true));
  }

  @protected
  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> updateListModelToNamedDatabaseTIPUsingListModelForFBDS(
      List<T> listModel,
      List<T> listModelForFBDS)
  {
    if(_isNotExistsDataSource) {
      return throw LocalException(thisClass,constDeveloper,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    if(_dataSource == null) {
      return throw LocalException(thisClass,constDeveloper,"DataSource equals null");
    }
    return _baseUpdateListModelToNamedDatabaseTIPUsingListModelForFBDS(
        _dataSource as UpdateListModelToNamedDatabaseTIPDataSource<X>,
        listModel,
        listModelForFBDS);
  }

  @protected
  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> updateListModelToNamedDatabaseTIPUsingStateListModelAndListModelForFBDS(
      List<T> listModelForFBDS)
  {
    if(_isNotExistsDataSource) {
      return throw LocalException(thisClass,constDeveloper,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    if(_dataSource == null) {
      return throw LocalException(thisClass,constDeveloper,"DataSource equals null");
    }
    return _baseUpdateListModelToNamedDatabaseTIPUsingListModelForFBDS(
        _dataSource as UpdateListModelToNamedDatabaseTIPDataSource<X>,
        getListModel(EnumBaseListModelVM.updateListModelToNamedDatabaseTIP),
        listModelForFBDS);
  }
  // end updateListTIP 4

  // start updateListNP 1
  @protected
  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> updateListModelToNamedDatabaseNP()
  {
    if(_isNotExistsDataSource) {
      return throw LocalException(thisClass,constDeveloper,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    if(_dataSource == null) {
      return throw LocalException(thisClass,constDeveloper,"DataSource equals null");
    }
    return _baseUpdateListModelToNamedDatabaseNP(_dataSource as UpdateListModelToNamedDatabaseNPDataSource);
  }
  // end updateListNP 1

  // start updateListParameterNamed 2
  @protected
  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> updateListModelToNamedDatabaseParameterNamed(
      BaseTypeParameter baseTypeParameter)
  {
    if(_isNotExistsDataSource) {
      return throw LocalException(thisClass,constDeveloper,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    if(_dataSource == null) {
      return throw LocalException(thisClass,constDeveloper,"DataSource equals null");
    }
    return _baseUpdateListModelToNamedDatabaseParameterNamed(
        _dataSource as UpdateListModelToNamedDatabaseParameterNamedDataSource<BaseTypeParameter>,
        baseTypeParameter);
  }

  @protected
  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> updateListModelToNamedDatabaseParameterNamedUsingStateBaseTypeParameter()
  {
    if(_isNotExistsDataSource) {
      return throw LocalException(thisClass,constDeveloper,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    if(_dataSource == null) {
      return throw LocalException(thisClass,constDeveloper,"DataSource equals null");
    }
    return _baseUpdateListModelToNamedDatabaseParameterNamed(
        _dataSource as UpdateListModelToNamedDatabaseParameterNamedDataSource<BaseTypeParameter>,
        _getBaseTypeParameter(EnumBaseTypeParameterVM.updateListModelToNamedDatabaseParameterNamed));
  }
  // end updateListParameterNamed 2

  // start deleteTIP 4
  @protected
  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> deleteModelToNamedDatabaseTIP(
      T model)
  {
    if(_isNotExistsDataSource) {
      return throw LocalException(thisClass,constDeveloper,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    if(_dataSource == null) {
      return throw LocalException(thisClass,constDeveloper,"DataSource equals null");
    }
    return _baseDeleteModelToNamedDatabaseTIPUsingListModelForFBDS(
        _dataSource as DeleteModelToNamedDatabaseTIPDataSource<Z>,
        model,
        List.empty(growable: true));
  }

  @protected
  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> deleteModelToNamedDatabaseTIPUsingStateModel()
  {
    if(_isNotExistsDataSource) {
      return throw LocalException(thisClass,constDeveloper,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    if(_dataSource == null) {
      return throw LocalException(thisClass,constDeveloper,"DataSource equals null");
    }
    return _baseDeleteModelToNamedDatabaseTIPUsingListModelForFBDS(
        _dataSource as DeleteModelToNamedDatabaseTIPDataSource<Z>,
        getModel(EnumBaseModelVM.deleteModelToNamedDatabaseTIP),
        List.empty(growable: true));
  }

  @protected
  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> deleteModelToNamedDatabaseTIPUsingListModelForFBDS(
      T model,
      List<T> listModelForFBDS)
  {
    if(_isNotExistsDataSource) {
      return throw LocalException(thisClass,constDeveloper,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    if(_dataSource == null) {
      return throw LocalException(thisClass,constDeveloper,"DataSource equals null");
    }
    return _baseDeleteModelToNamedDatabaseTIPUsingListModelForFBDS(
        _dataSource as DeleteModelToNamedDatabaseTIPDataSource<Z>,
        model,
        listModelForFBDS);
  }

  @protected
  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> deleteModelToNamedDatabaseTIPUsingStateModelAndListModelForFBDS(
      List<T> listModelForFBDS)
  {
    if(_isNotExistsDataSource) {
      return throw LocalException(thisClass,constDeveloper,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    if(_dataSource == null) {
      return throw LocalException(thisClass,constDeveloper,"DataSource equals null");
    }
    return _baseDeleteModelToNamedDatabaseTIPUsingListModelForFBDS(
        _dataSource as DeleteModelToNamedDatabaseTIPDataSource<Z>,
        getModel(EnumBaseModelVM.deleteModelToNamedDatabaseTIP),
        listModelForFBDS);
  }
  // end deleteTIP 4

  // start deleteNP 1
  @protected
  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> deleteModelToNamedDatabaseNP()
  {
    if(_isNotExistsDataSource) {
      return throw LocalException(thisClass,constDeveloper,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    if(_dataSource == null) {
      return throw LocalException(thisClass,constDeveloper,"DataSource equals null");
    }
    return _baseDeleteModelToNamedDatabaseNP(_dataSource as DeleteModelToNamedDatabaseNPDataSource);
  }
  // end deleteNP 1

  // start deleteParameterNamed 2
  @protected
  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> deleteModelToNamedDatabaseParameterNamed(
      BaseTypeParameter baseTypeParameter)
  {
    if(_isNotExistsDataSource) {
      return throw LocalException(thisClass,constDeveloper,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    if(_dataSource == null) {
      return throw LocalException(thisClass,constDeveloper,"DataSource equals null");
    }
    return _baseDeleteModelToNamedDatabaseParameterNamed(
        _dataSource as DeleteModelToNamedDatabaseParameterNamedDataSource<BaseTypeParameter>,
        baseTypeParameter);
  }

  @protected
  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> deleteModelToNamedDatabaseParameterNamedUsingStateBaseTypeParameter()
  {
    if(_isNotExistsDataSource) {
      return throw LocalException(thisClass,constDeveloper,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    if(_dataSource == null) {
      return throw LocalException(thisClass,constDeveloper,"DataSource equals null");
    }
    return _baseDeleteModelToNamedDatabaseParameterNamed(
        _dataSource as DeleteModelToNamedDatabaseParameterNamedDataSource<BaseTypeParameter>,
        _getBaseTypeParameter(EnumBaseTypeParameterVM.deleteModelToNamedDatabaseParameterNamed));
  }
  // end deleteParameterNamed 2

  // start deleteListTIP 4
  @protected
  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> deleteListModelToNamedDatabaseTIP(
      List<T> listModel)
  {
    if(_isNotExistsDataSource) {
      return throw LocalException(thisClass,constDeveloper,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    if(_dataSource == null) {
      return throw LocalException(thisClass,constDeveloper,"DataSource equals null");
    }
    return _baseDeleteListModelToNamedDatabaseTIPUsingListModelForFBDS(
        _dataSource as DeleteListModelToNamedDatabaseTIPDataSource<X>,
        listModel,
        List.empty(growable: true));
  }

  @protected
  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> deleteListModelToNamedDatabaseTIPUsingStateListModel()
  {
    if(_isNotExistsDataSource) {
      return throw LocalException(thisClass,constDeveloper,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    if(_dataSource == null) {
      return throw LocalException(thisClass,constDeveloper,"DataSource equals null");
    }
    return _baseDeleteListModelToNamedDatabaseTIPUsingListModelForFBDS(
        _dataSource as DeleteListModelToNamedDatabaseTIPDataSource<X>,
        getListModel(EnumBaseListModelVM.deleteListModelToNamedDatabaseTIP),
        List.empty(growable: true));
  }

  @protected
  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> deleteListModelToNamedDatabaseTIPUsingListModelForFBDS(
      List<T> listModel,
      List<T> listModelForFBDS)
  {
    if(_isNotExistsDataSource) {
      return throw LocalException(thisClass,constDeveloper,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    if(_dataSource == null) {
      return throw LocalException(thisClass,constDeveloper,"DataSource equals null");
    }
    return _baseDeleteListModelToNamedDatabaseTIPUsingListModelForFBDS(
        _dataSource as DeleteListModelToNamedDatabaseTIPDataSource<X>,
        listModel,
        listModelForFBDS);
  }

  @protected
  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> deleteListModelToNamedDatabaseTIPUsingStateListModelAndListModelForFBDS(
      List<T> listModelForFBDS)
  {
    if(_isNotExistsDataSource) {
      return throw LocalException(thisClass,constDeveloper,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    if(_dataSource == null) {
      return throw LocalException(thisClass,constDeveloper,"DataSource equals null");
    }
    return _baseDeleteListModelToNamedDatabaseTIPUsingListModelForFBDS(
        _dataSource as DeleteListModelToNamedDatabaseTIPDataSource<X>,
        getListModel(EnumBaseListModelVM.deleteListModelToNamedDatabaseTIP),
        listModelForFBDS);
  }
  // end deleteListTIP 4

  // start deleteListNP 1
  @protected
  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> deleteListModelToNamedDatabaseNP()
  {
    if(_isNotExistsDataSource) {
      return throw LocalException(thisClass,constDeveloper,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    if(_dataSource == null) {
      return throw LocalException(thisClass,constDeveloper,"DataSource equals null");
    }
    return _baseDeleteListModelToNamedDatabaseNP(_dataSource as DeleteListModelToNamedDatabaseNPDataSource);
  }
  // end deleteListNP 1

  // start deleteListParameterNamed 2
  @protected
  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> deleteListModelToNamedDatabaseParameterNamed(
      BaseTypeParameter baseTypeParameter)
  {
    if(_isNotExistsDataSource) {
      return throw LocalException(thisClass,constDeveloper,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    if(_dataSource == null) {
      return throw LocalException(thisClass,constDeveloper,"DataSource equals null");
    }
    return _baseDeleteListModelToNamedDatabaseParameterNamed(
        _dataSource as DeleteListModelToNamedDatabaseParameterNamedDataSource<BaseTypeParameter>,
        baseTypeParameter);
  }

  @protected
  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> deleteListModelToNamedDatabaseParameterNamedUsingStateBaseTypeParameter()
  {
    if(_isNotExistsDataSource) {
      return throw LocalException(thisClass,constDeveloper,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    if(_dataSource == null) {
      return throw LocalException(thisClass,constDeveloper,"DataSource equals null");
    }
    return _baseDeleteListModelToNamedDatabaseParameterNamed(
        _dataSource as DeleteListModelToNamedDatabaseParameterNamedDataSource<BaseTypeParameter>,
        _getBaseTypeParameter(EnumBaseTypeParameterVM.deleteListModelToNamedDatabaseParameterNamed));
  }
  // end deleteListParameterNamed 2
  /// End DataSource **/

  /// Start For GetListModelParameterNamed **/
  // start runIteratorForGetListParameterNamed 2
  @protected
  @nonVirtual
  Response<List<T>, BaseException> runIteratorForGetListModelParameterNamed(
      BaseTypeParameter<EnumIterator> enumTypeParameterForBaseIterator)
  {
    return _baseRunIteratorForGetListModel(enumTypeParameterForBaseIterator,
        _getBaseListModel(EnumBaseListModelVM.getListModelFromNamedDatabaseParameterNamed));
  }

  @protected
  @nonVirtual
  Response<List<T>, BaseException> runIteratorForGetListModelParameterNamedUsingStateEnumTypeParameterForBaseIterator() {
    return _baseRunIteratorForGetListModel(getEnumTypeParameterForBaseIterator,
        _getBaseListModel(EnumBaseListModelVM.getListModelFromNamedDatabaseParameterNamed));
  }
  // end runIteratorForGetListParameterNamed 2

  // start insertToGetListParameterNamed 2
  @protected
  @nonVirtual
  Response<bool, BaseException> insertModelToGetListModelParameterNamed(
      T model)
  {
    return _baseInsertModelToGetListModel(model,
        _getBaseListModel(EnumBaseListModelVM.getListModelFromNamedDatabaseParameterNamed));
  }

  @protected
  @nonVirtual
  Response<bool, BaseException> insertModelToGetListModelParameterNamedUsingStateModel() {
    return _baseInsertModelToGetListModel(getModel(EnumBaseModelVM.insertModelToNamedDatabaseTIP),
        _getBaseListModel(EnumBaseListModelVM.getListModelFromNamedDatabaseParameterNamed));
  }
  // end insertToGetListParameterNamed 2

  // start insertListToGetListParameterNamed 2
  @protected
  @nonVirtual
  Response<bool, BaseException> insertListModelToGetListModelParameterNamed(
      List<T> listModel)
  {
    return _baseInsertListModelToGetListModel(listModel,
        _getBaseListModel(EnumBaseListModelVM.getListModelFromNamedDatabaseParameterNamed));
  }

  @protected
  @nonVirtual
  Response<bool, BaseException> insertListModelToGetListModelParameterNamedUsingStateListModel() {
    return _baseInsertListModelToGetListModel(getListModel(EnumBaseListModelVM.insertListModelToNamedDatabaseTIP),
        _getBaseListModel(EnumBaseListModelVM.getListModelFromNamedDatabaseParameterNamed));
  }
  // end insertListToGetListParameterNamed 2

  // start updateToGetListParameterNamed 2
  @protected
  @nonVirtual
  Response<bool, BaseException> updateModelToGetListModelParameterNamed(
      T model)
  {
    return _baseUpdateModelToGetListModel(model,
        _getBaseListModel(EnumBaseListModelVM.getListModelFromNamedDatabaseParameterNamed));
  }

  @protected
  @nonVirtual
  Response<bool, BaseException> updateModelToGetListModelParameterNamedUsingStateModel() {
    return _baseUpdateModelToGetListModel(getModel(EnumBaseModelVM.updateModelToNamedDatabaseTIP),
        _getBaseListModel(EnumBaseListModelVM.getListModelFromNamedDatabaseParameterNamed));
  }
  // start updateToGetListParameterNamed 2

  // start updateListToGetListParameterNamed 2
  @protected
  @nonVirtual
  Response<bool, BaseException> updateListModelToGetListModelParameterNamed(
      List<T> listModel)
  {
    return _baseUpdateListModelToGetListModel(listModel,
        _getBaseListModel(EnumBaseListModelVM.getListModelFromNamedDatabaseParameterNamed));
  }

  @protected
  @nonVirtual
  Response<bool, BaseException> updateListModelToGetListModelParameterNamedUsingStateListModel() {
    return _baseUpdateListModelToGetListModel(getListModel(EnumBaseListModelVM.updateListModelToNamedDatabaseTIP),
        _getBaseListModel(EnumBaseListModelVM.getListModelFromNamedDatabaseParameterNamed));
  }
  // end updateListToGetListParameterNamed 2

  // start deleteToGetListParameterNamed 2
  @protected
  @nonVirtual
  Response<bool, BaseException> deleteModelToGetListModelParameterNamed(
      T model)
  {
    return _baseDeleteModelToGetListModel(model,
        _getBaseListModel(EnumBaseListModelVM.getListModelFromNamedDatabaseParameterNamed));
  }

  @protected
  @nonVirtual
  Response<bool, BaseException> deleteModelToGetListModelParameterNamedUsingStateModel() {
    return _baseDeleteModelToGetListModel(getModel(EnumBaseModelVM.deleteModelToNamedDatabaseTIP),
        _getBaseListModel(EnumBaseListModelVM.getListModelFromNamedDatabaseParameterNamed));
  }
  // end deleteToGetListParameterNamed 2

  // start deleteListToGetListParameterNamed 2
  @protected
  @nonVirtual
  Response<bool, BaseException> deleteListModelToGetListModelParameterNamed(
      List<T> listModel)
  {
    return _baseDeleteListModelToGetListModel(listModel,
        _getBaseListModel(EnumBaseListModelVM.getListModelFromNamedDatabaseParameterNamed));
  }

  @protected
  @nonVirtual
  Response<bool, BaseException> deleteListModelToGetListModelParameterNamedUsingStateListModel() {
    return _baseDeleteListModelToGetListModel(getListModel(EnumBaseListModelVM.deleteListModelToNamedDatabaseTIP),
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
    return _baseRunIteratorForGetListModel(enumTypeParameterForBaseIterator,
        _getBaseListModel(EnumBaseListModelVM.getListModelFromNamedDatabaseNP));
  }

  @protected
  @nonVirtual
  Response<List<T>, BaseException> runIteratorForGetListModelNPUsingStateEnumTypeParameterForBaseIterator() {
    return _baseRunIteratorForGetListModel(getEnumTypeParameterForBaseIterator,
        _getBaseListModel(EnumBaseListModelVM.getListModelFromNamedDatabaseNP));
  }
  // end runIteratorForGetListNP 2

  // start insertToGetListNP 2
  @protected
  @nonVirtual
  Response<bool, BaseException> insertModelToGetListModelNP(
      T model)
  {
    return _baseInsertModelToGetListModel(model,
        _getBaseListModel(EnumBaseListModelVM.getListModelFromNamedDatabaseNP));
  }

  @protected
  @nonVirtual
  Response<bool, BaseException> insertModelToGetListModelNPUsingStateModel() {
    return _baseInsertModelToGetListModel(getModel(EnumBaseModelVM.insertModelToNamedDatabaseTIP),
        _getBaseListModel(EnumBaseListModelVM.getListModelFromNamedDatabaseNP));
  }
  // end insertToGetListNP 2

  // start insertListToGetListNP 2
  @protected
  @nonVirtual
  Response<bool, BaseException> insertListModelToGetListModelNP(
      List<T> listModel)
  {
    return _baseInsertListModelToGetListModel(listModel,
        _getBaseListModel(EnumBaseListModelVM.getListModelFromNamedDatabaseNP));
  }

  @protected
  @nonVirtual
  Response<bool, BaseException> insertListModelToGetListModelNPUsingStateListModel() {
    return _baseInsertListModelToGetListModel(getListModel(EnumBaseListModelVM.insertListModelToNamedDatabaseTIP),
        _getBaseListModel(EnumBaseListModelVM.getListModelFromNamedDatabaseNP));
  }
  // end insertListToGetListNP 2

  // start updateToGetListNP 2
  @protected
  @nonVirtual
  Response<bool, BaseException> updateModelToGetListModelNP(
      T model)
  {
    return _baseUpdateModelToGetListModel(model,
        _getBaseListModel(EnumBaseListModelVM.getListModelFromNamedDatabaseNP));
  }

  @protected
  @nonVirtual
  Response<bool, BaseException> updateModelToGetListModelNPUsingStateModel() {
    return _baseUpdateModelToGetListModel(getModel(EnumBaseModelVM.updateModelToNamedDatabaseTIP),
        _getBaseListModel(EnumBaseListModelVM.getListModelFromNamedDatabaseNP));
  }
  // start updateToGetListNP 2

  // start updateListToGetListNP 2
  @protected
  @nonVirtual
  Response<bool, BaseException> updateListModelToGetListModelNP(
      List<T> listModel)
  {
    return _baseUpdateListModelToGetListModel(listModel,
        _getBaseListModel(EnumBaseListModelVM.getListModelFromNamedDatabaseNP));
  }

  @protected
  @nonVirtual
  Response<bool, BaseException> updateListModelToGetListModelNPUsingStateListModel() {
    return _baseUpdateListModelToGetListModel(getListModel(EnumBaseListModelVM.updateListModelToNamedDatabaseTIP),
        _getBaseListModel(EnumBaseListModelVM.getListModelFromNamedDatabaseNP));
  }
  // end updateListToGetListNP 2

  // start deleteToGetListNP 2
  @protected
  @nonVirtual
  Response<bool, BaseException> deleteModelToGetListModelNP(
      T model)
  {
    return _baseDeleteModelToGetListModel(model,
        _getBaseListModel(EnumBaseListModelVM.getListModelFromNamedDatabaseNP));
  }

  @protected
  @nonVirtual
  Response<bool, BaseException> deleteModelToGetListModelNPUsingStateModel() {
    return _baseDeleteModelToGetListModel(getModel(EnumBaseModelVM.deleteModelToNamedDatabaseTIP),
        _getBaseListModel(EnumBaseListModelVM.getListModelFromNamedDatabaseNP));
  }
  // end deleteToGetListNP 2

  // start deleteListToGetListNP 2
  @protected
  @nonVirtual
  Response<bool, BaseException> deleteListModelToGetListModelNP(
      List<T> listModel)
  {
    return _baseDeleteListModelToGetListModel(listModel,
        _getBaseListModel(EnumBaseListModelVM.getListModelFromNamedDatabaseNP));
  }

  @protected
  @nonVirtual
  Response<bool, BaseException> deleteListModelToGetListModelNPUsingStateListModel() {
    return _baseDeleteListModelToGetListModel(getListModel(EnumBaseListModelVM.deleteListModelToNamedDatabaseTIP),
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

  @protected
  @nonVirtual
  void setBaseTypeParameter(
      EnumBaseTypeParameterVM operation,
      BaseTypeParameter baseTypeParameter)
  {
    if(!_mapEnumBaseTypeParameterVMAndBaseTypeParameter.containsKey(operation)) {
      throw LocalException(thisClass,constDeveloper,"$operation not found");
    }
    _mapEnumBaseTypeParameterVMAndBaseTypeParameter[operation] = baseTypeParameter;
  }

  BaseTypeParameter _getBaseTypeParameter(
      EnumBaseTypeParameterVM operation)
  {
    if(!_mapEnumBaseTypeParameterVMAndBaseTypeParameter.containsKey(operation)) {
      return throw LocalException(thisClass,constDeveloper,"$operation not found");
    }
    return _mapEnumBaseTypeParameterVMAndBaseTypeParameter[operation];
  }
  /// End Base/EnumTypeParameter **/

  /// Start Model **/
  @protected
  @nonVirtual
  T getModel(
      EnumBaseModelVM operation)
  {
    if(!_mapEnumBaseModelVMAndBaseModel.containsKey(operation)) {
      return throw LocalException(thisClass,constDeveloper,"$operation not found");
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
      throw LocalException(thisClass,constDeveloper,"$operation not found");
    }
    _mapEnumBaseModelVMAndBaseModel[operation] = model;
  }

  @protected
  @nonVirtual
  Future<T> getFutureModel(
      EnumBaseModelVM operation)
  async {
    if(!_mapEnumBaseModelVMAndBaseModel.containsKey(operation)) {
      return throw LocalException(thisClass,constDeveloper,"$operation not found");
    }
    return _mapEnumBaseModelVMAndBaseModel[operation];
  }

  @protected
  @nonVirtual
  Stream<T> getStreamModel(
      EnumBaseModelVM operation)
  {
    if(!_mapEnumBaseModelVMAndStreamControllerForBaseModel.containsKey(operation)) {
      return throw LocalException(thisClass,constDeveloper,"$operation not found");
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
      throw LocalException(thisClass,constDeveloper,"$operation not found");
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
      return throw LocalException(thisClass,constDeveloper,"$operation not found");
    }
    return _mapEnumBaseListModelVMAndBaseListModel[operation].getListModel;
  }

  @protected
  @nonVirtual
  void setListModel(
      EnumBaseListModelVM operation,
      List<T> listModel)
  {
    if(!_mapEnumBaseListModelVMAndBaseListModel.containsKey(operation)) {
      throw LocalException(thisClass,constDeveloper,"$operation not found");
    }
    _mapEnumBaseListModelVMAndBaseListModel[operation].setParameterListModel = listModel;
  }

  @protected
  @nonVirtual
  Future<List<T>> getFutureListModel(
      EnumBaseListModelVM operation)
  async {
    if(!_mapEnumBaseListModelVMAndBaseListModel.containsKey(operation)) {
      return throw LocalException(thisClass,constDeveloper,"$operation not found");
    }
    return _mapEnumBaseListModelVMAndBaseListModel[operation].getListModel;
  }

  @protected
  @nonVirtual
  Stream<List<T>> getStreamListModel(
      EnumBaseListModelVM operation)
  {
    if(!_mapEnumBaseListModelVMAndStreamControllerForListBaseModel.containsKey(operation)) {
      return throw LocalException(thisClass,constDeveloper,"$operation not found");
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
      throw LocalException(thisClass,constDeveloper,"$operation not found");
    }
    _mapEnumBaseListModelVMAndStreamControllerForListBaseModel[operation]
        .sink
        .add(_mapEnumBaseListModelVMAndBaseListModel[operation].getListModel);
  }
  /// End ListModel **/

  /// Start BaseListModel **/
  Y _getBaseListModel(
      EnumBaseListModelVM operation)
  {
    if(!_mapEnumBaseListModelVMAndBaseListModel.containsKey(operation)) {
      return throw LocalException(thisClass,constDeveloper,"$operation not found");
    }
    return _mapEnumBaseListModelVMAndBaseListModel[operation];
  }
  /// End BaseListModel **/

  /// Start Setters DataSource **/
  @protected
  @nonVirtual
  set setDataSource(
      Object dataSource)
  {
    _dataSource = dataSource;
    _initListEnumBaseModelVMAndListEnumBaseListModelVMAndListEnumBaseTypeParameterVM();
    _initMapEnumBaseModelVMAndBaseModel();
    _initMapEnumBaseModelVMAndStreamControllerForBaseModel();
    _initMapEnumBaseListModelVMAndBaseListModel();
    _initMapEnumBaseListModelVMAndStreamControllerForListBaseModel();
    _initMapEnumBaseTypeParameterVMAndBaseTypeParameter();
  }
  /// End Setters DataSource **/

  /// Start Setters FBDS **/
  @protected
  @nonVirtual
  set setInsertModelToNamedDatabaseFBDS(
      InsertModelToNamedDatabaseFBDS<T> insertModelToNamedDatabaseFBDS)
  {
    if(_isNotExistsDataSource) {
      throw LocalException(thisClass,constDeveloper,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    _insertModelToNamedDatabaseFBDS = insertModelToNamedDatabaseFBDS;
  }

  @protected
  @nonVirtual
  set setUpdateModelToNamedDatabaseFBDS(
      UpdateModelToNamedDatabaseFBDS<T> updateModelToNamedDatabaseFBDS)
  {
    if(_isNotExistsDataSource) {
      throw LocalException(thisClass,constDeveloper,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    _updateModelToNamedDatabaseFBDS = updateModelToNamedDatabaseFBDS;
  }

  @protected
  @nonVirtual
  set setDeleteModelToNamedDatabaseFBDS(
      DeleteModelToNamedDatabaseFBDS<T> deleteModelToNamedDatabaseFBDS)
  {
    if(_isNotExistsDataSource) {
      throw LocalException(thisClass,constDeveloper,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    _deleteModelToNamedDatabaseFBDS = deleteModelToNamedDatabaseFBDS;
  }

  @protected
  @nonVirtual
  set setInsertListModelToNamedDatabaseFBDS(
      InsertListModelToNamedDatabaseFBDS<T,Y> insertListModelToNamedDatabaseFBDS)
  {
    if(_isNotExistsDataSource) {
      throw LocalException(thisClass,constDeveloper,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    _insertListModelToNamedDatabaseFBDS = insertListModelToNamedDatabaseFBDS;
  }

  @protected
  @nonVirtual
  set setUpdateListModelToNamedDatabaseFBDS(
      UpdateListModelToNamedDatabaseFBDS<T,Y> updateListModelToNamedDatabaseFBDS)
  {
    if(_isNotExistsDataSource) {
      throw LocalException(thisClass,constDeveloper,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    _updateListModelToNamedDatabaseFBDS = updateListModelToNamedDatabaseFBDS;
  }

  @protected
  @nonVirtual
  set setDeleteListModelToNamedDatabaseFBDS(
      DeleteListModelToNamedDatabaseFBDS<T,Y> deleteListModelToNamedDatabaseFBDS)
  {
    if(_isNotExistsDataSource) {
      throw LocalException(thisClass,constDeveloper,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    _deleteListModelToNamedDatabaseFBDS = deleteListModelToNamedDatabaseFBDS;
  }
  /// End Setters FBDS **/

  bool get _isNotExistsDataSource {
    return !_isExistsDataSource;
  }

  void _initListEnumBaseModelVMAndListEnumBaseListModelVMAndListEnumBaseTypeParameterVM() {
    if(_isNotExistsDataSource) {
      throw LocalException(thisClass,constDeveloper,"Constructor call thereIsDataSource...: $_isExistsDataSource");
    }
    if(_dataSource == null) {
      throw LocalException(thisClass,constDeveloper,"DataSource equals null");
    }
    if(_dataSource is InsertModelToNamedDatabaseTIPDataSource<Z>) {
      _listEnumBaseModelVM.add(EnumBaseModelVM.insertModelToNamedDatabaseTIP);
    }
    if(_dataSource is UpdateModelToNamedDatabaseTIPDataSource<Z>) {
      _listEnumBaseModelVM.add(EnumBaseModelVM.updateModelToNamedDatabaseTIP);
    }
    if(_dataSource is DeleteModelToNamedDatabaseTIPDataSource<Z>) {
      _listEnumBaseModelVM.add(EnumBaseModelVM.deleteModelToNamedDatabaseTIP);
    }
    if(_dataSource is GetModelFromNamedDatabaseParameterNamedDataSource<Z,BaseTypeParameter>) {
      _listEnumBaseModelVM.add(EnumBaseModelVM.getModelFromNamedDatabaseParameterNamed);
      _listEnumBaseTypeParameterVM.add(EnumBaseTypeParameterVM.getModelFromNamedDatabaseParameterNamed);
    }
    if(_dataSource is GetModelFromNamedDatabaseNPDataSource<Z>) {
      _listEnumBaseModelVM.add(EnumBaseModelVM.getModelFromNamedDatabaseNP);
    }
    if(_dataSource is InsertListModelToNamedDatabaseTIPDataSource<X>) {
      _listEnumBaseListModelVM.add(EnumBaseListModelVM.insertListModelToNamedDatabaseTIP);
    }
    if(_dataSource is UpdateListModelToNamedDatabaseTIPDataSource<X>) {
      _listEnumBaseListModelVM.add(EnumBaseListModelVM.updateListModelToNamedDatabaseTIP);
    }
    if(_dataSource is DeleteListModelToNamedDatabaseTIPDataSource<X>) {
      _listEnumBaseListModelVM.add(EnumBaseListModelVM.deleteListModelToNamedDatabaseTIP);
    }
    if(_dataSource is GetListModelFromNamedDatabaseParameterNamedDataSource<X,BaseTypeParameter>) {
      _listEnumBaseListModelVM.add(EnumBaseListModelVM.getListModelFromNamedDatabaseParameterNamed);
      _listEnumBaseTypeParameterVM.add(EnumBaseTypeParameterVM.getListModelFromNamedDatabaseParameterNamed);
    }
    if(_dataSource is GetListModelFromNamedDatabaseNPDataSource<X>) {
      _listEnumBaseListModelVM.add(EnumBaseListModelVM.getListModelFromNamedDatabaseNP);
    }
    if(_dataSource is UpdateModelToNamedDatabaseParameterNamedDataSource<BaseTypeParameter>) {
      _listEnumBaseTypeParameterVM.add(EnumBaseTypeParameterVM.updateModelToNamedDatabaseParameterNamed);
    }
    if(_dataSource is DeleteModelToNamedDatabaseParameterNamedDataSource<BaseTypeParameter>) {
      _listEnumBaseTypeParameterVM.add(EnumBaseTypeParameterVM.deleteModelToNamedDatabaseParameterNamed);
    }
    if(_dataSource is UpdateListModelToNamedDatabaseParameterNamedDataSource<BaseTypeParameter>) {
      _listEnumBaseTypeParameterVM.add(EnumBaseTypeParameterVM.updateListModelToNamedDatabaseParameterNamed);
    }
    if(_dataSource is DeleteListModelToNamedDatabaseParameterNamedDataSource<BaseTypeParameter>) {
      _listEnumBaseTypeParameterVM.add(EnumBaseTypeParameterVM.deleteListModelToNamedDatabaseParameterNamed);
    }
  }

  void _initNoDataSourceListEnumBaseModelVM(
      List<EnumBaseModelVM> listEnumBaseModelVM)
  {
    if(_isExistsDataSource) {
      throw LocalException(thisClass,constDeveloper,"Constructor call noDataSource: $_isNotExistsDataSource");
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
      throw LocalException(thisClass,constDeveloper,"Constructor call noDataSource: $_isNotExistsDataSource");
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
      throw LocalException(thisClass,constDeveloper,"InitObjectBaseModel equals null");
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
      throw LocalException(thisClass,constDeveloper,"InitObjectBaseListModel equals null");
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

  Future<Response<List<T>,BaseException>> _baseGetListModelFromNamedDatabaseNP(
      GetListModelFromNamedDatabaseNPDataSource<X> getListModelFromNamedDatabaseNPDataSource)
  async {
    Response<X,BaseException> response = await getListModelFromNamedDatabaseNPDataSource
        .getListModelFromNamedDatabaseNP();
    if(response.isExceptionResponse()) {
      return Response.exception(response.getException);
    }
    if(response.isCanceledOperationWithoutErrorAndSuccess()) {
      return Response.cancelOperationWithoutErrorAndSuccess(response.getCancelOperationWithoutErrorAndSuccess);
    }
    return Response.success(response.getData.toBaseListModel().getListModel);
  }

  Future<Response<List<T>,BaseException>> _baseGetListModelFromNamedDatabaseParameterNamed(
      GetListModelFromNamedDatabaseParameterNamedDataSource<X,BaseTypeParameter> getListModelFromNamedDatabaseParameterNamedDataSource,
      BaseTypeParameter baseTypeParameter)
  async {
    Response<X,BaseException> response = await getListModelFromNamedDatabaseParameterNamedDataSource
        .getListModelFromNamedDatabaseParameterNamed(baseTypeParameter);
    if(response.isExceptionResponse()) {
      return Response.exception(response.getException);
    }
    if(response.isCanceledOperationWithoutErrorAndSuccess()) {
      return Response.cancelOperationWithoutErrorAndSuccess(response.getCancelOperationWithoutErrorAndSuccess);
    }
    return Response.success(response.getData.toBaseListModel().getListModel);
  }

  Future<Response<T,BaseException>> _baseGetModelFromNamedDatabaseNP(
      GetModelFromNamedDatabaseNPDataSource<Z> getModelFromNamedDatabaseNPDataSource)
  async {
    Response<Z,BaseException> response = await getModelFromNamedDatabaseNPDataSource
        .getModelFromNamedDatabaseNP();
    if(response.isExceptionResponse()) {
      return Response.exception(response.getException);
    }
    if(response.isCanceledOperationWithoutErrorAndSuccess()) {
      return Response.cancelOperationWithoutErrorAndSuccess(response.getCancelOperationWithoutErrorAndSuccess);
    }
    return Response.success(response.getData.toBaseModel());
  }

  Future<Response<T,BaseException>> _baseGetModelFromNamedDatabaseParameterNamed(
      GetModelFromNamedDatabaseParameterNamedDataSource<Z,BaseTypeParameter> getModelFromNamedDatabaseParameterNamedDataSource,
      BaseTypeParameter baseTypeParameter)
  async {
    Response<Z,BaseException> response = await getModelFromNamedDatabaseParameterNamedDataSource
        .getModelFromNamedDatabaseParameterNamed(baseTypeParameter);
    if(response.isExceptionResponse()) {
      return Response.exception(response.getException);
    }
    if(response.isCanceledOperationWithoutErrorAndSuccess()) {
      return Response.cancelOperationWithoutErrorAndSuccess(response.getCancelOperationWithoutErrorAndSuccess);
    }
    return Response.success(response.getData.toBaseModel());
  }

  Future<Response<BaseTypeParameter,BaseException>> _baseInsertModelToNamedDatabaseTIPUsingListModelForFBDS(
      InsertModelToNamedDatabaseTIPDataSource<Z> insertModelToNamedDatabaseTIPDataSource,
      T model,
      List<T> listModelForFBDS)
  async {
    if(_converterToBaseModelNamedDatabase == null) {
      return throw LocalException(thisClass,constDeveloper,"ConverterToBaseModelNamedDatabase null");
    }
    T modelForClone = cloneModel(model);
    if(_insertModelToNamedDatabaseFBDS == null) {
      return await insertModelToNamedDatabaseTIPDataSource
          .insertModelToNamedDatabaseTIP(_converterToBaseModelNamedDatabase.toBaseModelNamedDatabase(modelForClone));
    }
    ResponseGenericBoolAndDomainException response = _insertModelToNamedDatabaseFBDS
        .insertModelToNamedDatabase(modelForClone,_cloneListModel(listModelForFBDS));
    if(response.isExceptionResponse()) {
      return Response.exception(response.getException);
    }
    if(response.isCanceledOperationWithoutErrorAndSuccess()) {
      return Response.cancelOperationWithoutErrorAndSuccess(response.getCancelOperationWithoutErrorAndSuccess);
    }
    return await insertModelToNamedDatabaseTIPDataSource
        .insertModelToNamedDatabaseTIP(_converterToBaseModelNamedDatabase.toBaseModelNamedDatabase(modelForClone));
  }

  Future<Response<BaseTypeParameter,BaseException>> _baseInsertModelToNamedDatabaseNP(
      InsertModelToNamedDatabaseNPDataSource insertModelToNamedDatabaseNPDataSource)
  {
    return insertModelToNamedDatabaseNPDataSource
        .insertModelToNamedDatabaseNP();
  }

  Future<Response<BaseTypeParameter,BaseException>> _baseInsertListModelToNamedDatabaseTIPUsingListModelForFBDS(
      InsertListModelToNamedDatabaseTIPDataSource<X> insertListModelToNamedDatabaseTIPDataSource,
      List<T> listModel,
      List<T> listModelForFBDS)
  async {
    if(_converterToBaseListModelNamedDatabase == null) {
      return throw LocalException(thisClass,constDeveloper,"ConverterToBaseListModelNamedDatabase null");
    }
    BaseListModel<T> listModelForClone = BaseListModel(_cloneListModel(listModel));
    if(_insertListModelToNamedDatabaseFBDS == null) {
      return await insertListModelToNamedDatabaseTIPDataSource
          .insertListModelToNamedDatabaseTIP(_converterToBaseListModelNamedDatabase.toBaseListModelNamedDatabase(listModelForClone));
    }
    ResponseGenericBoolAndDomainException response = _insertListModelToNamedDatabaseFBDS
        .insertListModelToNamedDatabase(listModelForClone,_cloneListModel(listModelForFBDS));
    if(response.isExceptionResponse()) {
      return Response.exception(response.getException);
    }
    if(response.isCanceledOperationWithoutErrorAndSuccess()) {
      return Response.cancelOperationWithoutErrorAndSuccess(response.getCancelOperationWithoutErrorAndSuccess);
    }
    return await insertListModelToNamedDatabaseTIPDataSource
        .insertListModelToNamedDatabaseTIP(_converterToBaseListModelNamedDatabase.toBaseListModelNamedDatabase(listModelForClone));
  }

  Future<Response<BaseTypeParameter,BaseException>> _baseInsertListModelToNamedDatabaseNP(
      InsertListModelToNamedDatabaseNPDataSource insertListModelToNamedDatabaseNPDataSource)
  {
    return insertListModelToNamedDatabaseNPDataSource
        .insertListModelToNamedDatabaseNP();
  }

  Future<Response<BaseTypeParameter,BaseException>> _baseUpdateModelToNamedDatabaseTIPUsingListModelForFBDS(
      UpdateModelToNamedDatabaseTIPDataSource<Z> updateModelToNamedDatabaseTIPDataSource,
      T model,
      List<T> listModelForFBDS)
  async {
    if(_converterToBaseModelNamedDatabase == null) {
      return throw LocalException(thisClass,constDeveloper,"ConverterToBaseModelNamedDatabase null");
    }
    T modelForClone = cloneModel(model);
    if(_updateModelToNamedDatabaseFBDS == null) {
      return await updateModelToNamedDatabaseTIPDataSource
          .updateModelToNamedDatabaseTIP(_converterToBaseModelNamedDatabase.toBaseModelNamedDatabase(modelForClone));
    }
    ResponseGenericBoolAndDomainException response = _updateModelToNamedDatabaseFBDS
        .updateModelToNamedDatabase(modelForClone,_cloneListModel(listModelForFBDS));
    if(response.isExceptionResponse()) {
      return Response.exception(response.getException);
    }
    if(response.isCanceledOperationWithoutErrorAndSuccess()) {
      return Response.cancelOperationWithoutErrorAndSuccess(response.getCancelOperationWithoutErrorAndSuccess);
    }
    return await updateModelToNamedDatabaseTIPDataSource
          .updateModelToNamedDatabaseTIP(_converterToBaseModelNamedDatabase.toBaseModelNamedDatabase(modelForClone));
  }

  Future<Response<BaseTypeParameter,BaseException>> _baseUpdateModelToNamedDatabaseNP(
      UpdateModelToNamedDatabaseNPDataSource updateModelToNamedDatabaseNPDataSource)
  {
    return updateModelToNamedDatabaseNPDataSource
        .updateModelToNamedDatabaseNP();
  }

  Future<Response<BaseTypeParameter,BaseException>> _baseUpdateModelToNamedDatabaseParameterNamed(
      UpdateModelToNamedDatabaseParameterNamedDataSource<BaseTypeParameter> updateModelToNamedDatabaseParameterNamedDataSource,
      BaseTypeParameter baseTypeParameter)
  {
    return updateModelToNamedDatabaseParameterNamedDataSource
        .updateModelToNamedDatabaseParameterNamed(baseTypeParameter);
  }

  Future<Response<BaseTypeParameter,BaseException>> _baseUpdateListModelToNamedDatabaseTIPUsingListModelForFBDS(
      UpdateListModelToNamedDatabaseTIPDataSource<X> updateListModelToNamedDatabaseTIPDataSource,
      List<T> listModel,
      List<T> listModelForFBDS)
  async {
    if(_converterToBaseListModelNamedDatabase == null) {
      return throw LocalException(thisClass,constDeveloper,"ConverterToBaseListModelNamedDatabase null");
    }
    BaseListModel<T> listModelForClone = BaseListModel(_cloneListModel(listModel));
    if(_updateListModelToNamedDatabaseFBDS == null) {
      return await updateListModelToNamedDatabaseTIPDataSource
          .updateListModelToNamedDatabaseTIP(_converterToBaseListModelNamedDatabase.toBaseListModelNamedDatabase(listModelForClone));
    }
    ResponseGenericBoolAndDomainException response = _updateListModelToNamedDatabaseFBDS
        .updateListModelToNamedDatabase(listModelForClone,_cloneListModel(listModelForFBDS));
    if(response.isExceptionResponse()) {
      return Response.exception(response.getException);
    }
    if(response.isCanceledOperationWithoutErrorAndSuccess()) {
      return Response.cancelOperationWithoutErrorAndSuccess(response.getCancelOperationWithoutErrorAndSuccess);
    }
    return await updateListModelToNamedDatabaseTIPDataSource
        .updateListModelToNamedDatabaseTIP(_converterToBaseListModelNamedDatabase.toBaseListModelNamedDatabase(listModelForClone));
  }

  Future<Response<BaseTypeParameter,BaseException>> _baseUpdateListModelToNamedDatabaseNP(
      UpdateListModelToNamedDatabaseNPDataSource updateListModelToNamedDatabaseNPDataSource)
  {
    return updateListModelToNamedDatabaseNPDataSource
        .updateListModelToNamedDatabaseNP();
  }

  Future<Response<BaseTypeParameter,BaseException>> _baseUpdateListModelToNamedDatabaseParameterNamed(
      UpdateListModelToNamedDatabaseParameterNamedDataSource<BaseTypeParameter> updateListModelToNamedDatabaseParameterNamedDataSource,
      BaseTypeParameter baseTypeParameter)
  {
    return updateListModelToNamedDatabaseParameterNamedDataSource
        .updateListModelToNamedDatabaseParameterNamed(baseTypeParameter);
  }

  Future<Response<BaseTypeParameter,BaseException>> _baseDeleteModelToNamedDatabaseTIPUsingListModelForFBDS(
      DeleteModelToNamedDatabaseTIPDataSource<Z> deleteModelToNamedDatabaseTIPDataSource,
      T model,
      List<T> listModelForFBDS)
  async {
    if(_converterToBaseModelNamedDatabase == null) {
      return throw LocalException(thisClass,constDeveloper,"ConverterToBaseModelNamedDatabase null");
    }
    T modelForClone = cloneModel(model);
    if(_deleteModelToNamedDatabaseFBDS == null) {
      return await deleteModelToNamedDatabaseTIPDataSource
          .deleteModelToNamedDatabaseTIP(_converterToBaseModelNamedDatabase.toBaseModelNamedDatabase(modelForClone));
    }
    ResponseGenericBoolAndDomainException response = _deleteModelToNamedDatabaseFBDS
        .deleteModelToNamedDatabase(modelForClone,_cloneListModel(listModelForFBDS));
    if(response.isExceptionResponse()) {
      return Response.exception(response.getException);
    }
    if(response.isCanceledOperationWithoutErrorAndSuccess()) {
      return Response.cancelOperationWithoutErrorAndSuccess(response.getCancelOperationWithoutErrorAndSuccess);
    }
    return await deleteModelToNamedDatabaseTIPDataSource
        .deleteModelToNamedDatabaseTIP(_converterToBaseModelNamedDatabase.toBaseModelNamedDatabase(modelForClone));
  }

  Future<Response<BaseTypeParameter,BaseException>> _baseDeleteModelToNamedDatabaseNP(
      DeleteModelToNamedDatabaseNPDataSource deleteModelToNamedDatabaseNPDataSource)
  {
    return deleteModelToNamedDatabaseNPDataSource
        .deleteModelToNamedDatabaseNP();
  }

  Future<Response<BaseTypeParameter,BaseException>> _baseDeleteModelToNamedDatabaseParameterNamed(
      DeleteModelToNamedDatabaseParameterNamedDataSource<BaseTypeParameter> deleteModelToNamedDatabaseParameterNamedDataSource,
      BaseTypeParameter baseTypeParameter)
  {
    return deleteModelToNamedDatabaseParameterNamedDataSource
        .deleteModelToNamedDatabaseParameterNamed(baseTypeParameter);
  }

  Future<Response<BaseTypeParameter,BaseException>> _baseDeleteListModelToNamedDatabaseTIPUsingListModelForFBDS(
      DeleteListModelToNamedDatabaseTIPDataSource<X> deleteListModelToNamedDatabaseTIPDataSource,
      List<T> listModel,
      List<T> listModelForFBDS)
  async {
    if(_converterToBaseListModelNamedDatabase == null) {
      return throw LocalException(thisClass,constDeveloper,"ConverterToBaseListModelNamedDatabase null");
    }
    BaseListModel<T> listModelForClone = BaseListModel(_cloneListModel(listModel));
    if(_deleteListModelToNamedDatabaseFBDS == null) {
      return await deleteListModelToNamedDatabaseTIPDataSource
          .deleteListModelToNamedDatabaseTIP(_converterToBaseListModelNamedDatabase.toBaseListModelNamedDatabase(listModelForClone));
    }
    ResponseGenericBoolAndDomainException response = _deleteListModelToNamedDatabaseFBDS
        .deleteListModelToNamedDatabase(listModelForClone,_cloneListModel(listModelForFBDS));
    if(response.isExceptionResponse()) {
      return Response.exception(response.getException);
    }
    if(response.isCanceledOperationWithoutErrorAndSuccess()) {
      return Response.cancelOperationWithoutErrorAndSuccess(response.getCancelOperationWithoutErrorAndSuccess);
    }
    return await deleteListModelToNamedDatabaseTIPDataSource
        .deleteListModelToNamedDatabaseTIP(_converterToBaseListModelNamedDatabase.toBaseListModelNamedDatabase(listModelForClone));
  }

  Future<Response<BaseTypeParameter,BaseException>> _baseDeleteListModelToNamedDatabaseNP(
      DeleteListModelToNamedDatabaseNPDataSource deleteListModelToNamedDatabaseNPDataSource)
  {
    return deleteListModelToNamedDatabaseNPDataSource
        .deleteListModelToNamedDatabaseNP();
  }

  Future<Response<BaseTypeParameter,BaseException>> _baseDeleteListModelToNamedDatabaseParameterNamed(
      DeleteListModelToNamedDatabaseParameterNamedDataSource<BaseTypeParameter> deleteListModelToNamedDatabaseParameterNamedDataSource,
      BaseTypeParameter baseTypeParameter)
  {
    return deleteListModelToNamedDatabaseParameterNamedDataSource
        .deleteListModelToNamedDatabaseParameterNamed(baseTypeParameter);
  }

  Response<List<T>,BaseException> _baseRunIteratorForGetListModel(
      BaseTypeParameter<EnumIterator> baseTypeParameterForBaseIterator,
      Y listModel)
  {
    return listModel
        .runIteratorForGetListModel(thisClass,baseTypeParameterForBaseIterator, _mapEnumAndBaseIterator);
  }

  Response<bool, BaseException> _baseInsertModelToGetListModel(
      T model,
      Y listModel)
  {
    return listModel
        .insertModelToGetListModel(thisClass,cloneModel(model));
  }

  Response<bool, BaseException> _baseInsertListModelToGetListModel(
      List<T> listModelForInsert,
      Y listModel)
  {
    return listModel
        .insertListModelToGetListModel(thisClass,_cloneListModel(listModelForInsert));
  }

  Response<bool, BaseException> _baseUpdateModelToGetListModel(
      T model,
      Y listModel)
  {
    return listModel
        .updateModelToGetListModel(thisClass,cloneModel(model));
  }

  Response<bool, BaseException> _baseUpdateListModelToGetListModel(
      List<T> listModelForUpdate,
      Y listModel)
  {
    return listModel
        .updateListModelToGetListModel(thisClass,_cloneListModel(listModelForUpdate));
  }

  Response<bool, BaseException> _baseDeleteModelToGetListModel(
      T model,
      Y listModel)
  {
    return listModel
        .deleteModelToGetListModel(thisClass,cloneModel(model));
  }

  Response<bool, BaseException> _baseDeleteListModelToGetListModel(
      List<T> listModelForDelete,
      Y listModel)
  {
    return listModel
        .deleteListModelToGetListModel(thisClass,_cloneListModel(listModelForDelete));
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