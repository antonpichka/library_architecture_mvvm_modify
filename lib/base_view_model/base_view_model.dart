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
import 'package:library_architecture_mvvm_modify/base_model/base_list_model/base_list_model_domain.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_list_model/base_list_model_named_database.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_model_domain.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_model_named_database.dart';
import 'package:library_architecture_mvvm_modify/base_type_parameter/base_type_parameter.dart';
import 'package:library_architecture_mvvm_modify/base_view_model/enums_for_view_model/enum_base_list_model_domain_vm.dart';
import 'package:library_architecture_mvvm_modify/base_view_model/enums_for_view_model/enum_base_model_domain_vm.dart';
import 'package:library_architecture_mvvm_modify/base_view_model/enums_for_view_model/enum_base_type_parameter_for_getters_vm.dart';
import 'package:library_architecture_mvvm_modify/constants.dart';
import 'package:library_architecture_mvvm_modify/response.dart';
import 'package:library_architecture_mvvm_modify/response_generic_bool_and_domain_exception.dart';

typedef ItemCreator<S> = S Function();

abstract class BaseViewModel<T extends BaseModelDomain,Y extends BaseListModelDomain<T>,Z extends BaseModelNamedDatabase<T>,X extends BaseListModelNamedDatabase<Y,Z>,EnumIterator extends Enum> implements BaseDispose {
  /* Init Objects For Model */
  final List<EnumBaseModelDomainVM> _listEnumBaseModelDomainVM = List.empty(growable: true);
  final List<EnumBaseListModelDomainVM> _listEnumBaseListModelDomainVM = List.empty(growable: true);

  /* Init Default Model */
  final ItemCreator<T> _initCreatorBaseModelDomain;
  final ItemCreator<Y> _initCreatorBaseListModelDomain;

  /* Maps For Model And Stream And BaseTypeParameter */
  final Map<EnumBaseModelDomainVM,T> _mapEnumBaseModelDomainVMAndBaseModelDomain = {};
  final Map<EnumBaseListModelDomainVM,Y> _mapEnumBaseListModelDomainVMAndBaseListModelDomain = {};
  final Map<EnumBaseTypeParameterVM,BaseTypeParameter> _mapEnumBaseTypeParameterVMAndBaseTypeParameter = {};
  final Map<EnumBaseModelDomainVM,StreamController<T>> _mapEnumBaseModelDomainVMAndStreamControllerForBaseModelDomain = {};
  final Map<EnumBaseListModelDomainVM,StreamController<List<T>>> _mapEnumBaseListModelDomainVMAndStreamControllerForListBaseModelDomain = {};

  /* Maps And BaseTypeParameterForBaseIterator For Iterator */
  Map<EnumIterator,BaseIterator<T>> _mapEnumAndBaseIterator = {};
  BaseTypeParameter<EnumIterator> _enumTypeParameterForBaseIterator = BaseTypeParameter<EnumIterator>(null);

  /* Init DataSource */
  Object _dataSource;
  
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

  BaseViewModel(
      this._dataSource,
      this._initCreatorBaseModelDomain,
      this._initCreatorBaseListModelDomain,
      this._converterToBaseModelNamedDatabase,
      this._converterToBaseListModelNamedDatabase,
      this._insertModelToNamedDatabaseFBDS,
      this._insertListModelToNamedDatabaseFBDS,
      this._updateModelToNamedDatabaseFBDS,
      this._updateListModelToNamedDatabaseFBDS,
      this._deleteModelToNamedDatabaseFBDS,
      this._deleteListModelToNamedDatabaseFBDS,
      this._mapEnumAndBaseIterator,
      this._enumTypeParameterForBaseIterator,)
  {
    _initListEnumBaseModelDomainVMAndEnumBaseListModelDomainVM();
    _initMapEnumBaseModelDomainVMAndBaseModelDomain();
    _initMapEnumBaseModelDomainVMAndStreamControllerForBaseModelDomain();
    _initMapEnumBaseListModelDomainVMAndBaseListModelDomain();
    _initMapEnumBaseListModelDomainVMAndStreamControllerForListBaseModelDomain();
  }

  BaseViewModel.noIterator(
      this._dataSource,
      this._initCreatorBaseModelDomain,
      this._initCreatorBaseListModelDomain,
      this._converterToBaseModelNamedDatabase,
      this._converterToBaseListModelNamedDatabase,
      this._insertModelToNamedDatabaseFBDS,
      this._insertListModelToNamedDatabaseFBDS,
      this._updateModelToNamedDatabaseFBDS,
      this._updateListModelToNamedDatabaseFBDS,
      this._deleteModelToNamedDatabaseFBDS,
      this._deleteListModelToNamedDatabaseFBDS)
  {
    _initListEnumBaseModelDomainVMAndEnumBaseListModelDomainVM();
    _initMapEnumBaseModelDomainVMAndBaseModelDomain();
    _initMapEnumBaseModelDomainVMAndStreamControllerForBaseModelDomain();
    _initMapEnumBaseListModelDomainVMAndBaseListModelDomain();
    _initMapEnumBaseListModelDomainVMAndStreamControllerForListBaseModelDomain();
  }

  BaseViewModel.noDataSource(
      List<EnumBaseModelDomainVM> listEnumBaseModelDomainVM,
      List<EnumBaseListModelDomainVM> listEnumBaseListModelDomainVM,
      this._initCreatorBaseModelDomain,
      this._initCreatorBaseListModelDomain,
      this._mapEnumAndBaseIterator,
      this._enumTypeParameterForBaseIterator)
  {
    _initNoDataSourceListEnumBaseModelDomainVM(listEnumBaseModelDomainVM);
    _initNoDataSourceListEnumBaseListModelDomainVM(listEnumBaseListModelDomainVM);
    _initMapEnumBaseModelDomainVMAndBaseModelDomain();
    _initMapEnumBaseModelDomainVMAndStreamControllerForBaseModelDomain();
    _initMapEnumBaseListModelDomainVMAndBaseListModelDomain();
    _initMapEnumBaseListModelDomainVMAndStreamControllerForListBaseModelDomain();
  }

  BaseViewModel.noDataSourceAndNoIterator(
      List<EnumBaseModelDomainVM> listEnumBaseModelDomainVM,
      List<EnumBaseListModelDomainVM> listEnumBaseListModelDomainVM,
      this._initCreatorBaseModelDomain,
      this._initCreatorBaseListModelDomain)
  {
    _initNoDataSourceListEnumBaseModelDomainVM(listEnumBaseModelDomainVM);
    _initNoDataSourceListEnumBaseListModelDomainVM(listEnumBaseListModelDomainVM);
    _initMapEnumBaseModelDomainVMAndBaseModelDomain();
    _initMapEnumBaseModelDomainVMAndStreamControllerForBaseModelDomain();
    _initMapEnumBaseListModelDomainVMAndBaseListModelDomain();
    _initMapEnumBaseListModelDomainVMAndStreamControllerForListBaseModelDomain();
  }

  @override
  void dispose() {
    _disposeForMapEnumAndStreamController(_mapEnumBaseModelDomainVMAndStreamControllerForBaseModelDomain);
    _disposeForMapEnumAndStreamController(_mapEnumBaseListModelDomainVMAndStreamControllerForListBaseModelDomain);
  }

  /// Start Clone **/
  ///   Be sure to implement these methods as shown in the example below. The result of all date source methods depends on the implementation of that method.
  ///   Briefly, what this method does: Does not leave a reference to the object that will be sent to the data source and you can do whatever you want with
  ///   it without fear that it will change in the view model. Basically, this method appeared when FBDS (Function Before Data Source) appeared
  ///
  ///   Example Using:
  ///
  ///   UserDomain cloneModelDomain(UserDomain model) {
  ///     return UserDomain(model.uniqueId,model.name);
  ///   }
  ///
  @protected
  T cloneModelDomain(T modelDomain);

  List<T> _cloneListModelDomain(List<T> listModelDomain) {
    if(listModelDomain.isEmpty) {
      return [];
    }
    List<T> list  = List.empty(growable: true);
    list.addAll(listModelDomain);
    return list;
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
    if(_dataSource == null) {
      return throw LocalException(thisClass,constDeveloper,"DataSource equals null");
    }
    return _baseGetListModelFromNamedDatabaseNP(
        _dataSource as GetListModelFromNamedDatabaseNPDataSource<X>);
  }

  @protected
  @nonVirtual
  Future<Response<List<T>, BaseException>> getListModelFromNamedDatabaseNPAndSetListModel()
  async {
    if(_dataSource == null) {
      return throw LocalException(thisClass,constDeveloper,"DataSource equals null");
    }
    Response<List<T>, BaseException> result = await _baseGetListModelFromNamedDatabaseNP(_dataSource as GetListModelFromNamedDatabaseNPDataSource<X>);
    if(result.isExceptionResponse) {
      return Response.exception(result.getException);
    }
    if(result.isCanceledOperationWithoutErrorAndSuccess) {
      return Response.cancelOperationWithoutErrorAndSuccess(result.getCancelOperationWithoutErrorAndSuccess);
    }
    _getBaseListModel(EnumBaseListModelDomainVM.getListModelFromNamedDatabaseNP)
        .setParameterListModelDomain = result.getData;
    return Response.success(_getBaseListModel(EnumBaseListModelDomainVM.getListModelFromNamedDatabaseNP)
        .getListModelDomain);
  }
  // end getListNP 2

  // start getListParameterNamed 4
  @protected
  @nonVirtual
  Future<Response<List<T>, BaseException>> getListModelFromNamedDatabaseParameterNamed(
      BaseTypeParameter baseTypeParameter)
  {
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
    if(_dataSource == null) {
      return throw LocalException(thisClass,constDeveloper,"DataSource equals null");
    }
    return _baseGetListModelFromNamedDatabaseParameterNamed(
        _dataSource as  GetListModelFromNamedDatabaseParameterNamedDataSource<X,BaseTypeParameter>,
        getBaseTypeParameter(EnumBaseTypeParameterVM.getListModelFromNamedDatabaseParameterNamed));
  }

  @protected
  @nonVirtual
  Future<Response<List<T>, BaseException>> getListModelFromNamedDatabaseParameterNamedAndSetListModel(
      BaseTypeParameter baseTypeParameter)
  async {
    if(_dataSource == null) {
      return throw LocalException(thisClass,constDeveloper,"DataSource equals null");
    }
    Response<List<T>, BaseException> result = await _baseGetListModelFromNamedDatabaseParameterNamed(
        _dataSource as  GetListModelFromNamedDatabaseParameterNamedDataSource<X,BaseTypeParameter>,
        baseTypeParameter);
    if(result.isExceptionResponse) {
      return Response.exception(result.getException);
    }
    if(result.isCanceledOperationWithoutErrorAndSuccess) {
      return Response.cancelOperationWithoutErrorAndSuccess(result.getCancelOperationWithoutErrorAndSuccess);
    }
    _getBaseListModel(EnumBaseListModelDomainVM.getListModelFromNamedDatabaseParameterNamed)
        .setParameterListModelDomain = result.getData;
    return Response.success(_getBaseListModel(EnumBaseListModelDomainVM.getListModelFromNamedDatabaseParameterNamed)
        .getListModelDomain);
  }

  @protected
  @nonVirtual
  Future<Response<List<T>, BaseException>> getListModelFromNamedDatabaseParameterNamedAndSetListModelUsingStateBaseTypeParameter()
  async {
    if(_dataSource == null) {
      return throw LocalException(thisClass,constDeveloper,"DataSource equals null");
    }
    Response<List<T>, BaseException> result = await _baseGetListModelFromNamedDatabaseParameterNamed(
        _dataSource as  GetListModelFromNamedDatabaseParameterNamedDataSource<X,BaseTypeParameter>,
        getBaseTypeParameter(EnumBaseTypeParameterVM.getListModelFromNamedDatabaseParameterNamed));
    if(result.isExceptionResponse) {
      return Response.exception(result.getException);
    }
    if(result.isCanceledOperationWithoutErrorAndSuccess) {
      return Response.cancelOperationWithoutErrorAndSuccess(result.getCancelOperationWithoutErrorAndSuccess);
    }
    _getBaseListModel(EnumBaseListModelDomainVM.getListModelFromNamedDatabaseParameterNamed)
        .setParameterListModelDomain = result.getData;
    return Response.success(_getBaseListModel(EnumBaseListModelDomainVM.getListModelFromNamedDatabaseParameterNamed)
        .getListModelDomain);
  }
  // end getListParameterNamed 4

  // start getNP 2
  @protected
  @nonVirtual
  Future<Response<T, BaseException>> getModelFromNamedDatabaseNP()
  {
    if(_dataSource == null) {
      return throw LocalException(thisClass,constDeveloper,"DataSource equals null");
    }
    return _baseGetModelFromNamedDatabaseNP(
        _dataSource as GetModelFromNamedDatabaseNPDataSource<Z>);
  }

  @protected
  @nonVirtual
  Future<Response<T, BaseException>> getModelFromNamedDatabaseNPAndSetModel()
  async {
    if(_dataSource == null) {
      return throw LocalException(thisClass,constDeveloper,"DataSource equals null");
    }
    Response<T, BaseException> result = await _baseGetModelFromNamedDatabaseNP(
        _dataSource as GetModelFromNamedDatabaseNPDataSource<Z>);
    if(result.isExceptionResponse) {
      return Response.exception(result.getException);
    }
    if(result.isCanceledOperationWithoutErrorAndSuccess) {
      return Response.cancelOperationWithoutErrorAndSuccess(result.getCancelOperationWithoutErrorAndSuccess);
    }
    setModel(EnumBaseModelDomainVM.getModelFromNamedDatabaseNP,result.getData);
    return Response.success(getModel(EnumBaseModelDomainVM.getModelFromNamedDatabaseNP));
  }
  // end getNP 2

  // start getParameterNamed 4
  @protected
  @nonVirtual
  Future<Response<T, BaseException>> getModelFromNamedDatabaseParameterNamed(
      BaseTypeParameter baseTypeParameter)
  {
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
    if(_dataSource == null) {
      return throw LocalException(thisClass,constDeveloper,"DataSource equals null");
    }
    return _baseGetModelFromNamedDatabaseParameterNamed(
        _dataSource as GetModelFromNamedDatabaseParameterNamedDataSource<Z,BaseTypeParameter>,
        getBaseTypeParameter(EnumBaseTypeParameterVM.getModelFromNamedDatabaseParameterNamed));
  }

  @protected
  @nonVirtual
  Future<Response<T, BaseException>> getModelFromNamedDatabaseParameterNamedAndSetModel(
      BaseTypeParameter baseTypeParameter)
  async {
    if(_dataSource == null) {
      return throw LocalException(thisClass,constDeveloper,"DataSource equals null");
    }
    Response<T, BaseException> result = await _baseGetModelFromNamedDatabaseParameterNamed(
        _dataSource as GetModelFromNamedDatabaseParameterNamedDataSource<Z,BaseTypeParameter>,
        baseTypeParameter);
    if(result.isExceptionResponse) {
      return Response.exception(result.getException);
    }
    if(result.isCanceledOperationWithoutErrorAndSuccess) {
      return Response.cancelOperationWithoutErrorAndSuccess(result.getCancelOperationWithoutErrorAndSuccess);
    }
    setModel(EnumBaseModelDomainVM.getModelFromNamedDatabaseParameterNamed,result.getData);
    return Response.success(getModel(EnumBaseModelDomainVM.getModelFromNamedDatabaseParameterNamed));
  }

  @protected
  @nonVirtual
  Future<Response<T, BaseException>> getModelFromNamedDatabaseParameterNamedAndSetModelUsingStateBaseTypeParameter()
  async {
    if(_dataSource == null) {
      return throw LocalException(thisClass,constDeveloper,"DataSource equals null");
    }
    Response<T, BaseException> result = await _baseGetModelFromNamedDatabaseParameterNamed(
        _dataSource as GetModelFromNamedDatabaseParameterNamedDataSource<Z,BaseTypeParameter>,
        getBaseTypeParameter(EnumBaseTypeParameterVM.getModelFromNamedDatabaseParameterNamed));
    if(result.isExceptionResponse) {
      return Response.exception(result.getException);
    }
    if(result.isCanceledOperationWithoutErrorAndSuccess) {
      return Response.cancelOperationWithoutErrorAndSuccess(result.getCancelOperationWithoutErrorAndSuccess);
    }
    setModel(EnumBaseModelDomainVM.getModelFromNamedDatabaseParameterNamed,result.getData);
    return Response.success(getModel(EnumBaseModelDomainVM.getModelFromNamedDatabaseParameterNamed));
  }
  // end getParameterNamed 4

  // start insertTIP 4
  @protected
  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> insertModelToNamedDatabaseTIP(
      T modelDomain)
  {
    if(_dataSource == null) {
      return throw LocalException(thisClass,constDeveloper,"DataSource equals null");
    }
    return _baseInsertModelToNamedDatabaseTIPUsingListModelForFBDS(
        _dataSource as InsertModelToNamedDatabaseTIPDataSource<Z>,
        modelDomain,
        List.empty(growable: true));
  }

  @protected
  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> insertModelToNamedDatabaseTIPUsingStateModel()
  {
    if(_dataSource == null) {
      return throw LocalException(thisClass,constDeveloper,"DataSource equals null");
    }
    return _baseInsertModelToNamedDatabaseTIPUsingListModelForFBDS(
        _dataSource as InsertModelToNamedDatabaseTIPDataSource<Z>,
        getModel(EnumBaseModelDomainVM.insertModelToNamedDatabaseTIP),
        List.empty(growable: true));
  }

  @protected
  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> insertModelToNamedDatabaseTIPUsingListModelForFBDS(
      T modelDomain,
      List<T> listModelDomainForFBDS)
  {
    if(_dataSource == null) {
      return throw LocalException(thisClass,constDeveloper,"DataSource equals null");
    }
    return _baseInsertModelToNamedDatabaseTIPUsingListModelForFBDS(
        _dataSource as InsertModelToNamedDatabaseTIPDataSource<Z>,
        modelDomain,
        listModelDomainForFBDS);
  }

  @protected
  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> insertModelToNamedDatabaseTIPUsingStateModelAndListModelForFBDS(
      List<T> listModelDomainForFBDS)
  {
    if(_dataSource == null) {
      return throw LocalException(thisClass,constDeveloper,"DataSource equals null");
    }
    return _baseInsertModelToNamedDatabaseTIPUsingListModelForFBDS(
        _dataSource as InsertModelToNamedDatabaseTIPDataSource<Z>,
        getModel(EnumBaseModelDomainVM.insertModelToNamedDatabaseTIP),
        listModelDomainForFBDS);
  }
  // end insertTIP 4

  // start insertNP 1
  @protected
  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> insertModelToNamedDatabaseNP()
  {
    if(_dataSource == null) {
      return throw LocalException(thisClass,constDeveloper,"DataSource equals null");
    }
    return _baseInsertModelToNamedDatabaseNP(
        _dataSource as InsertModelToNamedDatabaseNPDataSource);
  }
  // end insertNP 1

  // start insertListTIP 4
  @protected
  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> insertListModelToNamedDatabaseTIP(
      List<T> listModelDomain)
  {
    if(_dataSource == null) {
      return throw LocalException(thisClass,constDeveloper,"DataSource equals null");
    }
    return _baseInsertListModelToNamedDatabaseTIPUsingListModelForFBDS(
        _dataSource as InsertListModelToNamedDatabaseTIPDataSource<X>,
        listModelDomain,
        List.empty(growable: true));
  }

  @protected
  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> insertListModelToNamedDatabaseTIPUsingStateListModel() {
    if(_dataSource == null) {
      return throw LocalException(thisClass,constDeveloper,"DataSource equals null");
    }
    return _baseInsertListModelToNamedDatabaseTIPUsingListModelForFBDS(
        _dataSource as InsertListModelToNamedDatabaseTIPDataSource<X>,
        getListModel(EnumBaseListModelDomainVM.insertListModelToNamedDatabaseTIP),
        List.empty(growable: true));
  }

  @protected
  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> insertListModelToNamedDatabaseTIPUsingListModelForFBDS(
      List<T> listModelDomain,
      List<T> listModelDomainForFBDS)
  {
    if(_dataSource == null) {
      return throw LocalException(thisClass,constDeveloper,"DataSource equals null");
    }
    return _baseInsertListModelToNamedDatabaseTIPUsingListModelForFBDS(
        _dataSource as InsertListModelToNamedDatabaseTIPDataSource<X>,
        listModelDomain,
        listModelDomainForFBDS);
  }

  @protected
  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> insertListModelToNamedDatabaseTIPUsingStateListModelAndListModelForFBDS(
      List<T> listModelDomainForFBDS)
  {
    if(_dataSource == null) {
      return throw LocalException(thisClass,constDeveloper,"DataSource equals null");
    }
    return _baseInsertListModelToNamedDatabaseTIPUsingListModelForFBDS(
        _dataSource as InsertListModelToNamedDatabaseTIPDataSource<X>,
        getListModel(EnumBaseListModelDomainVM.insertListModelToNamedDatabaseTIP),
        listModelDomainForFBDS);
  }
  // end insertListTIP 4

  // start insertListNP 1
  @protected
  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> insertListModelToNamedDatabaseNP()
  {
    if(_dataSource == null) {
      return throw LocalException(thisClass,constDeveloper,"DataSource equals null");
    }
    return _baseInsertListModelToNamedDatabaseNP(
        _dataSource as InsertListModelToNamedDatabaseNPDataSource);
  }
  // end insertListNP 1

  // start updateTIP 4
  @protected
  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> updateModelToNamedDatabaseTIP(
      T modelDomain)
  {
    if(_dataSource == null) {
      return throw LocalException(thisClass,constDeveloper,"DataSource equals null");
    }
    return _baseUpdateModelToNamedDatabaseTIPUsingListModelForFBDS(
        _dataSource as UpdateModelToNamedDatabaseTIPDataSource<Z>,
        modelDomain,
        List.empty(growable: true));
  }

  @protected
  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> updateModelToNamedDatabaseTIPUsingStateModel()
  {
    if(_dataSource == null) {
      return throw LocalException(thisClass,constDeveloper,"DataSource equals null");
    }
    return _baseUpdateModelToNamedDatabaseTIPUsingListModelForFBDS(
        _dataSource as UpdateModelToNamedDatabaseTIPDataSource<Z>,
        getModel(EnumBaseModelDomainVM.updateModelToNamedDatabaseTIP),
        List.empty(growable: true));
  }

  @protected
  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> updateModelToNamedDatabaseTIPUsingListModelForFBDS(
      T modelDomain,
      List<T> listModelDomainForFBDS)
  {
    if(_dataSource == null) {
      return throw LocalException(thisClass,constDeveloper,"DataSource equals null");
    }
    return _baseUpdateModelToNamedDatabaseTIPUsingListModelForFBDS(
        _dataSource as UpdateModelToNamedDatabaseTIPDataSource<Z>,
        modelDomain,
        listModelDomainForFBDS);
  }

  @protected
  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> updateModelToNamedDatabaseTIPUsingStateModelAndListModelForFBDS(
      List<T> listModelDomainForFBDS)
  {
    if(_dataSource == null) {
      return throw LocalException(thisClass,constDeveloper,"DataSource equals null");
    }
    return _baseUpdateModelToNamedDatabaseTIPUsingListModelForFBDS(
        _dataSource as UpdateModelToNamedDatabaseTIPDataSource<Z>,
        getModel(EnumBaseModelDomainVM.updateModelToNamedDatabaseTIP),
        listModelDomainForFBDS);
  }
  // end updateTIP 4

  // start updateNP 1
  @protected
  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> updateModelToNamedDatabaseNP()
  {
    if(_dataSource == null) {
      return throw LocalException(thisClass,constDeveloper,"DataSource equals null");
    }
    return _baseUpdateModelToNamedDatabaseNP(
        _dataSource as UpdateModelToNamedDatabaseNPDataSource);
  }
  // end updateNP 1

  // start updateParameterNamed 2
  @protected
  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> updateModelToNamedDatabaseParameterNamed(
      BaseTypeParameter baseTypeParameter)
  {
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
    if(_dataSource == null) {
      return throw LocalException(thisClass,constDeveloper,"DataSource equals null");
    }
    return _baseUpdateModelToNamedDatabaseParameterNamed(
        _dataSource as UpdateModelToNamedDatabaseParameterNamedDataSource<BaseTypeParameter>,
        getBaseTypeParameter(EnumBaseTypeParameterVM.updateModelToNamedDatabaseParameterNamed));
  }
  // end updateParameterNamed 2

  // start updateListTIP 4
  @protected
  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> updateListModelToNamedDatabaseTIP(
      List<T> listModelDomain)
  {
    if(_dataSource == null) {
      return throw LocalException(thisClass,constDeveloper,"DataSource equals null");
    }
    return _baseUpdateListModelToNamedDatabaseTIPUsingListModelForFBDS(
        _dataSource as UpdateListModelToNamedDatabaseTIPDataSource<X>,
        listModelDomain,
        List.empty(growable: true));
  }

  @protected
  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> updateListModelToNamedDatabaseTIPUsingStateListModel() {
    if(_dataSource == null) {
      return throw LocalException(thisClass,constDeveloper,"DataSource equals null");
    }
    return _baseUpdateListModelToNamedDatabaseTIPUsingListModelForFBDS(
        _dataSource as UpdateListModelToNamedDatabaseTIPDataSource<X>,
        getListModel(EnumBaseListModelDomainVM.updateListModelToNamedDatabaseTIP),
        List.empty(growable: true));
  }

  @protected
  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> updateListModelToNamedDatabaseTIPUsingListModelForFBDS(
      List<T> listModelDomain,
      List<T> listModelDomainForFBDS)
  {
    if(_dataSource == null) {
      return throw LocalException(thisClass,constDeveloper,"DataSource equals null");
    }
    return _baseUpdateListModelToNamedDatabaseTIPUsingListModelForFBDS(
        _dataSource as UpdateListModelToNamedDatabaseTIPDataSource<X>,
        listModelDomain,
        listModelDomainForFBDS);
  }

  @protected
  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> updateListModelToNamedDatabaseTIPUsingStateListModelAndListModelForFBDS(
      List<T> listModelDomainForFBDS)
  {
    if(_dataSource == null) {
      return throw LocalException(thisClass,constDeveloper,"DataSource equals null");
    }
    return _baseUpdateListModelToNamedDatabaseTIPUsingListModelForFBDS(
        _dataSource as UpdateListModelToNamedDatabaseTIPDataSource<X>,
        getListModel(EnumBaseListModelDomainVM.updateListModelToNamedDatabaseTIP),
        listModelDomainForFBDS);
  }
  // end updateListTIP 4

  // start updateListNP 1
  @protected
  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> updateListModelToNamedDatabaseNP()
  {
    if(_dataSource == null) {
      return throw LocalException(thisClass,constDeveloper,"DataSource equals null");
    }
    return _baseUpdateListModelToNamedDatabaseNP(
        _dataSource as UpdateListModelToNamedDatabaseNPDataSource);
  }
  // end updateListNP 1

  // start updateListParameterNamed 2
  @protected
  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> updateListModelToNamedDatabaseParameterNamed(
      BaseTypeParameter baseTypeParameter)
  {
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
    if(_dataSource == null) {
      return throw LocalException(thisClass,constDeveloper,"DataSource equals null");
    }
    return _baseUpdateListModelToNamedDatabaseParameterNamed(
        _dataSource as UpdateListModelToNamedDatabaseParameterNamedDataSource<BaseTypeParameter>,
        getBaseTypeParameter(EnumBaseTypeParameterVM.updateListModelToNamedDatabaseParameterNamed));
  }
  // end updateListParameterNamed 2

  // start deleteTIP 4
  @protected
  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> deleteModelToNamedDatabaseTIP(
      T modelDomain)
  {
    if(_dataSource == null) {
      return throw LocalException(thisClass,constDeveloper,"DataSource equals null");
    }
    return _baseDeleteModelToNamedDatabaseTIPUsingListModelForFBDS(
        _dataSource as DeleteModelToNamedDatabaseTIPDataSource<Z>,
        modelDomain,
        List.empty(growable: true));
  }

  @protected
  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> deleteModelToNamedDatabaseTIPUsingStateModel()
  {
    if(_dataSource == null) {
      return throw LocalException(thisClass,constDeveloper,"DataSource equals null");
    }
    return _baseDeleteModelToNamedDatabaseTIPUsingListModelForFBDS(
        _dataSource as DeleteModelToNamedDatabaseTIPDataSource<Z>,
        getModel(EnumBaseModelDomainVM.deleteModelToNamedDatabaseTIP),
        List.empty(growable: true));
  }

  @protected
  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> deleteModelToNamedDatabaseTIPUsingListModelForFBDS(
      T modelDomain,
      List<T> listModelDomainForFBDS)
  {
    if(_dataSource == null) {
      return throw LocalException(thisClass,constDeveloper,"DataSource equals null");
    }
    return _baseDeleteModelToNamedDatabaseTIPUsingListModelForFBDS(
        _dataSource as DeleteModelToNamedDatabaseTIPDataSource<Z>,
        modelDomain,
        listModelDomainForFBDS);
  }

  @protected
  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> deleteModelToNamedDatabaseTIPUsingStateModelAndListModelForFBDS(
      List<T> listModelDomainForFBDS)
  {
    if(_dataSource == null) {
      return throw LocalException(thisClass,constDeveloper,"DataSource equals null");
    }
    return _baseDeleteModelToNamedDatabaseTIPUsingListModelForFBDS(
        _dataSource as DeleteModelToNamedDatabaseTIPDataSource<Z>,
        getModel(EnumBaseModelDomainVM.deleteModelToNamedDatabaseTIP),
        listModelDomainForFBDS);
  }
  // end deleteTIP 4

  // start deleteNP 1
  @protected
  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> deleteModelToNamedDatabaseNP()
  {
    if(_dataSource == null) {
      return throw LocalException(thisClass,constDeveloper,"DataSource equals null");
    }
    return _baseDeleteModelToNamedDatabaseNP(
        _dataSource as DeleteModelToNamedDatabaseNPDataSource);
  }
  // end deleteNP 1

  // start deleteParameterNamed 2
  @protected
  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> deleteModelToNamedDatabaseParameterNamed(
      BaseTypeParameter baseTypeParameter)
  {
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
    if(_dataSource == null) {
      return throw LocalException(thisClass,constDeveloper,"DataSource equals null");
    }
    return _baseDeleteModelToNamedDatabaseParameterNamed(
        _dataSource as DeleteModelToNamedDatabaseParameterNamedDataSource<BaseTypeParameter>,
        getBaseTypeParameter(EnumBaseTypeParameterVM.deleteModelToNamedDatabaseParameterNamed));
  }
  // end deleteParameterNamed 2

  // start deleteListTIP 4
  @protected
  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> deleteListModelToNamedDatabaseTIP(
      List<T> listModelDomain)
  {
    if(_dataSource == null) {
      return throw LocalException(thisClass,constDeveloper,"DataSource equals null");
    }
    return _baseDeleteListModelToNamedDatabaseTIPUsingListModelForFBDS(
        _dataSource as DeleteListModelToNamedDatabaseTIPDataSource<X>,
        listModelDomain,
        List.empty(growable: true));
  }

  @protected
  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> deleteListModelToNamedDatabaseTIPUsingStateListModel() {
    if(_dataSource == null) {
      return throw LocalException(thisClass,constDeveloper,"DataSource equals null");
    }
    return _baseDeleteListModelToNamedDatabaseTIPUsingListModelForFBDS(
        _dataSource as DeleteListModelToNamedDatabaseTIPDataSource<X>,
        getListModel(EnumBaseListModelDomainVM.deleteListModelToNamedDatabaseTIP),
        List.empty(growable: true));
  }

  @protected
  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> deleteListModelToNamedDatabaseTIPUsingListModelForFBDS(
      List<T> listModelDomain,
      List<T> listModelDomainForFBDS)
  {
    if(_dataSource == null) {
      return throw LocalException(thisClass,constDeveloper,"DataSource equals null");
    }
    return _baseDeleteListModelToNamedDatabaseTIPUsingListModelForFBDS(
        _dataSource as DeleteListModelToNamedDatabaseTIPDataSource<X>,
        listModelDomain,
        listModelDomainForFBDS);
  }

  @protected
  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> deleteListModelToNamedDatabaseTIPUsingStateListModelAndListModelForFBDS(
      List<T> listModelDomainForFBDS)
  {
    if(_dataSource == null) {
      return throw LocalException(thisClass,constDeveloper,"DataSource equals null");
    }
    return _baseDeleteListModelToNamedDatabaseTIPUsingListModelForFBDS(
        _dataSource as DeleteListModelToNamedDatabaseTIPDataSource<X>,
        getListModel(EnumBaseListModelDomainVM.deleteListModelToNamedDatabaseTIP),
        listModelDomainForFBDS);
  }
  // end deleteListTIP 4

  // start deleteListNP 1
  @protected
  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> deleteListModelToNamedDatabaseNP()
  {
    if(_dataSource == null) {
      return throw LocalException(thisClass,constDeveloper,"DataSource equals null");
    }
    return _baseDeleteListModelToNamedDatabaseNP(
        _dataSource as DeleteListModelToNamedDatabaseNPDataSource);
  }
  // end deleteListNP 1

  // start deleteListParameterNamed 2
  @protected
  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> deleteListModelToNamedDatabaseParameterNamed(
      BaseTypeParameter baseTypeParameter)
  {
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
    if(_dataSource == null) {
      return throw LocalException(thisClass,constDeveloper,"DataSource equals null");
    }
    return _baseDeleteListModelToNamedDatabaseParameterNamed(
        _dataSource as DeleteListModelToNamedDatabaseParameterNamedDataSource<BaseTypeParameter>,
        getBaseTypeParameter(EnumBaseTypeParameterVM.deleteListModelToNamedDatabaseParameterNamed));
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
        _getBaseListModel(EnumBaseListModelDomainVM.getListModelFromNamedDatabaseParameterNamed));
  }

  @protected
  @nonVirtual
  Response<List<T>, BaseException> runIteratorForGetListModelParameterNamedUsingStateEnumTypeParameterForBaseIterator() {
    return _baseRunIteratorForGetListModel(getEnumTypeParameterForBaseIterator,
        _getBaseListModel(EnumBaseListModelDomainVM.getListModelFromNamedDatabaseParameterNamed));
  }
  // end runIteratorForGetListParameterNamed 2

  // start insertToGetListParameterNamed 2
  @protected
  @nonVirtual
  Response<bool, BaseException> insertModelToGetListModelParameterNamed(T modelDomain) {
    return _baseInsertModelToGetListModel(modelDomain,
        _getBaseListModel(EnumBaseListModelDomainVM.getListModelFromNamedDatabaseParameterNamed));
  }

  @protected
  @nonVirtual
  Response<bool, BaseException> insertModelToGetListModelParameterNamedUsingStateModel() {
    return _baseInsertModelToGetListModel(getModel(EnumBaseModelDomainVM.insertModelToNamedDatabaseTIP),
        _getBaseListModel(EnumBaseListModelDomainVM.getListModelFromNamedDatabaseParameterNamed));
  }
  // end insertToGetListParameterNamed 2

  // start insertListToGetListParameterNamed 2
  @protected
  @nonVirtual
  Response<bool, BaseException> insertListModelToGetListModelParameterNamed(List<T> listModelDomain) {
    return _baseInsertListModelToGetListModel(listModelDomain,
        _getBaseListModel(EnumBaseListModelDomainVM.getListModelFromNamedDatabaseParameterNamed));
  }

  @protected
  @nonVirtual
  Response<bool, BaseException> insertListModelToGetListModelParameterNamedUsingStateListModel() {
    return _baseInsertListModelToGetListModel(getListModel(EnumBaseListModelDomainVM.insertListModelToNamedDatabaseTIP),
        _getBaseListModel(EnumBaseListModelDomainVM.getListModelFromNamedDatabaseParameterNamed));
  }
  // end insertListToGetListParameterNamed 2

  // start updateToGetListParameterNamed 2
  @protected
  @nonVirtual
  Response<bool, BaseException> updateModelToGetListModelParameterNamed(T modelDomain) {
    return _baseUpdateModelToGetListModel(modelDomain,
        _getBaseListModel(EnumBaseListModelDomainVM.getListModelFromNamedDatabaseParameterNamed));
  }

  @protected
  @nonVirtual
  Response<bool, BaseException> updateModelToGetListModelParameterNamedUsingStateModel() {
    return _baseUpdateModelToGetListModel(getModel(EnumBaseModelDomainVM.updateModelToNamedDatabaseTIP),
        _getBaseListModel(EnumBaseListModelDomainVM.getListModelFromNamedDatabaseParameterNamed));
  }
  // start updateToGetListParameterNamed 2

  // start updateListToGetListParameterNamed 2
  @protected
  @nonVirtual
  Response<bool, BaseException> updateListModelToGetListModelParameterNamed(List<T> listModelDomain) {
    return _baseUpdateListModelToGetListModel(listModelDomain,
        _getBaseListModel(EnumBaseListModelDomainVM.getListModelFromNamedDatabaseParameterNamed));
  }

  @protected
  @nonVirtual
  Response<bool, BaseException> updateListModelToGetListModelParameterNamedUsingStateListModel() {
    return _baseUpdateListModelToGetListModel(getListModel(EnumBaseListModelDomainVM.updateListModelToNamedDatabaseTIP),
        _getBaseListModel(EnumBaseListModelDomainVM.getListModelFromNamedDatabaseParameterNamed));
  }
  // end updateListToGetListParameterNamed 2

  // start deleteToGetListParameterNamed 2
  @protected
  @nonVirtual
  Response<bool, BaseException> deleteModelToGetListModelParameterNamed(T modelDomain) {
    return _baseDeleteModelToGetListModel(modelDomain,
        _getBaseListModel(EnumBaseListModelDomainVM.getListModelFromNamedDatabaseParameterNamed));
  }

  @protected
  @nonVirtual
  Response<bool, BaseException> deleteModelToGetListModelParameterNamedUsingStateModel() {
    return _baseDeleteModelToGetListModel(getModel(EnumBaseModelDomainVM.deleteModelToNamedDatabaseTIP),
        _getBaseListModel(EnumBaseListModelDomainVM.getListModelFromNamedDatabaseParameterNamed));
  }
  // end deleteToGetListParameterNamed 2

  // start deleteListToGetListParameterNamed 2
  @protected
  @nonVirtual
  Response<bool, BaseException> deleteListModelToGetListModelParameterNamed(List<T> listModelDomain) {
    return _baseDeleteListModelToGetListModel(listModelDomain,
        _getBaseListModel(EnumBaseListModelDomainVM.getListModelFromNamedDatabaseParameterNamed));
  }

  @protected
  @nonVirtual
  Response<bool, BaseException> deleteListModelToGetListModelParameterNamedUsingStateListModel() {
    return _baseDeleteListModelToGetListModel(getListModel(EnumBaseListModelDomainVM.deleteListModelToNamedDatabaseTIP),
        _getBaseListModel(EnumBaseListModelDomainVM.getListModelFromNamedDatabaseParameterNamed));
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
        _getBaseListModel(EnumBaseListModelDomainVM.getListModelFromNamedDatabaseNP));
  }

  @protected
  @nonVirtual
  Response<List<T>, BaseException> runIteratorForGetListModelNPUsingStateEnumTypeParameterForBaseIterator() {
    return _baseRunIteratorForGetListModel(getEnumTypeParameterForBaseIterator,
        _getBaseListModel(EnumBaseListModelDomainVM.getListModelFromNamedDatabaseNP));
  }
  // end runIteratorForGetListNP 2

  // start insertToGetListNP 2
  @protected
  @nonVirtual
  Response<bool, BaseException> insertModelToGetListModelNP(T modelDomain) {
    return _baseInsertModelToGetListModel(modelDomain,
        _getBaseListModel(EnumBaseListModelDomainVM.getListModelFromNamedDatabaseNP));
  }

  @protected
  @nonVirtual
  Response<bool, BaseException> insertModelToGetListModelNPUsingStateModel() {
    return _baseInsertModelToGetListModel(getModel(EnumBaseModelDomainVM.insertModelToNamedDatabaseTIP),
        _getBaseListModel(EnumBaseListModelDomainVM.getListModelFromNamedDatabaseNP));
  }
  // end insertToGetListNP 2

  // start insertListToGetListNP 2
  @protected
  @nonVirtual
  Response<bool, BaseException> insertListModelToGetListModelNP(List<T> listModelDomain) {
    return _baseInsertListModelToGetListModel(listModelDomain,
        _getBaseListModel(EnumBaseListModelDomainVM.getListModelFromNamedDatabaseNP));
  }

  @protected
  @nonVirtual
  Response<bool, BaseException> insertListModelToGetListModelNPUsingStateListModel() {
    return _baseInsertListModelToGetListModel(getListModel(EnumBaseListModelDomainVM.insertListModelToNamedDatabaseTIP),
        _getBaseListModel(EnumBaseListModelDomainVM.getListModelFromNamedDatabaseNP));
  }
  // end insertListToGetListNP 2

  // start updateToGetListNP 2
  @protected
  @nonVirtual
  Response<bool, BaseException> updateModelToGetListModelNP(T modelDomain) {
    return _baseUpdateModelToGetListModel(modelDomain,
        _getBaseListModel(EnumBaseListModelDomainVM.getListModelFromNamedDatabaseNP));
  }

  @protected
  @nonVirtual
  Response<bool, BaseException> updateModelToGetListModelNPUsingStateModel() {
    return _baseUpdateModelToGetListModel(getModel(EnumBaseModelDomainVM.updateModelToNamedDatabaseTIP),
        _getBaseListModel(EnumBaseListModelDomainVM.getListModelFromNamedDatabaseNP));
  }
  // start updateToGetListNP 2

  // start updateListToGetListNP 2
  @protected
  @nonVirtual
  Response<bool, BaseException> updateListModelToGetListModelNP(List<T> listModelDomain) {
    return _baseUpdateListModelToGetListModel(listModelDomain,
        _getBaseListModel(EnumBaseListModelDomainVM.getListModelFromNamedDatabaseNP));
  }

  @protected
  @nonVirtual
  Response<bool, BaseException> updateListModelToGetListModelNPUsingStateListModel() {
    return _baseUpdateListModelToGetListModel(getListModel(EnumBaseListModelDomainVM.updateListModelToNamedDatabaseTIP),
        _getBaseListModel(EnumBaseListModelDomainVM.getListModelFromNamedDatabaseNP));
  }
  // end updateListToGetListNP 2

  // start deleteToGetListNP 2
  @protected
  @nonVirtual
  Response<bool, BaseException> deleteModelToGetListModelNP(T modelDomain) {
    return _baseDeleteModelToGetListModel(modelDomain,
        _getBaseListModel(EnumBaseListModelDomainVM.getListModelFromNamedDatabaseNP));
  }

  @protected
  @nonVirtual
  Response<bool, BaseException> deleteModelToGetListModelNPUsingStateModel() {
    return _baseDeleteModelToGetListModel(getModel(EnumBaseModelDomainVM.deleteModelToNamedDatabaseTIP),
        _getBaseListModel(EnumBaseListModelDomainVM.getListModelFromNamedDatabaseNP));
  }
  // end deleteToGetListNP 2

  // start deleteListToGetListNP 2
  @protected
  @nonVirtual
  Response<bool, BaseException> deleteListModelToGetListModelNP(List<T> listModelDomain) {
    return _baseDeleteListModelToGetListModel(listModelDomain,
        _getBaseListModel(EnumBaseListModelDomainVM.getListModelFromNamedDatabaseNP));
  }

  @protected
  @nonVirtual
  Response<bool, BaseException> deleteListModelToGetListModelNPUsingStateListModel() {
    return _baseDeleteListModelToGetListModel(getListModel(EnumBaseListModelDomainVM.deleteListModelToNamedDatabaseTIP),
        _getBaseListModel(EnumBaseListModelDomainVM.getListModelFromNamedDatabaseNP));
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
  set setEnumTypeParameterForBaseIterator(BaseTypeParameter<EnumIterator> enumTypeParameterForBaseIterator) {
    _enumTypeParameterForBaseIterator = enumTypeParameterForBaseIterator;
  }

  @protected
  @nonVirtual
  BaseTypeParameter getBaseTypeParameter(EnumBaseTypeParameterVM operation) {
    if(!_mapEnumBaseTypeParameterVMAndBaseTypeParameter.containsKey(operation)) {
      return throw LocalException(thisClass,constDeveloper,"$operation not found");
    }
    return _mapEnumBaseTypeParameterVMAndBaseTypeParameter[operation];
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
  /// End Base/EnumTypeParameter **/

  /// Start Model **/
  @protected
  @nonVirtual
  T getModel(EnumBaseModelDomainVM operation) {
    if(!_mapEnumBaseModelDomainVMAndBaseModelDomain.containsKey(operation)) {
      return throw LocalException(thisClass,constDeveloper,"$operation not found");
    }
    return _mapEnumBaseModelDomainVMAndBaseModelDomain[operation];
  }

  @protected
  @nonVirtual
  void setModel(EnumBaseModelDomainVM operation,T newModel) {
    if(!_mapEnumBaseModelDomainVMAndBaseModelDomain.containsKey(operation)) {
      throw LocalException(thisClass,constDeveloper,"$operation not found");
    }
    _mapEnumBaseModelDomainVMAndBaseModelDomain[operation] = newModel;
  }

  @protected
  @nonVirtual
  Future<T> getFutureModel(EnumBaseModelDomainVM operation) async {
    if(!_mapEnumBaseModelDomainVMAndBaseModelDomain.containsKey(operation)) {
      return throw LocalException(thisClass,constDeveloper,"$operation not found");
    }
    return _mapEnumBaseModelDomainVMAndBaseModelDomain[operation];
  }

  @protected
  @nonVirtual
  Stream<T> getStreamModel(EnumBaseModelDomainVM operation) {
    if(!_mapEnumBaseModelDomainVMAndStreamControllerForBaseModelDomain.containsKey(operation)) {
      return throw LocalException(thisClass,constDeveloper,"$operation not found");
    }
    return _mapEnumBaseModelDomainVMAndStreamControllerForBaseModelDomain[operation].stream;
  }

  @protected
  @nonVirtual
  void notifyStreamModel(EnumBaseModelDomainVM operation) {
    if(!_mapEnumBaseModelDomainVMAndStreamControllerForBaseModelDomain.containsKey(operation) || !_mapEnumBaseModelDomainVMAndBaseModelDomain.containsKey(operation)) {
      throw LocalException(thisClass,constDeveloper,"$operation not found");
    }
    _mapEnumBaseModelDomainVMAndStreamControllerForBaseModelDomain[operation]
        .add(_mapEnumBaseModelDomainVMAndBaseModelDomain[operation]);
  }
  /// End Model **/
  
  /// Start ListModel **/
  @protected
  @nonVirtual
  List<T> getListModel(EnumBaseListModelDomainVM operation)  {
    if(!_mapEnumBaseListModelDomainVMAndBaseListModelDomain.containsKey(operation)) {
      return throw LocalException(thisClass,constDeveloper,"$operation not found");
    }
    return _mapEnumBaseListModelDomainVMAndBaseListModelDomain[operation].getListModelDomain;
  }

  @protected
  @nonVirtual
  void setListModel(EnumBaseListModelDomainVM operation,List<T> newListModel) {
    if(!_mapEnumBaseListModelDomainVMAndBaseListModelDomain.containsKey(operation)) {
      throw LocalException(thisClass,constDeveloper,"$operation not found");
    }
    _mapEnumBaseListModelDomainVMAndBaseListModelDomain[operation].setParameterListModelDomain = newListModel;
  }

  @protected
  @nonVirtual
  Future<List<T>> getFutureListModel(EnumBaseListModelDomainVM operation) async {
    if(!_mapEnumBaseListModelDomainVMAndBaseListModelDomain.containsKey(operation)) {
      return throw LocalException(thisClass,constDeveloper,"$operation not found");
    }
    return _mapEnumBaseListModelDomainVMAndBaseListModelDomain[operation].getListModelDomain;
  }

  @protected
  @nonVirtual
  Stream<List<T>> getStreamListModel(EnumBaseListModelDomainVM operation) {
    if(!_mapEnumBaseListModelDomainVMAndStreamControllerForListBaseModelDomain.containsKey(operation)) {
      return throw LocalException(thisClass,constDeveloper,"$operation not found");
    }
    return _mapEnumBaseListModelDomainVMAndStreamControllerForListBaseModelDomain[operation].stream;
  }

  @protected
  @nonVirtual
  void notifyStreamListModel(EnumBaseListModelDomainVM operation) {
    if(!_mapEnumBaseListModelDomainVMAndStreamControllerForListBaseModelDomain.containsKey(operation) || !_mapEnumBaseListModelDomainVMAndBaseListModelDomain.containsKey(operation)) {
      throw LocalException(thisClass,constDeveloper,"$operation not found");
    }
    _mapEnumBaseListModelDomainVMAndStreamControllerForListBaseModelDomain[operation]
        .add(_mapEnumBaseListModelDomainVMAndBaseListModelDomain[operation].getListModelDomain);
  }
  /// End ListModel **/

  /// Start BaseListModel **/
  Y _getBaseListModel(EnumBaseListModelDomainVM operation) {
    if(!_mapEnumBaseListModelDomainVMAndBaseListModelDomain.containsKey(operation)) {
      return throw LocalException(thisClass,constDeveloper,"$operation not found");
    }
    return _mapEnumBaseListModelDomainVMAndBaseListModelDomain[operation];
  }
  /// End BaseListModel **/

  void _initListEnumBaseModelDomainVMAndEnumBaseListModelDomainVM() {
    if(_dataSource is InsertModelToNamedDatabaseTIPDataSource<Z>) {
      _listEnumBaseModelDomainVM.add(EnumBaseModelDomainVM.insertModelToNamedDatabaseTIP);
    }
    if(_dataSource is UpdateModelToNamedDatabaseTIPDataSource<Z>) {
      _listEnumBaseModelDomainVM.add(EnumBaseModelDomainVM.updateModelToNamedDatabaseTIP);
    }
    if(_dataSource is DeleteModelToNamedDatabaseTIPDataSource<Z>) {
      _listEnumBaseModelDomainVM.add(EnumBaseModelDomainVM.deleteModelToNamedDatabaseTIP);
    }
    if(_dataSource is GetModelFromNamedDatabaseParameterNamedDataSource<Z,BaseTypeParameter>) {
      _listEnumBaseModelDomainVM.add(EnumBaseModelDomainVM.getModelFromNamedDatabaseParameterNamed);
    }
    if(_dataSource is GetModelFromNamedDatabaseNPDataSource<Z>) {
      _listEnumBaseModelDomainVM.add(EnumBaseModelDomainVM.getModelFromNamedDatabaseNP);
    }
    if(_dataSource is InsertListModelToNamedDatabaseTIPDataSource<X>) {
      _listEnumBaseListModelDomainVM.add(EnumBaseListModelDomainVM.insertListModelToNamedDatabaseTIP);
    }
    if(_dataSource is UpdateListModelToNamedDatabaseTIPDataSource<X>) {
      _listEnumBaseListModelDomainVM.add(EnumBaseListModelDomainVM.updateListModelToNamedDatabaseTIP);
    }
    if(_dataSource is DeleteListModelToNamedDatabaseTIPDataSource<X>) {
      _listEnumBaseListModelDomainVM.add(EnumBaseListModelDomainVM.deleteListModelToNamedDatabaseTIP);
    }
    if(_dataSource is GetListModelFromNamedDatabaseParameterNamedDataSource<X,BaseTypeParameter>) {
      _listEnumBaseListModelDomainVM.add(EnumBaseListModelDomainVM.getListModelFromNamedDatabaseParameterNamed);
    }
    if(_dataSource is GetListModelFromNamedDatabaseNPDataSource<X>) {
      _listEnumBaseListModelDomainVM.add(EnumBaseListModelDomainVM.getListModelFromNamedDatabaseNP);
    }
  }

  void _initNoDataSourceListEnumBaseModelDomainVM(
      List<EnumBaseModelDomainVM> listEnumBaseModelDomainVM,)
  {
    if(listEnumBaseModelDomainVM == null) {
      return;
    }
    if(listEnumBaseModelDomainVM.isEmpty) {
      return;
    }
    _listEnumBaseModelDomainVM.addAll(listEnumBaseModelDomainVM);
  }

  void _initNoDataSourceListEnumBaseListModelDomainVM(
      List<EnumBaseListModelDomainVM> listEnumBaseListModelDomainVM)
  {
    if(listEnumBaseListModelDomainVM == null) {
      return;
    }
    if(listEnumBaseListModelDomainVM.isEmpty) {
      return;
    }
    _listEnumBaseListModelDomainVM.addAll(listEnumBaseListModelDomainVM);
  }
  
  void _initMapEnumBaseModelDomainVMAndBaseModelDomain() {
    if(_listEnumBaseModelDomainVM.isEmpty) {
      return;
    }
    if(_initCreatorBaseModelDomain == null) {
      return;
    }
    for(EnumBaseModelDomainVM enumBaseModelDomainVM in _listEnumBaseModelDomainVM) {
      _mapEnumBaseModelDomainVMAndBaseModelDomain[enumBaseModelDomainVM] = _initCreatorBaseModelDomain();
    }
  }

  void _initMapEnumBaseModelDomainVMAndStreamControllerForBaseModelDomain() {
    if(_listEnumBaseModelDomainVM.isEmpty) {
      return;
    }
    for(EnumBaseModelDomainVM enumBaseModelDomainVM in _listEnumBaseModelDomainVM) {
      _mapEnumBaseModelDomainVMAndStreamControllerForBaseModelDomain[enumBaseModelDomainVM] = StreamController<T>.broadcast();
    }
  }

  void _initMapEnumBaseListModelDomainVMAndBaseListModelDomain() {
    if(_listEnumBaseListModelDomainVM.isEmpty) {
      return;
    }
    if(_initCreatorBaseListModelDomain == null) {
      return;
    }
    for(EnumBaseListModelDomainVM enumBaseListModelDomainVM in _listEnumBaseListModelDomainVM) {
      _mapEnumBaseListModelDomainVMAndBaseListModelDomain[enumBaseListModelDomainVM] = _initCreatorBaseListModelDomain();
    }
  }

  void _initMapEnumBaseListModelDomainVMAndStreamControllerForListBaseModelDomain() {
    if(_listEnumBaseListModelDomainVM.isEmpty) {
      return;
    }
    for(EnumBaseListModelDomainVM enumBaseListModelDomainVM in _listEnumBaseListModelDomainVM) {
      _mapEnumBaseListModelDomainVMAndStreamControllerForListBaseModelDomain[enumBaseListModelDomainVM] = StreamController<List<T>>.broadcast();
    }
  }

  Future<Response<List<T>,BaseException>> _baseGetListModelFromNamedDatabaseNP(
      GetListModelFromNamedDatabaseNPDataSource<X> getListModelFromNamedDatabaseNPDataSource)
  async {
    Response<X,BaseException> response = await getListModelFromNamedDatabaseNPDataSource
        .getListModelFromNamedDatabaseNP();
    if(response.isExceptionResponse) {
      return Response.exception(response.getException);
    }
    if(response.isCanceledOperationWithoutErrorAndSuccess) {
      return Response.cancelOperationWithoutErrorAndSuccess(response.getCancelOperationWithoutErrorAndSuccess);
    }
    return Response.success(response
        .getData
        .toBaseListModelDomain()
        .getListModelDomain);
  }

  Future<Response<List<T>,BaseException>> _baseGetListModelFromNamedDatabaseParameterNamed(
      GetListModelFromNamedDatabaseParameterNamedDataSource<X,BaseTypeParameter> getListModelFromNamedDatabaseParameterNamedDataSource,
      BaseTypeParameter baseTypeParameter)
  async {
    Response<X,BaseException> response = await getListModelFromNamedDatabaseParameterNamedDataSource
        .getListModelFromNamedDatabaseParameterNamed(baseTypeParameter);
    if(response.isExceptionResponse) {
      return Response.exception(response.getException);
    }
    if(response.isCanceledOperationWithoutErrorAndSuccess) {
      return Response.cancelOperationWithoutErrorAndSuccess(response.getCancelOperationWithoutErrorAndSuccess);
    }
    return Response.success(response
        .getData
        .toBaseListModelDomain()
        .getListModelDomain);
  }

  Future<Response<T,BaseException>> _baseGetModelFromNamedDatabaseNP(
      GetModelFromNamedDatabaseNPDataSource<Z> getModelFromNamedDatabaseNPDataSource)
  async {
    Response<Z,BaseException> response = await getModelFromNamedDatabaseNPDataSource
        .getModelFromNamedDatabaseNP();
    if(response.isExceptionResponse) {
      return Response.exception(response.getException);
    }
    if(response.isCanceledOperationWithoutErrorAndSuccess) {
      return Response.cancelOperationWithoutErrorAndSuccess(response.getCancelOperationWithoutErrorAndSuccess);
    }
    return Response.success(response
        .getData
        .toBaseModelDomain());
  }

  Future<Response<T,BaseException>> _baseGetModelFromNamedDatabaseParameterNamed(
      GetModelFromNamedDatabaseParameterNamedDataSource<Z,BaseTypeParameter> getModelFromNamedDatabaseParameterNamedDataSource,
      BaseTypeParameter baseTypeParameter)
  async {
    Response<Z,BaseException> response = await getModelFromNamedDatabaseParameterNamedDataSource
        .getModelFromNamedDatabaseParameterNamed(baseTypeParameter);
    if(response.isExceptionResponse) {
      return Response.exception(response.getException);
    }
    if(response.isCanceledOperationWithoutErrorAndSuccess) {
      return Response.cancelOperationWithoutErrorAndSuccess(response.getCancelOperationWithoutErrorAndSuccess);
    }
    return Response.success(response
        .getData
        .toBaseModelDomain());
  }

  Future<Response<BaseTypeParameter,BaseException>> _baseInsertModelToNamedDatabaseTIPUsingListModelForFBDS(
      InsertModelToNamedDatabaseTIPDataSource<Z> insertModelToNamedDatabaseTIPDataSource,
      T newModelDomain,
      List<T> newListModelDomainForFBDS)
  async {
    if(_converterToBaseModelNamedDatabase == null) {
      return throw LocalException(thisClass,constDeveloper,"ConverterToBaseModelNamedDatabase null");
    }
    T modelDomain = cloneModelDomain(newModelDomain);
    if(_insertModelToNamedDatabaseFBDS == null) {
      return await insertModelToNamedDatabaseTIPDataSource
          .insertModelToNamedDatabaseTIP(_converterToBaseModelNamedDatabase.toBaseModelNamedDatabase(modelDomain));
    }
    ResponseGenericBoolAndDomainException response = _insertModelToNamedDatabaseFBDS
        .insertModelToNamedDatabase(modelDomain,_cloneListModelDomain(newListModelDomainForFBDS));
    if(response.isExceptionResponse) {
      return Response.exception(response.getException);
    }
    if(response.isCanceledOperationWithoutErrorAndSuccess) {
      return Response.cancelOperationWithoutErrorAndSuccess(response.getCancelOperationWithoutErrorAndSuccess);
    }
    return await insertModelToNamedDatabaseTIPDataSource
        .insertModelToNamedDatabaseTIP(_converterToBaseModelNamedDatabase.toBaseModelNamedDatabase(modelDomain));
  }

  Future<Response<BaseTypeParameter,BaseException>> _baseInsertModelToNamedDatabaseNP(
      InsertModelToNamedDatabaseNPDataSource insertModelToNamedDatabaseNPDataSource)
  async {
    return await insertModelToNamedDatabaseNPDataSource
        .insertModelToNamedDatabaseNP();
  }

  Future<Response<BaseTypeParameter,BaseException>> _baseInsertListModelToNamedDatabaseTIPUsingListModelForFBDS(
      InsertListModelToNamedDatabaseTIPDataSource<X> insertListModelToNamedDatabaseTIPDataSource,
      List<T> newListModelDomain,
      List<T> newListModelDomainForFBDS)
  async {
    if(_converterToBaseListModelNamedDatabase == null) {
      return throw LocalException(thisClass,constDeveloper,"ConverterToBaseListModelNamedDatabase null");
    }
    BaseListModelDomain<T> baseListModelDomain = BaseListModelDomain(_cloneListModelDomain(newListModelDomain));
    if(_insertListModelToNamedDatabaseFBDS == null) {
      return await insertListModelToNamedDatabaseTIPDataSource
          .insertListModelToNamedDatabaseTIP(_converterToBaseListModelNamedDatabase.toBaseListModelNamedDatabase(baseListModelDomain));
    }
    ResponseGenericBoolAndDomainException response = _insertListModelToNamedDatabaseFBDS
        .insertListModelToNamedDatabase(baseListModelDomain,_cloneListModelDomain(newListModelDomainForFBDS));
    if(response.isExceptionResponse) {
      return Response.exception(response.getException);
    }
    if(response.isCanceledOperationWithoutErrorAndSuccess) {
      return Response.cancelOperationWithoutErrorAndSuccess(response.getCancelOperationWithoutErrorAndSuccess);
    }
    return await insertListModelToNamedDatabaseTIPDataSource
        .insertListModelToNamedDatabaseTIP(_converterToBaseListModelNamedDatabase.toBaseListModelNamedDatabase(baseListModelDomain));
  }

  Future<Response<BaseTypeParameter,BaseException>> _baseInsertListModelToNamedDatabaseNP(
      InsertListModelToNamedDatabaseNPDataSource insertListModelToNamedDatabaseNPDataSource)
  async {
    return await insertListModelToNamedDatabaseNPDataSource
        .insertListModelToNamedDatabaseNP();
  }

  Future<Response<BaseTypeParameter,BaseException>> _baseUpdateModelToNamedDatabaseTIPUsingListModelForFBDS(
      UpdateModelToNamedDatabaseTIPDataSource<Z> updateModelToNamedDatabaseTIPDataSource,
      T newModelDomain,
      List<T> newListModelDomainForFBDS)
  async {
    if(_converterToBaseModelNamedDatabase == null) {
      return throw LocalException(thisClass,constDeveloper,"ConverterToBaseModelNamedDatabase null");
    }
    T modelDomain = cloneModelDomain(newModelDomain);
    if(_updateModelToNamedDatabaseFBDS == null) {
      return await updateModelToNamedDatabaseTIPDataSource
          .updateModelToNamedDatabaseTIP(_converterToBaseModelNamedDatabase.toBaseModelNamedDatabase(modelDomain));
    }
    ResponseGenericBoolAndDomainException response = _updateModelToNamedDatabaseFBDS
        .updateModelToNamedDatabase(modelDomain,_cloneListModelDomain(newListModelDomainForFBDS));
    if(response.isExceptionResponse) {
      return Response.exception(response.getException);
    }
    if(response.isCanceledOperationWithoutErrorAndSuccess) {
      return Response.cancelOperationWithoutErrorAndSuccess(response.getCancelOperationWithoutErrorAndSuccess);
    }
    return await updateModelToNamedDatabaseTIPDataSource
          .updateModelToNamedDatabaseTIP(_converterToBaseModelNamedDatabase.toBaseModelNamedDatabase(modelDomain));
  }

  Future<Response<BaseTypeParameter,BaseException>> _baseUpdateModelToNamedDatabaseNP(
      UpdateModelToNamedDatabaseNPDataSource updateModelToNamedDatabaseNPDataSource)
  async {
    return await updateModelToNamedDatabaseNPDataSource
        .updateModelToNamedDatabaseNP();
  }

  Future<Response<BaseTypeParameter,BaseException>> _baseUpdateModelToNamedDatabaseParameterNamed(
      UpdateModelToNamedDatabaseParameterNamedDataSource<BaseTypeParameter> updateModelToNamedDatabaseParameterNamedDataSource,
      BaseTypeParameter baseTypeParameter)
  async {
    return await updateModelToNamedDatabaseParameterNamedDataSource
        .updateModelToNamedDatabaseParameterNamed(baseTypeParameter);
  }

  Future<Response<BaseTypeParameter,BaseException>> _baseUpdateListModelToNamedDatabaseTIPUsingListModelForFBDS(
      UpdateListModelToNamedDatabaseTIPDataSource<X> updateListModelToNamedDatabaseTIPDataSource,
      List<T> newListModelDomain,
      List<T> newListModelDomainForFBDS)
  async {
    if(_converterToBaseListModelNamedDatabase == null) {
      return throw LocalException(thisClass,constDeveloper,"ConverterToBaseListModelNamedDatabase null");
    }
    BaseListModelDomain<T> baseListModelDomain = BaseListModelDomain(_cloneListModelDomain(newListModelDomain));
    if(_updateListModelToNamedDatabaseFBDS == null) {
      return await updateListModelToNamedDatabaseTIPDataSource
          .updateListModelToNamedDatabaseTIP(_converterToBaseListModelNamedDatabase.toBaseListModelNamedDatabase(baseListModelDomain));
    }
    ResponseGenericBoolAndDomainException response = _updateListModelToNamedDatabaseFBDS
        .updateListModelToNamedDatabase(baseListModelDomain,_cloneListModelDomain(newListModelDomainForFBDS));
    if(response.isExceptionResponse) {
      return Response.exception(response.getException);
    }
    if(response.isCanceledOperationWithoutErrorAndSuccess) {
      return Response.cancelOperationWithoutErrorAndSuccess(response.getCancelOperationWithoutErrorAndSuccess);
    }
    return await updateListModelToNamedDatabaseTIPDataSource
        .updateListModelToNamedDatabaseTIP(_converterToBaseListModelNamedDatabase.toBaseListModelNamedDatabase(baseListModelDomain));
  }

  Future<Response<BaseTypeParameter,BaseException>> _baseUpdateListModelToNamedDatabaseNP(
      UpdateListModelToNamedDatabaseNPDataSource updateListModelToNamedDatabaseNPDataSource)
  async {
    return await updateListModelToNamedDatabaseNPDataSource
        .updateListModelToNamedDatabaseNP();
  }

  Future<Response<BaseTypeParameter,BaseException>> _baseUpdateListModelToNamedDatabaseParameterNamed(
      UpdateListModelToNamedDatabaseParameterNamedDataSource<BaseTypeParameter> updateListModelToNamedDatabaseParameterNamedDataSource,
      BaseTypeParameter baseTypeParameter)
  async {
    return await updateListModelToNamedDatabaseParameterNamedDataSource
        .updateListModelToNamedDatabaseParameterNamed(baseTypeParameter);
  }

  Future<Response<BaseTypeParameter,BaseException>> _baseDeleteModelToNamedDatabaseTIPUsingListModelForFBDS(
      DeleteModelToNamedDatabaseTIPDataSource<Z> deleteModelToNamedDatabaseTIPDataSource,
      T newModelDomain,
      List<T> newListModelDomainForFBDS)
  async {
    if(_converterToBaseModelNamedDatabase == null) {
      return throw LocalException(thisClass,constDeveloper,"ConverterToBaseModelNamedDatabase null");
    }
    T modelDomain = cloneModelDomain(newModelDomain);
    if(_deleteModelToNamedDatabaseFBDS == null) {
      return await deleteModelToNamedDatabaseTIPDataSource
          .deleteModelToNamedDatabaseTIP(_converterToBaseModelNamedDatabase.toBaseModelNamedDatabase(modelDomain));
    }
    ResponseGenericBoolAndDomainException response = _deleteModelToNamedDatabaseFBDS
        .deleteModelToNamedDatabase(modelDomain,_cloneListModelDomain(newListModelDomainForFBDS));
    if(response.isExceptionResponse) {
      return Response.exception(response.getException);
    }
    if(response.isCanceledOperationWithoutErrorAndSuccess) {
      return Response.cancelOperationWithoutErrorAndSuccess(response.getCancelOperationWithoutErrorAndSuccess);
    }
    return await deleteModelToNamedDatabaseTIPDataSource
        .deleteModelToNamedDatabaseTIP(_converterToBaseModelNamedDatabase.toBaseModelNamedDatabase(modelDomain));
  }

  Future<Response<BaseTypeParameter,BaseException>> _baseDeleteModelToNamedDatabaseNP(
      DeleteModelToNamedDatabaseNPDataSource deleteModelToNamedDatabaseNPDataSource)
  async {
    return await deleteModelToNamedDatabaseNPDataSource
        .deleteModelToNamedDatabaseNP();
  }

  Future<Response<BaseTypeParameter,BaseException>> _baseDeleteModelToNamedDatabaseParameterNamed(
      DeleteModelToNamedDatabaseParameterNamedDataSource<BaseTypeParameter> deleteModelToNamedDatabaseParameterNamedDataSource,
      BaseTypeParameter baseTypeParameter)
  async {
    return await deleteModelToNamedDatabaseParameterNamedDataSource
        .deleteModelToNamedDatabaseParameterNamed(baseTypeParameter);
  }

  Future<Response<BaseTypeParameter,BaseException>> _baseDeleteListModelToNamedDatabaseTIPUsingListModelForFBDS(
      DeleteListModelToNamedDatabaseTIPDataSource<X> deleteListModelToNamedDatabaseTIPDataSource,
      List<T> newListModelDomain,
      List<T> newListModelDomainForFBDS)
  async {
    if(_converterToBaseListModelNamedDatabase == null) {
      return throw LocalException(thisClass,constDeveloper,"ConverterToBaseListModelNamedDatabase null");
    }
    BaseListModelDomain<T> baseListModelDomain = BaseListModelDomain(_cloneListModelDomain(newListModelDomain));
    if(_deleteListModelToNamedDatabaseFBDS == null) {
      return await deleteListModelToNamedDatabaseTIPDataSource
          .deleteListModelToNamedDatabaseTIP(_converterToBaseListModelNamedDatabase.toBaseListModelNamedDatabase(baseListModelDomain));
    }
    ResponseGenericBoolAndDomainException response = _deleteListModelToNamedDatabaseFBDS
        .deleteListModelToNamedDatabase(baseListModelDomain,_cloneListModelDomain(newListModelDomainForFBDS));
    if(response.isExceptionResponse) {
      return Response.exception(response.getException);
    }
    if(response.isCanceledOperationWithoutErrorAndSuccess) {
      return Response.cancelOperationWithoutErrorAndSuccess(response.getCancelOperationWithoutErrorAndSuccess);
    }
    return await deleteListModelToNamedDatabaseTIPDataSource
        .deleteListModelToNamedDatabaseTIP(_converterToBaseListModelNamedDatabase.toBaseListModelNamedDatabase(baseListModelDomain));
  }

  Future<Response<BaseTypeParameter,BaseException>> _baseDeleteListModelToNamedDatabaseNP(
      DeleteListModelToNamedDatabaseNPDataSource deleteListModelToNamedDatabaseNPDataSource)
  async {
    return await deleteListModelToNamedDatabaseNPDataSource
        .deleteListModelToNamedDatabaseNP();
  }

  Future<Response<BaseTypeParameter,BaseException>> _baseDeleteListModelToNamedDatabaseParameterNamed(
      DeleteListModelToNamedDatabaseParameterNamedDataSource<BaseTypeParameter> deleteListModelToNamedDatabaseParameterNamedDataSource,
      BaseTypeParameter baseTypeParameter)
  async {
    return await deleteListModelToNamedDatabaseParameterNamedDataSource
        .deleteListModelToNamedDatabaseParameterNamed(baseTypeParameter);
  }

  Response<List<T>,BaseException> _baseRunIteratorForGetListModel(
      BaseTypeParameter<EnumIterator> baseTypeParameterForBaseIterator,
      Y baseListModelDomain)
  {
    return baseListModelDomain
        .runIteratorForGetListModel(thisClass,baseTypeParameterForBaseIterator, _mapEnumAndBaseIterator);
  }

  Response<bool, BaseException> _baseInsertModelToGetListModel(T modelDomain,Y baseListModelDomain) {
    return baseListModelDomain
        .insertModelToGetListModel(thisClass,cloneModelDomain(modelDomain));
  }

  Response<bool, BaseException> _baseInsertListModelToGetListModel(List<T> listModelDomain,Y baseListModelDomain) {
    return baseListModelDomain
        .insertListModelToGetListModel(thisClass,_cloneListModelDomain(listModelDomain));
  }

  Response<bool, BaseException> _baseUpdateModelToGetListModel(T modelDomain,Y baseListModelDomain) {
    return baseListModelDomain
        .updateModelToGetListModel(thisClass,cloneModelDomain(modelDomain));
  }

  Response<bool, BaseException> _baseUpdateListModelToGetListModel(List<T> listModelDomain,Y baseListModelDomain) {
    return baseListModelDomain
        .updateListModelToGetListModel(thisClass,_cloneListModelDomain(listModelDomain));
  }

  Response<bool, BaseException> _baseDeleteModelToGetListModel(T modelDomain,Y baseListModelDomain) {
    return baseListModelDomain
        .deleteModelToGetListModel(thisClass,cloneModelDomain(modelDomain));
  }

  Response<bool, BaseException> _baseDeleteListModelToGetListModel(List<T> listModelDomain,Y baseListModelDomain) {
    return baseListModelDomain
        .deleteListModelToGetListModel(thisClass,_cloneListModelDomain(listModelDomain));
  }

  void _disposeForMapEnumAndStreamController(Map<Enum,StreamController> map) {
    if(map == null) {
      return;
    }
    if(map.isEmpty) {
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