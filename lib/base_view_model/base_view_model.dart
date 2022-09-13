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
import 'package:library_architecture_mvvm_modify/base_data_source/interface_data_source/delete_list_model_to_named_database_there_is_parameter_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_data_source/interface_data_source/delete_model_to_named_database_there_is_parameter_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_data_source/interface_data_source/get_list_model_from_named_database_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_data_source/interface_data_source/get_list_model_from_named_database_there_is_parameter_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_data_source/interface_data_source/get_model_from_named_database_there_is_parameter_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_data_source/interface_data_source/insert_list_model_to_named_database_there_is_parameter_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_data_source/interface_data_source/insert_model_to_named_database_there_is_parameter_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_data_source/interface_data_source/update_list_model_to_named_database_there_is_parameter_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_data_source/interface_data_source/update_model_to_named_database_there_is_parameter_data_source.dart';
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

abstract class BaseViewModel<T extends BaseModelDomain,Y extends BaseListModelDomain<T>,Z extends BaseModelNamedDatabase<T>,X extends BaseListModelNamedDatabase<Y,Z>,EnumIterator extends Enum> implements BaseDispose
{
  /* Init Objects For Model */
  final List<EnumBaseModelDomainVM> _listEnumBaseModelDomainVM = List.empty(growable: true);
  final List<EnumBaseListModelDomainVM> _listEnumBaseListModelDomainVM = List.empty(growable: true);

  /* Init Default Model */
  final ItemCreator<T> _initCreatorBaseModelDomain;
  final ItemCreator<Y> _initCreatorBaseListModelDomain;

  /* Maps For Model And Stream And BaseTypeParameter */
  final Map<EnumBaseModelDomainVM,T> _mapEnumBaseModelDomainVMAndBaseModelDomain = {};
  final Map<EnumBaseListModelDomainVM,Y> _mapEnumBaseListModelDomainVMAndBaseListModelDomain = {};
  final Map<EnumBaseTypeParameterForGettersVM,BaseTypeParameter> _mapEnumBaseTypeParameterForGettersVMAndBaseTypeParameter = {};
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
      this._mapEnumAndBaseIterator, 
      this._enumTypeParameterForBaseIterator,
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

  /// Start DataSource **/
  ///
  @protected
  @nonVirtual
  Future<Response<List<T>, BaseException>> getListModelFromNamedDatabaseAndUseTheSetters()
  {
    if(_dataSource == null) {
      throw LocalException(this,constDeveloper,"$_dataSource equals null");
    }
    return _baseGetListModelFromNamedDatabaseAndUseTheSetters(
        _dataSource as GetListModelFromNamedDatabaseDataSource<X>);
  }

  // start getListThereIsParameterAndUseTheSetters 3
  @protected
  @nonVirtual
  Future<Response<List<T>, BaseException>> getListModelFromNamedDatabaseThereIsParameterAndUseTheSetters()
  {
    if(_dataSource == null) {
      throw LocalException(this,constDeveloper,"$_dataSource equals null");
    }
    return _baseGetListModelFromNamedDatabaseThereIsParameterAndUseTheSetters(
        _dataSource as  GetListModelFromNamedDatabaseThereIsParameterDataSource<X>,
        getBaseTypeParameterForGetters(EnumBaseTypeParameterForGettersVM.getListModelFromNamedDatabaseThereIsParameter));
  }

  @protected
  @nonVirtual
  Future<Response<List<T>, BaseException>> setBaseTypeParameterForGettersAndGetListModelFromNamedDatabaseThereIsParameterAndUseTheSetters(
      BaseTypeParameter baseTypeParameter)
  {
    if(_dataSource == null) {
      throw LocalException(this,constDeveloper,"$_dataSource equals null");
    }
    setBaseTypeParameterForGetters(baseTypeParameter, EnumBaseTypeParameterForGettersVM.getListModelFromNamedDatabaseThereIsParameter);
    return _baseGetListModelFromNamedDatabaseThereIsParameterAndUseTheSetters(
        _dataSource as  GetListModelFromNamedDatabaseThereIsParameterDataSource<X>,
        getBaseTypeParameterForGetters(EnumBaseTypeParameterForGettersVM.getListModelFromNamedDatabaseThereIsParameter));
  }

  @protected
  @nonVirtual
  Future<Response<List<T>, BaseException>> defaultGetListModelFromNamedDatabaseThereIsParameterAndUseTheSetters(
      BaseTypeParameter baseTypeParameter)
  {
    if(_dataSource == null) {
      throw LocalException(this,constDeveloper,"$_dataSource equals null");
    }
    return _baseGetListModelFromNamedDatabaseThereIsParameterAndUseTheSetters(
        _dataSource as  GetListModelFromNamedDatabaseThereIsParameterDataSource<X>,
        baseTypeParameter);
  }
  // end getListThereIsParameterAndUseTheSetters 3

  // start getThereIsParameterAndUseTheSetters 3
  @protected
  @nonVirtual
  Future<Response<T, BaseException>> getModelFromNamedDatabaseThereIsParameterAndUseTheSetters() {
    return _baseGetModelFromNamedDatabaseThereIsParameterAndUseTheSetters(
        _dataSource as GetModelFromNamedDatabaseThereIsParameterDataSource<Z>,
        getBaseTypeParameterForGetters(EnumBaseTypeParameterForGettersVM.getModelFromNamedDatabaseThereIsParameter));
  }

  @protected
  @nonVirtual
  Future<Response<T, BaseException>> setBaseTypeParameterForGettersAndGetModelFromNamedDatabaseThereIsParameterAndUseTheSetters(
      BaseTypeParameter baseTypeParameter)
  {
    if(_dataSource == null) {
      throw LocalException(this,constDeveloper,"$_dataSource equals null");
    }
    setBaseTypeParameterForGetters(baseTypeParameter, EnumBaseTypeParameterForGettersVM.getModelFromNamedDatabaseThereIsParameter);
    return _baseGetModelFromNamedDatabaseThereIsParameterAndUseTheSetters(
        _dataSource as GetModelFromNamedDatabaseThereIsParameterDataSource<Z>,
        getBaseTypeParameterForGetters(EnumBaseTypeParameterForGettersVM.getModelFromNamedDatabaseThereIsParameter));
  }

  @protected
  @nonVirtual
  Future<Response<T, BaseException>> defaultGetModelFromNamedDatabaseThereIsParameterAndUseTheSetters(
      BaseTypeParameter baseTypeParameter)
  {
    if(_dataSource == null) {
      throw LocalException(this,constDeveloper,"$_dataSource equals null");
    }
    return _baseGetModelFromNamedDatabaseThereIsParameterAndUseTheSetters(
        _dataSource as GetModelFromNamedDatabaseThereIsParameterDataSource<Z>,
        baseTypeParameter);
  }
  // end getThereIsParameterAndUseTheSetters 3

  // start insert 6
  @protected
  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> insertModelToNamedDatabaseThereIsParameter() {
    if(_dataSource == null) {
      throw LocalException(this,constDeveloper,"$_dataSource equals null");
    }
    return _baseInsertModelToNamedDatabaseThereIsParameter(
        _dataSource as InsertModelToNamedDatabaseThereIsParameterDataSource<Z>,
        getModel(EnumBaseModelDomainVM.insertModelToNamedDatabaseThereIsParameter),
        List.empty(growable: true));
  }

  @protected
  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> insertModelToNamedDatabaseThereIsParameterAndDefaultListModelForFBDS(
      List<T> listModelForFBDS)
  {
    if(_dataSource == null) {
      throw LocalException(this,constDeveloper,"$_dataSource equals null");
    }
    return _baseInsertModelToNamedDatabaseThereIsParameter(
        _dataSource as InsertModelToNamedDatabaseThereIsParameterDataSource<Z>,
        getModel(EnumBaseModelDomainVM.insertModelToNamedDatabaseThereIsParameter),
        listModelForFBDS);
  }

  @protected
  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> setModelAndInsertModelToNamedDatabaseThereIsParameter(
      T model)
  {
    if(_dataSource == null) {
      throw LocalException(this,constDeveloper,"$_dataSource equals null");
    }
    setModel(model, EnumBaseModelDomainVM.insertModelToNamedDatabaseThereIsParameter);
    return _baseInsertModelToNamedDatabaseThereIsParameter(
        _dataSource as InsertModelToNamedDatabaseThereIsParameterDataSource<Z>,
        getModel(EnumBaseModelDomainVM.insertModelToNamedDatabaseThereIsParameter),
        List.empty(growable: true));
  }

  @protected
  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> setModelAndInsertModelToNamedDatabaseThereIsParameterAndDefaultListModelForFBDS(
      T model,
      List<T> listModelForFBDS)
  {
    if(_dataSource == null) {
      throw LocalException(this,constDeveloper,"$_dataSource equals null");
    }
    setModel(model, EnumBaseModelDomainVM.insertModelToNamedDatabaseThereIsParameter);
    return _baseInsertModelToNamedDatabaseThereIsParameter(
        _dataSource as InsertModelToNamedDatabaseThereIsParameterDataSource<Z>,
        getModel(EnumBaseModelDomainVM.insertModelToNamedDatabaseThereIsParameter),
        listModelForFBDS);
  }

  @protected
  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> defaultInsertModelToNamedDatabaseThereIsParameter(
      T model)
  {
    if(_dataSource == null) {
      throw LocalException(this,constDeveloper,"$_dataSource equals null");
    }
    return _baseInsertModelToNamedDatabaseThereIsParameter(
        _dataSource as InsertModelToNamedDatabaseThereIsParameterDataSource<Z>,
        model,
        List.empty(growable: true));
  }

  @protected
  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> defaultInsertModelToNamedDatabaseThereIsParameterAndDefaultListModelForFBDS(
      T model,
      List<T> listModelForFBDS)
  {
    if(_dataSource == null) {
      throw LocalException(this,constDeveloper,"$_dataSource equals null");
    }
    return _baseInsertModelToNamedDatabaseThereIsParameter(
        _dataSource as InsertModelToNamedDatabaseThereIsParameterDataSource<Z>,
        model,
        listModelForFBDS);
  }
  // end insert 6

  // start insertList 6
  @protected
  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> insertListModelToNamedDatabaseThereIsParameter() {
    if(_dataSource == null) {
      throw LocalException(this,constDeveloper,"$_dataSource equals null");
    }
    return _baseInsertListModelToNamedDatabaseThereIsParameter(
        _dataSource as InsertListModelToNamedDatabaseThereIsParameterDataSource<X>,
        getListModel(EnumBaseListModelDomainVM.insertListModelToNamedDatabaseThereIsParameter),
        List.empty(growable: true));
  }

  @protected
  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> insertListModelToNamedDatabaseThereIsParameterAndDefaultListModelForFBDS(
      List<T> listModelForFBDS)
  {
    if(_dataSource == null) {
      throw LocalException(this,constDeveloper,"$_dataSource equals null");
    }
    return _baseInsertListModelToNamedDatabaseThereIsParameter(
        _dataSource as InsertListModelToNamedDatabaseThereIsParameterDataSource<X>,
        getListModel(EnumBaseListModelDomainVM.insertListModelToNamedDatabaseThereIsParameter),
        listModelForFBDS);
  }

  @protected
  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> setListModelAndInsertListModelToNamedDatabaseThereIsParameter(
      List<T> listModel)
  {
    if(_dataSource == null) {
      throw LocalException(this,constDeveloper,"$_dataSource equals null");
    }
    setListModel(listModel, EnumBaseListModelDomainVM.insertListModelToNamedDatabaseThereIsParameter);
    return _baseInsertListModelToNamedDatabaseThereIsParameter(
        _dataSource as InsertListModelToNamedDatabaseThereIsParameterDataSource<X>,
        getListModel(EnumBaseListModelDomainVM.insertListModelToNamedDatabaseThereIsParameter),
        List.empty(growable: true));
  }

  @protected
  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> setListModelAndInsertListModelToNamedDatabaseThereIsParameterAndDefaultListModelForFBDS(
      List<T> listModel,
      List<T> listModelForFBDS)
  {
    if(_dataSource == null) {
      throw LocalException(this,constDeveloper,"$_dataSource equals null");
    }
    setListModel(listModel, EnumBaseListModelDomainVM.insertListModelToNamedDatabaseThereIsParameter);
    return _baseInsertListModelToNamedDatabaseThereIsParameter(
        _dataSource as InsertListModelToNamedDatabaseThereIsParameterDataSource<X>,
        getListModel(EnumBaseListModelDomainVM.insertListModelToNamedDatabaseThereIsParameter),
        listModelForFBDS);
  }

  @protected
  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> defaultInsertListModelToNamedDatabaseThereIsParameter(
      List<T> listModel)
  {
    if(_dataSource == null) {
      throw LocalException(this,constDeveloper,"$_dataSource equals null");
    }
    return _baseInsertListModelToNamedDatabaseThereIsParameter(
        _dataSource as InsertListModelToNamedDatabaseThereIsParameterDataSource<X>,
        listModel,
        List.empty(growable: true));
  }

  @protected
  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> defaultInsertListModelToNamedDatabaseThereIsParameterAndDefaultListModelForFBDS(
      List<T> listModel,
      List<T> listModelForFBDS)
  {
    if(_dataSource == null) {
      throw LocalException(this,constDeveloper,"$_dataSource equals null");
    }
    return _baseInsertListModelToNamedDatabaseThereIsParameter(
        _dataSource as InsertListModelToNamedDatabaseThereIsParameterDataSource<X>,
        listModel,
        listModelForFBDS);
  }
  // end insertList 6

  // start update 6
  @protected
  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> updateModelToNamedDatabaseThereIsParameter() {
    if(_dataSource == null) {
      throw LocalException(this,constDeveloper,"$_dataSource equals null");
    }
    return _baseUpdateModelToNamedDatabaseThereIsParameter(
        _dataSource as UpdateModelToNamedDatabaseThereIsParameterDataSource<Z>,
        getModel(EnumBaseModelDomainVM.updateModelToNamedDatabaseThereIsParameter),
        List.empty(growable: true));
  }

  @protected
  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> updateModelToNamedDatabaseThereIsParameterAndDefaultListModelForFBDS(
      List<T> listModelForFBDS)
  {
    if(_dataSource == null) {
      throw LocalException(this,constDeveloper,"$_dataSource equals null");
    }
    return _baseUpdateModelToNamedDatabaseThereIsParameter(
        _dataSource as UpdateModelToNamedDatabaseThereIsParameterDataSource<Z>,
        getModel(EnumBaseModelDomainVM.updateModelToNamedDatabaseThereIsParameter),
        listModelForFBDS);
  }

  @protected
  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> setModelAndUpdateModelToNamedDatabaseThereIsParameter(
      T model)
  {
    if(_dataSource == null) {
      throw LocalException(this,constDeveloper,"$_dataSource equals null");
    }
    setModel(model, EnumBaseModelDomainVM.updateModelToNamedDatabaseThereIsParameter);
    return _baseUpdateModelToNamedDatabaseThereIsParameter(
        _dataSource as UpdateModelToNamedDatabaseThereIsParameterDataSource<Z>,
        getModel(EnumBaseModelDomainVM.updateModelToNamedDatabaseThereIsParameter),
        List.empty(growable: true));
  }

  @protected
  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> setModelAndUpdateModelToNamedDatabaseThereIsParameterAndDefaultListModelForFBDS(
      T model,
      List<T> listModelForFBDS)
  {
    if(_dataSource == null) {
      throw LocalException(this,constDeveloper,"$_dataSource equals null");
    }
    setModel(model, EnumBaseModelDomainVM.updateModelToNamedDatabaseThereIsParameter);
    return _baseUpdateModelToNamedDatabaseThereIsParameter(
        _dataSource as UpdateModelToNamedDatabaseThereIsParameterDataSource<Z>,
        getModel(EnumBaseModelDomainVM.updateModelToNamedDatabaseThereIsParameter),
        listModelForFBDS);
  }

  @protected
  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> defaultUpdateModelToNamedDatabaseThereIsParameter(
      T model)
  {
    if(_dataSource == null) {
      throw LocalException(this,constDeveloper,"$_dataSource equals null");
    }
    return _baseUpdateModelToNamedDatabaseThereIsParameter(
        _dataSource as UpdateModelToNamedDatabaseThereIsParameterDataSource<Z>,
        model,
        List.empty(growable: true));
  }

  @protected
  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> defaultUpdateModelToNamedDatabaseThereIsParameterAndDefaultListModelForFBDS(
      T model,
      List<T> listModelForFBDS)
  {
    if(_dataSource == null) {
      throw LocalException(this,constDeveloper,"$_dataSource equals null");
    }
    return _baseUpdateModelToNamedDatabaseThereIsParameter(
        _dataSource as UpdateModelToNamedDatabaseThereIsParameterDataSource<Z>,
        model,
        listModelForFBDS);
  }
  // end update 6

  // start updateList 6
  @protected
  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> updateListModelToNamedDatabaseThereIsParameter() {
    if(_dataSource == null) {
      throw LocalException(this,constDeveloper,"$_dataSource equals null");
    }
    return _baseUpdateListModelToNamedDatabaseThereIsParameter(
        _dataSource as UpdateListModelToNamedDatabaseThereIsParameterDataSource<X>,
        getListModel(EnumBaseListModelDomainVM.updateListModelToNamedDatabaseThereIsParameter),
        List.empty(growable: true));
  }

  @protected
  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> updateListModelToNamedDatabaseThereIsParameterAndDefaultListModelForFBDS(
      List<T> listModelForFBDS)
  {
    if(_dataSource == null) {
      throw LocalException(this,constDeveloper,"$_dataSource equals null");
    }
    return _baseUpdateListModelToNamedDatabaseThereIsParameter(
        _dataSource as UpdateListModelToNamedDatabaseThereIsParameterDataSource<X>,
        getListModel(EnumBaseListModelDomainVM.updateListModelToNamedDatabaseThereIsParameter),
        listModelForFBDS);
  }

  @protected
  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> setListModelAndUpdateListModelToNamedDatabaseThereIsParameter(
      List<T> listModel)
  {
    if(_dataSource == null) {
      throw LocalException(this,constDeveloper,"$_dataSource equals null");
    }
    setListModel(listModel, EnumBaseListModelDomainVM.updateListModelToNamedDatabaseThereIsParameter);
    return _baseUpdateListModelToNamedDatabaseThereIsParameter(
        _dataSource as UpdateListModelToNamedDatabaseThereIsParameterDataSource<X>,
        getListModel(EnumBaseListModelDomainVM.updateListModelToNamedDatabaseThereIsParameter),
        List.empty(growable: true));
  }

  @protected
  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> setListModelAndUpdateListModelToNamedDatabaseThereIsParameterAndDefaultListModelForFBDS(
      List<T> listModel,
      List<T> listModelForFBDS)
  {
    if(_dataSource == null) {
      throw LocalException(this,constDeveloper,"$_dataSource equals null");
    }
    setListModel(listModel, EnumBaseListModelDomainVM.updateListModelToNamedDatabaseThereIsParameter);
    return _baseUpdateListModelToNamedDatabaseThereIsParameter(
        _dataSource as UpdateListModelToNamedDatabaseThereIsParameterDataSource<X>,
        getListModel(EnumBaseListModelDomainVM.updateListModelToNamedDatabaseThereIsParameter),
        listModelForFBDS);
  }

  @protected
  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> defaultUpdateListModelToNamedDatabaseThereIsParameter(
      List<T> listModel)
  {
    if(_dataSource == null) {
      throw LocalException(this,constDeveloper,"$_dataSource equals null");
    }
    return _baseUpdateListModelToNamedDatabaseThereIsParameter(
        _dataSource as UpdateListModelToNamedDatabaseThereIsParameterDataSource<X>,
        listModel,
        List.empty(growable: true));
  }

  @protected
  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> defaultUpdateListModelToNamedDatabaseThereIsParameterAndDefaultListModelForFBDS(
      List<T> listModel,
      List<T> listModelForFBDS)
  {
    if(_dataSource == null) {
      throw LocalException(this,constDeveloper,"$_dataSource equals null");
    }
    return _baseUpdateListModelToNamedDatabaseThereIsParameter(
        _dataSource as UpdateListModelToNamedDatabaseThereIsParameterDataSource<X>,
        listModel,
        listModelForFBDS);
  }
  // end updateList 6

  // start delete 6
  @protected
  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> deleteModelToNamedDatabaseThereIsParameter() {
    if(_dataSource == null) {
      throw LocalException(this,constDeveloper,"$_dataSource equals null");
    }
    return _baseDeleteModelToNamedDatabaseThereIsParameter(
        _dataSource as DeleteModelToNamedDatabaseThereIsParameterDataSource<Z>,
        getModel(EnumBaseModelDomainVM.deleteModelToNamedDatabaseThereIsParameter),
        List.empty(growable: true));
  }

  @protected
  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> deleteModelToNamedDatabaseThereIsParameterAndDefaultListModelForFBDS(
      List<T> listModelForFBDS)
  {
    if(_dataSource == null) {
      throw LocalException(this,constDeveloper,"$_dataSource equals null");
    }
    return _baseDeleteModelToNamedDatabaseThereIsParameter(
        _dataSource as DeleteModelToNamedDatabaseThereIsParameterDataSource<Z>,
        getModel(EnumBaseModelDomainVM.deleteModelToNamedDatabaseThereIsParameter),
        listModelForFBDS);
  }

  @protected
  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> setModelAndDeleteModelToNamedDatabaseThereIsParameter(
      T model)
  {
    if(_dataSource == null) {
      throw LocalException(this,constDeveloper,"$_dataSource equals null");
    }
    setModel(model, EnumBaseModelDomainVM.deleteModelToNamedDatabaseThereIsParameter);
    return _baseDeleteModelToNamedDatabaseThereIsParameter(
        _dataSource as DeleteModelToNamedDatabaseThereIsParameterDataSource<Z>,
        getModel(EnumBaseModelDomainVM.deleteModelToNamedDatabaseThereIsParameter),
        List.empty(growable: true));
  }

  @protected
  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> setModelAndDeleteModelToNamedDatabaseThereIsParameterAndDefaultListModelForFBDS(
      T model,
      List<T> listModelForFBDS)
  {
    if(_dataSource == null) {
      throw LocalException(this,constDeveloper,"$_dataSource equals null");
    }
    setModel(model, EnumBaseModelDomainVM.deleteModelToNamedDatabaseThereIsParameter);
    return _baseDeleteModelToNamedDatabaseThereIsParameter(
        _dataSource as DeleteModelToNamedDatabaseThereIsParameterDataSource<Z>,
        getModel(EnumBaseModelDomainVM.deleteModelToNamedDatabaseThereIsParameter),
        listModelForFBDS);
  }

  @protected
  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> defaultDeleteModelToNamedDatabaseThereIsParameter(
      T model)
  {
    if(_dataSource == null) {
      throw LocalException(this,constDeveloper,"$_dataSource equals null");
    }
    return _baseDeleteModelToNamedDatabaseThereIsParameter(
        _dataSource as DeleteModelToNamedDatabaseThereIsParameterDataSource<Z>,
        model,
        List.empty(growable: true));
  }

  @protected
  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> defaultDeleteModelToNamedDatabaseThereIsParameterAndDefaultListModelForFBDS(
      T model,
      List<T> listModelForFBDS)
  {
    return _baseDeleteModelToNamedDatabaseThereIsParameter(
        _dataSource as DeleteModelToNamedDatabaseThereIsParameterDataSource<Z>,
        model,
        listModelForFBDS);
  }
  // end delete 6

  // start deleteList 6
  @protected
  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> deleteListModelToNamedDatabaseThereIsParameter() {
    if(_dataSource == null) {
      throw LocalException(this,constDeveloper,"$_dataSource equals null");
    }
    return _baseDeleteListModelToNamedDatabaseThereIsParameter(
        _dataSource as DeleteListModelToNamedDatabaseThereIsParameterDataSource<X>,
        getListModel(EnumBaseListModelDomainVM.deleteListModelToNamedDatabaseThereIsParameter),
        List.empty(growable: true));
  }

  @protected
  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> deleteListModelToNamedDatabaseAndDefaultListModelForFBDS(
      List<T> listModelForFBDS)
  {
    if(_dataSource == null) {
      throw LocalException(this,constDeveloper,"$_dataSource equals null");
    }
    return _baseDeleteListModelToNamedDatabaseThereIsParameter(
        _dataSource as DeleteListModelToNamedDatabaseThereIsParameterDataSource<X>,
        getListModel(EnumBaseListModelDomainVM.deleteListModelToNamedDatabaseThereIsParameter),
        listModelForFBDS);
  }

  @protected
  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> setListModelAndDeleteListModelToNamedDatabaseThereIsParameter(
      List<T> listModel)
  {
    if(_dataSource == null) {
      throw LocalException(this,constDeveloper,"$_dataSource equals null");
    }
    setListModel(listModel, EnumBaseListModelDomainVM.deleteListModelToNamedDatabaseThereIsParameter);
    return _baseDeleteListModelToNamedDatabaseThereIsParameter(
        _dataSource as DeleteListModelToNamedDatabaseThereIsParameterDataSource<X>,
        getListModel(EnumBaseListModelDomainVM.deleteListModelToNamedDatabaseThereIsParameter),
        List.empty(growable: true));
  }

  @protected
  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> setListModelAndDeleteListModelToNamedDatabaseThereIsParameterAndDefaultListModelForFBDS(
      List<T> listModel,
      List<T> listModelForFBDS)
  {
    if(_dataSource == null) {
      throw LocalException(this,constDeveloper,"$_dataSource equals null");
    }
    setListModel(listModel, EnumBaseListModelDomainVM.deleteListModelToNamedDatabaseThereIsParameter);
    return _baseDeleteListModelToNamedDatabaseThereIsParameter(
        _dataSource as DeleteListModelToNamedDatabaseThereIsParameterDataSource<X>,
        getListModel(EnumBaseListModelDomainVM.deleteListModelToNamedDatabaseThereIsParameter),
        listModelForFBDS);
  }

  @protected
  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> defaultDeleteListModelToNamedDatabaseThereIsParameter(
      List<T> listModel)
  {
    if(_dataSource == null) {
      throw LocalException(this,constDeveloper,"$_dataSource equals null");
    }
    return _baseDeleteListModelToNamedDatabaseThereIsParameter(
        _dataSource as DeleteListModelToNamedDatabaseThereIsParameterDataSource<X>,
        listModel,
        List.empty(growable: true));
  }

  @protected
  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> defaultDeleteListModelToNamedDatabaseThereIsParameterAndDefaultListModelForFBDS(
      List<T> listModel,
      List<T> listModelForFBDS)
  {
    if(_dataSource == null) {
      throw LocalException(this,constDeveloper,"$_dataSource equals null");
    }
    return _baseDeleteListModelToNamedDatabaseThereIsParameter(
        _dataSource as DeleteListModelToNamedDatabaseThereIsParameterDataSource<X>,
        listModel,
        listModelForFBDS);
  }
  // end deleteList 6

  /// End DataSource **/

  /// Start For Object GetListModel **/
  ///
  @protected
  @nonVirtual
  Response<List<T>, BaseException> runIteratorForGetListModel() {
    return _baseRunIteratorForGetListModel(getEnumTypeParameterForBaseIterator);
  }
  
  @protected
  @nonVirtual
  Response<List<T>, BaseException> setBaseTypeParameterForBaseIteratorAndRunIteratorForGetListModel(BaseTypeParameter<EnumIterator> baseTypeParameterForBaseIterator) {
    setEnumTypeParameterForBaseIterator = baseTypeParameterForBaseIterator;
    return _baseRunIteratorForGetListModel(getEnumTypeParameterForBaseIterator);
  }

  @protected
  @nonVirtual
  Response<List<T>, BaseException> defaultRunIteratorForGetListModel(BaseTypeParameter<EnumIterator> baseTypeParameterForBaseIterator) {
    return _baseRunIteratorForGetListModel(baseTypeParameterForBaseIterator);
  }

  @protected
  @nonVirtual
  Response<bool, BaseException> insertModelToGetListModel() {
    return _baseInsertModelToGetListModel(getModel(EnumBaseModelDomainVM.insertModelToNamedDatabaseThereIsParameter));
  }

  @protected
  @nonVirtual
  Response<bool, BaseException> setModelAndInsertModelToGetListModel(T model) {
    setModel(model, EnumBaseModelDomainVM.insertModelToNamedDatabaseThereIsParameter);
    return _baseInsertModelToGetListModel(getModel(EnumBaseModelDomainVM.insertModelToNamedDatabaseThereIsParameter));
  }

  @protected
  @nonVirtual
  Response<bool, BaseException> defaultInsertModelToGetListModel(T model) {
    return _baseInsertModelToGetListModel(model);
  }

  @protected
  @nonVirtual
  Response<bool, BaseException> insertListModelToGetListModel() {
    return _baseInsertListModelToGetListModel(getListModel(EnumBaseListModelDomainVM.insertListModelToNamedDatabaseThereIsParameter));
  }

  @protected
  @nonVirtual
  Response<bool, BaseException> setListModelAndInsertListModelToGetListModel(List<T> listModel) {
    setListModel(listModel, EnumBaseListModelDomainVM.insertListModelToNamedDatabaseThereIsParameter);
    return _baseInsertListModelToGetListModel(getListModel(EnumBaseListModelDomainVM.insertListModelToNamedDatabaseThereIsParameter));
  }

  @protected
  @nonVirtual
  Response<bool, BaseException> defaultInsertListModelToGetListModel(List<T> listModel) {
    return _baseInsertListModelToGetListModel(listModel);
  }

  @protected
  @nonVirtual
  Response<bool, BaseException> updateModelToGetListModel() {
    return _baseUpdateModelToGetListModel(getModel(EnumBaseModelDomainVM.updateModelToNamedDatabaseThereIsParameter));
  }

  @protected
  @nonVirtual
  Response<bool, BaseException> setModelAndUpdateModelToGetListModel(T model) {
    setModel(model, EnumBaseModelDomainVM.updateModelToNamedDatabaseThereIsParameter);
    return _baseUpdateModelToGetListModel(getModel(EnumBaseModelDomainVM.updateModelToNamedDatabaseThereIsParameter));
  }

  @protected
  @nonVirtual
  Response<bool, BaseException> defaultUpdateModelToGetListModel(T model) {
    return _baseUpdateModelToGetListModel(model);
  }

  @protected
  @nonVirtual
  Response<bool, BaseException> updateListModelToGetListModel() {
    return _baseUpdateListModelToGetListModel(getListModel(EnumBaseListModelDomainVM.updateListModelToNamedDatabaseThereIsParameter));
  }

  @protected
  @nonVirtual
  Response<bool, BaseException> setListModelAndUpdateListModelToGetListModel(List<T> listModel) {
    setListModel(listModel, EnumBaseListModelDomainVM.updateListModelToNamedDatabaseThereIsParameter);
    return _baseUpdateListModelToGetListModel(getListModel(EnumBaseListModelDomainVM.updateListModelToNamedDatabaseThereIsParameter));
  }

  @protected
  @nonVirtual
  Response<bool, BaseException> defaultUpdateListModelToGetListModel(List<T> listModel) {
    return _baseUpdateListModelToGetListModel(listModel);
  }

  @protected
  @nonVirtual
  Response<bool, BaseException> deleteModelToGetListModel() {
    return _baseDeleteModelToGetListModel(getModel(EnumBaseModelDomainVM.deleteModelToNamedDatabaseThereIsParameter));
  }

  @protected
  @nonVirtual
  Response<bool, BaseException> setModelAndDeleteModelToGetListModel(T model) {
    setModel(model, EnumBaseModelDomainVM.deleteModelToNamedDatabaseThereIsParameter);
    return _baseDeleteModelToGetListModel(getModel(EnumBaseModelDomainVM.deleteModelToNamedDatabaseThereIsParameter));
  }

  @protected
  @nonVirtual
  Response<bool, BaseException> defaultDeleteModelToGetListModel(T model) {
    return _baseDeleteModelToGetListModel(model);
  }

  @protected
  @nonVirtual
  Response<bool, BaseException> deleteListModelToGetListModel() {
    return _baseDeleteListModelToGetListModel(getListModel(EnumBaseListModelDomainVM.deleteListModelToNamedDatabaseThereIsParameter));
  }

  @protected
  @nonVirtual
  Response<bool, BaseException> setListModelAndDeleteListModelToGetListModel(List<T> listModel) {
    setListModel(listModel, EnumBaseListModelDomainVM.deleteListModelToNamedDatabaseThereIsParameter);
    return _baseDeleteListModelToGetListModel(getListModel(EnumBaseListModelDomainVM.deleteListModelToNamedDatabaseThereIsParameter));
  }

  @protected
  @nonVirtual
  Response<bool, BaseException> defaultDeleteListModelToGetListModel(List<T> listModel) {
    return _baseDeleteListModelToGetListModel(listModel);
  }

  /// End For Object GetListModel **/
  
  /// Start Base/EnumTypeParameter **/

  @protected
  @nonVirtual
  void setMapEnumAndBaseIterator(
      BaseIterator<T> baseIterator,
      EnumIterator operation)
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
  BaseTypeParameter getBaseTypeParameterForGetters(EnumBaseTypeParameterForGettersVM operation) {
    if(!_mapEnumBaseTypeParameterForGettersVMAndBaseTypeParameter.containsKey(operation)) {
      return throw LocalException(this,constDeveloper,"$operation not found");
    }
    return _mapEnumBaseTypeParameterForGettersVMAndBaseTypeParameter[operation];
  }

  @protected
  @nonVirtual
  void setBaseTypeParameterForGetters(
      BaseTypeParameter baseTypeParameter,
      EnumBaseTypeParameterForGettersVM operation)
  {
    if(!_mapEnumBaseTypeParameterForGettersVMAndBaseTypeParameter.containsKey(operation)) {
      throw LocalException(this,constDeveloper,"$operation not found");
    }
    _mapEnumBaseTypeParameterForGettersVMAndBaseTypeParameter[operation] = baseTypeParameter;
  }

  /// End Base/EnumTypeParameter **/

  /// Start Model **/

  @protected
  @nonVirtual
  T getModel(EnumBaseModelDomainVM operation) {
    if(!_mapEnumBaseModelDomainVMAndBaseModelDomain.containsKey(operation)) {
      return throw LocalException(this,constDeveloper,"$operation not found");
    }
    return _mapEnumBaseModelDomainVMAndBaseModelDomain[operation];
  }

  @protected
  @nonVirtual
  void setModel(T newModel,EnumBaseModelDomainVM operation) {
    if(!_mapEnumBaseModelDomainVMAndBaseModelDomain.containsKey(operation)) {
      throw LocalException(this,constDeveloper,"$operation not found");
    }
    _mapEnumBaseModelDomainVMAndBaseModelDomain[operation] = newModel;
  }

  @protected
  @nonVirtual
  Future<T> getFutureModel(EnumBaseModelDomainVM operation) async {
    if(!_mapEnumBaseModelDomainVMAndBaseModelDomain.containsKey(operation)) {
      return throw LocalException(this,constDeveloper,"$operation not found");
    }
    return _mapEnumBaseModelDomainVMAndBaseModelDomain[operation];
  }

  @protected
  @nonVirtual
  Stream<T> getStreamModel(EnumBaseModelDomainVM operation) {
    if(!_mapEnumBaseModelDomainVMAndStreamControllerForBaseModelDomain.containsKey(operation)) {
      return throw LocalException(this,constDeveloper,"$operation not found");
    }
    return _mapEnumBaseModelDomainVMAndStreamControllerForBaseModelDomain[operation].stream;
  }

  @protected
  @nonVirtual
  void notifyStreamModel(EnumBaseModelDomainVM operation) {
    if(!_mapEnumBaseModelDomainVMAndStreamControllerForBaseModelDomain.containsKey(operation) || !_mapEnumBaseModelDomainVMAndBaseModelDomain.containsKey(operation)) {
      throw LocalException(this,constDeveloper,"$operation not found");
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
      return throw LocalException(this,constDeveloper,"$operation not found");
    }
    return _mapEnumBaseListModelDomainVMAndBaseListModelDomain[operation].getListModelDomain;
  }

  @protected
  @nonVirtual
  void setListModel(List<T> newListModel,EnumBaseListModelDomainVM operation) {
    if(!_mapEnumBaseListModelDomainVMAndBaseListModelDomain.containsKey(operation)) {
      throw LocalException(this,constDeveloper,"$operation not found");
    }
    _mapEnumBaseListModelDomainVMAndBaseListModelDomain[operation].setParameterListModelDomain = newListModel;
  }

  @protected
  @nonVirtual
  Future<List<T>> getFutureListModel(EnumBaseListModelDomainVM operation) async {
    if(!_mapEnumBaseListModelDomainVMAndBaseListModelDomain.containsKey(operation)) {
      return throw LocalException(this,constDeveloper,"$operation not found");
    }
    return _mapEnumBaseListModelDomainVMAndBaseListModelDomain[operation].getListModelDomain;
  }

  @protected
  @nonVirtual
  Stream<List<T>> getStreamListModel(EnumBaseListModelDomainVM operation) {
    if(!_mapEnumBaseListModelDomainVMAndStreamControllerForListBaseModelDomain.containsKey(operation)) {
      return throw LocalException(this,constDeveloper,"$operation not found");
    }
    return _mapEnumBaseListModelDomainVMAndStreamControllerForListBaseModelDomain[operation].stream;
  }

  @protected
  @nonVirtual
  void notifyStreamListModel(EnumBaseListModelDomainVM operation) {
    if(!_mapEnumBaseListModelDomainVMAndStreamControllerForListBaseModelDomain.containsKey(operation) || !_mapEnumBaseListModelDomainVMAndBaseListModelDomain.containsKey(operation)) {
      throw LocalException(this,constDeveloper,"$operation not found");
    }
    _mapEnumBaseListModelDomainVMAndStreamControllerForListBaseModelDomain[operation]
        .add(_mapEnumBaseListModelDomainVMAndBaseListModelDomain[operation].getListModelDomain);
  }

  /// End ListModel **/

  /// Start BaseListModel **/

  Y _getBaseListModel(EnumBaseListModelDomainVM operation) {
    if(!_mapEnumBaseListModelDomainVMAndBaseListModelDomain.containsKey(operation)) {
      return throw LocalException(this,constDeveloper,"$operation not found");
    }
    return _mapEnumBaseListModelDomainVMAndBaseListModelDomain[operation];
  }

  /// End BaseListModel **/

  void _initListEnumBaseModelDomainVMAndEnumBaseListModelDomainVM() {
    if(_dataSource is InsertModelToNamedDatabaseThereIsParameterDataSource<Z>) {
      _listEnumBaseModelDomainVM.add(EnumBaseModelDomainVM.insertModelToNamedDatabaseThereIsParameter);
    }
    if(_dataSource is UpdateModelToNamedDatabaseThereIsParameterDataSource<Z>) {
      _listEnumBaseModelDomainVM.add(EnumBaseModelDomainVM.updateModelToNamedDatabaseThereIsParameter);
    }
    if(_dataSource is DeleteModelToNamedDatabaseThereIsParameterDataSource<Z>) {
      _listEnumBaseModelDomainVM.add(EnumBaseModelDomainVM.deleteModelToNamedDatabaseThereIsParameter);
    }
    if(_dataSource is GetModelFromNamedDatabaseThereIsParameterDataSource<Z>) {
      _listEnumBaseModelDomainVM.add(EnumBaseModelDomainVM.getModelFromNamedDatabaseThereIsParameter);
      _mapEnumBaseTypeParameterForGettersVMAndBaseTypeParameter[EnumBaseTypeParameterForGettersVM.getModelFromNamedDatabaseThereIsParameter] = null;
    }
    if(_dataSource is InsertListModelToNamedDatabaseThereIsParameterDataSource<X>) {
      _listEnumBaseListModelDomainVM.add(EnumBaseListModelDomainVM.insertListModelToNamedDatabaseThereIsParameter);
    }
    if(_dataSource is UpdateListModelToNamedDatabaseThereIsParameterDataSource<X>) {
      _listEnumBaseListModelDomainVM.add(EnumBaseListModelDomainVM.updateListModelToNamedDatabaseThereIsParameter);
    }
    if(_dataSource is DeleteListModelToNamedDatabaseThereIsParameterDataSource<X>) {
      _listEnumBaseListModelDomainVM.add(EnumBaseListModelDomainVM.deleteListModelToNamedDatabaseThereIsParameter);
    }
    if(_dataSource is GetListModelFromNamedDatabaseThereIsParameterDataSource<X>) {
      _listEnumBaseModelDomainVM.add(EnumBaseModelDomainVM.getListModelFromNamedDatabaseThereIsParameterAndNoThereIsParameter);
      _listEnumBaseListModelDomainVM.add(EnumBaseListModelDomainVM.getListModelFromNamedDatabaseThereIsParameterAndNoThereIsParameter);
      _mapEnumBaseTypeParameterForGettersVMAndBaseTypeParameter[EnumBaseTypeParameterForGettersVM.getListModelFromNamedDatabaseThereIsParameter] = null;
    } else if(_dataSource is GetListModelFromNamedDatabaseDataSource<X>) {
      _listEnumBaseModelDomainVM.add(EnumBaseModelDomainVM.getListModelFromNamedDatabaseThereIsParameterAndNoThereIsParameter);
      _listEnumBaseListModelDomainVM.add(EnumBaseListModelDomainVM.getListModelFromNamedDatabaseThereIsParameterAndNoThereIsParameter);
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

  Future<Response<List<T>,BaseException>> _baseGetListModelFromNamedDatabaseAndUseTheSetters(
      GetListModelFromNamedDatabaseDataSource<X> getListModelFromNamedDatabaseDataSource)
  async {
    Response<X,BaseException> response = await getListModelFromNamedDatabaseDataSource
        .getListModelFromNamedDatabaseDataSource();
    if(response.isSuccessResponse) {
      Y baseListModelDomain = _getBaseListModel(EnumBaseListModelDomainVM.getListModelFromNamedDatabaseThereIsParameterAndNoThereIsParameter);
      baseListModelDomain.setFromBaseListModelDomainParameterListModelDomain = response.getData.toBaseListModelDomain();
      return Response.success(baseListModelDomain.getListModelDomain);
    } else {
      return Response.exception(response.getException);
    }
  }

  Future<Response<List<T>,BaseException>> _baseGetListModelFromNamedDatabaseThereIsParameterAndUseTheSetters(
      GetListModelFromNamedDatabaseThereIsParameterDataSource<X> getListModelFromNamedDatabaseThereIsParameterDataSource,
      BaseTypeParameter newBaseTypeParameter)
  async {
    Response<X,BaseException> response = await getListModelFromNamedDatabaseThereIsParameterDataSource
        .getListModelFromNamedDatabaseThereIsParameterDataSource(newBaseTypeParameter);
    if(response.isSuccessResponse) {
      Y baseListModelDomain = _getBaseListModel(EnumBaseListModelDomainVM.getListModelFromNamedDatabaseThereIsParameterAndNoThereIsParameter);
      baseListModelDomain.setFromBaseListModelDomainParameterListModelDomain = response.getData.toBaseListModelDomain();
      return Response.success(baseListModelDomain.getListModelDomain);
    } else {
      return Response.exception(response.getException);
    }
  }

  Future<Response<T,BaseException>> _baseGetModelFromNamedDatabaseThereIsParameterAndUseTheSetters(
      GetModelFromNamedDatabaseThereIsParameterDataSource<Z> getModelFromNamedDatabaseThereIsParameterDataSource,
      BaseTypeParameter newBaseTypeParameter)
  async {
    Response<Z,BaseException> response = await getModelFromNamedDatabaseThereIsParameterDataSource
        .getModelFromNamedDatabaseThereIsParameterDataSource(newBaseTypeParameter);
    if(response.isSuccessResponse) {
      setModel(
          response.getData.toBaseModelDomain(),
          EnumBaseModelDomainVM.getModelFromNamedDatabaseThereIsParameter
      );
      return Response.success(getModel(EnumBaseModelDomainVM.getModelFromNamedDatabaseThereIsParameter));
    } else {
      return Response.exception(response.getException);
    }
  }

  Future<Response<BaseTypeParameter,BaseException>> _baseInsertModelToNamedDatabaseThereIsParameter(
      InsertModelToNamedDatabaseThereIsParameterDataSource<Z> insertModelToNamedDatabaseThereIsParameterDataSource,
      T newModelDomain,
      List<T> newListModelDomainForFBDS)
  async {
    if(_converterToBaseModelNamedDatabase == null) {
      return throw LocalException(this,constDeveloper,"ConverterToBaseModelNamedDatabase null");
    }
    T modelDomain = cloneModelDomain(newModelDomain);
    if(_insertModelToNamedDatabaseFBDS == null) {
      return await insertModelToNamedDatabaseThereIsParameterDataSource
          .insertModelToNamedDatabaseThereIsParameterDataSource(_converterToBaseModelNamedDatabase.toBaseModelNamedDatabase(modelDomain));
    }
    List<T> listModelDomainForFBDS = _cloneListModelDomain(newListModelDomainForFBDS);
    ResponseGenericBoolAndDomainException response = _insertModelToNamedDatabaseFBDS
        .insertModelToNamedDatabaseFBDS(modelDomain,listModelDomainForFBDS);
    if(response.isSuccessResponse) {
      return await insertModelToNamedDatabaseThereIsParameterDataSource
          .insertModelToNamedDatabaseThereIsParameterDataSource(_converterToBaseModelNamedDatabase.toBaseModelNamedDatabase(modelDomain));
    } else {
      return Response.exception(response.getException);
    }
  }

  Future<Response<BaseTypeParameter,BaseException>> _baseInsertListModelToNamedDatabaseThereIsParameter(
      InsertListModelToNamedDatabaseThereIsParameterDataSource<X> insertListModelToNamedDatabaseThereIsParameterDataSource,
      List<T> newListModelDomain,
      List<T> newListModelDomainForFBDS)
  async {
    if(_converterToBaseListModelNamedDatabase == null) {
      return throw LocalException(this,constDeveloper,"ConverterToBaseListModelNamedDatabase null");
    }
    BaseListModelDomain<T> baseListModelDomain = BaseListModelDomain(_cloneListModelDomain(newListModelDomain));
    if(_insertListModelToNamedDatabaseFBDS == null) {
      return await insertListModelToNamedDatabaseThereIsParameterDataSource
          .insertListModelToNamedDatabaseThereIsParameterDataSource(_converterToBaseListModelNamedDatabase.toBaseListModelNamedDatabase(baseListModelDomain));
    }
    List<T> listModelDomainForFBDS = _cloneListModelDomain(newListModelDomainForFBDS);
    ResponseGenericBoolAndDomainException response = _insertListModelToNamedDatabaseFBDS
        .insertListModelToNamedDatabaseFBDS(baseListModelDomain,listModelDomainForFBDS);
    if(response.isSuccessResponse) {
      return await insertListModelToNamedDatabaseThereIsParameterDataSource
          .insertListModelToNamedDatabaseThereIsParameterDataSource(_converterToBaseListModelNamedDatabase.toBaseListModelNamedDatabase(baseListModelDomain));
    } else {
      return Response.exception(response.getException);
    }
  }

  Future<Response<BaseTypeParameter,BaseException>> _baseUpdateModelToNamedDatabaseThereIsParameter(
      UpdateModelToNamedDatabaseThereIsParameterDataSource<Z> updateModelToNamedDatabaseThereIsParameterDataSource,
      T newModelDomain,
      List<T> newListModelDomainForFBDS)
  async {
    if(_converterToBaseModelNamedDatabase == null) {
      return throw LocalException(this,constDeveloper,"ConverterToBaseModelNamedDatabase null");
    }
    T modelDomain = cloneModelDomain(newModelDomain);
    if(_updateModelToNamedDatabaseFBDS == null) {
      return await updateModelToNamedDatabaseThereIsParameterDataSource
          .updateModelToNamedDatabaseThereIsParameterDataSource(_converterToBaseModelNamedDatabase.toBaseModelNamedDatabase(modelDomain));
    }
    List<T> listModelDomainForFBDS = _cloneListModelDomain(newListModelDomainForFBDS);
    ResponseGenericBoolAndDomainException response = _updateModelToNamedDatabaseFBDS
        .updateModelToNamedDatabaseFBDS(modelDomain,listModelDomainForFBDS);
    if(response.isSuccessResponse) {
      return await updateModelToNamedDatabaseThereIsParameterDataSource
          .updateModelToNamedDatabaseThereIsParameterDataSource(_converterToBaseModelNamedDatabase.toBaseModelNamedDatabase(modelDomain));
    } else {
      return Response.exception(response.getException);
    }
  }

  Future<Response<BaseTypeParameter,BaseException>> _baseUpdateListModelToNamedDatabaseThereIsParameter(
      UpdateListModelToNamedDatabaseThereIsParameterDataSource<X> updateListModelToNamedDatabaseThereIsParameterDataSource,
      List<T> newListModelDomain,
      List<T> newListModelDomainForFBDS)
  async {
    if(_converterToBaseListModelNamedDatabase == null) {
      return throw LocalException(this,constDeveloper,"ConverterToBaseListModelNamedDatabase null");
    }
    BaseListModelDomain<T> baseListModelDomain = BaseListModelDomain(_cloneListModelDomain(newListModelDomain));
    if(_updateListModelToNamedDatabaseFBDS == null) {
      return await updateListModelToNamedDatabaseThereIsParameterDataSource
          .updateListModelToNamedDatabaseThereIsParameterDataSource(_converterToBaseListModelNamedDatabase.toBaseListModelNamedDatabase(baseListModelDomain));
    }
    List<T> listModelDomainForFBDSUsingGetList = _cloneListModelDomain(newListModelDomainForFBDS);
    ResponseGenericBoolAndDomainException response = _updateListModelToNamedDatabaseFBDS
        .updateListModelToNamedDatabaseFBDS(baseListModelDomain,listModelDomainForFBDSUsingGetList);
    if(response.isSuccessResponse) {
      return await updateListModelToNamedDatabaseThereIsParameterDataSource
          .updateListModelToNamedDatabaseThereIsParameterDataSource(_converterToBaseListModelNamedDatabase.toBaseListModelNamedDatabase(baseListModelDomain));
    } else {
      return Response.exception(response.getException);
    }
  }

  Future<Response<BaseTypeParameter,BaseException>> _baseDeleteModelToNamedDatabaseThereIsParameter(
      DeleteModelToNamedDatabaseThereIsParameterDataSource<Z> deleteModelToNamedDatabaseThereIsParameterDataSource,
      T newModelDomain,
      List<T> newListModelDomainForFBDS)
  async {
    if(_converterToBaseModelNamedDatabase == null) {
      return throw LocalException(this,constDeveloper,"ConverterToBaseModelNamedDatabase null");
    }
    T modelDomain = cloneModelDomain(newModelDomain);
    if(_deleteModelToNamedDatabaseFBDS == null) {
      return await deleteModelToNamedDatabaseThereIsParameterDataSource
          .deleteModelToNamedDatabaseThereIsParameterDataSource(_converterToBaseModelNamedDatabase.toBaseModelNamedDatabase(modelDomain));
    }
    List<T> listModelDomainForFBDS = _cloneListModelDomain(newListModelDomainForFBDS);
    ResponseGenericBoolAndDomainException response = _deleteModelToNamedDatabaseFBDS
        .deleteModelToNamedDatabaseFBDS(modelDomain,listModelDomainForFBDS);
    if(response.isSuccessResponse) {
      return await deleteModelToNamedDatabaseThereIsParameterDataSource
          .deleteModelToNamedDatabaseThereIsParameterDataSource(_converterToBaseModelNamedDatabase.toBaseModelNamedDatabase(modelDomain));
    } else {
      return Response.exception(response.getException);
    }
  }

  Future<Response<BaseTypeParameter,BaseException>> _baseDeleteListModelToNamedDatabaseThereIsParameter(
      DeleteListModelToNamedDatabaseThereIsParameterDataSource<X> deleteListModelToNamedDatabaseThereIsParameterDataSource,
      List<T> newListModelDomain,
      List<T> newListModelDomainForFBDS)
  async {
    if(_converterToBaseListModelNamedDatabase == null) {
      return throw LocalException(this,constDeveloper,"ConverterToBaseListModelNamedDatabase null");
    }
    BaseListModelDomain<T> baseListModelDomain = BaseListModelDomain(_cloneListModelDomain(newListModelDomain));
    if(_deleteListModelToNamedDatabaseFBDS == null) {
      return await deleteListModelToNamedDatabaseThereIsParameterDataSource
          .deleteListModelToNamedDatabaseThereIsParameterDataSource(_converterToBaseListModelNamedDatabase.toBaseListModelNamedDatabase(baseListModelDomain));
    }
    List<T> listModelDomainForFBDS = _cloneListModelDomain(newListModelDomainForFBDS);
    ResponseGenericBoolAndDomainException response = _deleteListModelToNamedDatabaseFBDS
        .deleteListModelToNamedDatabaseFBDS(baseListModelDomain,listModelDomainForFBDS);
    if(response.isSuccessResponse) {
      return await deleteListModelToNamedDatabaseThereIsParameterDataSource
          .deleteListModelToNamedDatabaseThereIsParameterDataSource(_converterToBaseListModelNamedDatabase.toBaseListModelNamedDatabase(baseListModelDomain));
    } else {
      return Response.exception(response.getException);
    }
  }

  Response<List<T>,BaseException> _baseRunIteratorForGetListModel(BaseTypeParameter<EnumIterator> baseTypeParameterForBaseIterator) {
    return _getBaseListModel(EnumBaseListModelDomainVM.getListModelFromNamedDatabaseThereIsParameterAndNoThereIsParameter)
        .runIteratorForGetListModel(baseTypeParameterForBaseIterator, _mapEnumAndBaseIterator);
  }

  Response<bool, BaseException> _baseInsertModelToGetListModel(T modelDomain) {
    return _getBaseListModel(EnumBaseListModelDomainVM.getListModelFromNamedDatabaseThereIsParameterAndNoThereIsParameter)
        .insertModelToGetListModel(cloneModelDomain(modelDomain));
  }

  Response<bool, BaseException> _baseInsertListModelToGetListModel(List<T> listModelDomain) {
    return _getBaseListModel(EnumBaseListModelDomainVM.getListModelFromNamedDatabaseThereIsParameterAndNoThereIsParameter)
        .insertListModelToGetListModel(_cloneListModelDomain(listModelDomain));
  }

  Response<bool, BaseException> _baseUpdateModelToGetListModel(T modelDomain) {
    return _getBaseListModel(EnumBaseListModelDomainVM.getListModelFromNamedDatabaseThereIsParameterAndNoThereIsParameter)
        .updateModelToGetListModel(cloneModelDomain(modelDomain));
  }

  Response<bool, BaseException> _baseUpdateListModelToGetListModel(List<T> listModelDomain) {
    return _getBaseListModel(EnumBaseListModelDomainVM.getListModelFromNamedDatabaseThereIsParameterAndNoThereIsParameter)
        .updateListModelToGetListModel(_cloneListModelDomain(listModelDomain));
  }

  Response<bool, BaseException> _baseDeleteModelToGetListModel(T modelDomain) {
    return _getBaseListModel(EnumBaseListModelDomainVM.getListModelFromNamedDatabaseThereIsParameterAndNoThereIsParameter)
        .deleteModelToGetListModel(cloneModelDomain(modelDomain));
  }

  Response<bool, BaseException> _baseDeleteListModelToGetListModel(List<T> listModelDomain) {
    return _getBaseListModel(EnumBaseListModelDomainVM.getListModelFromNamedDatabaseThereIsParameterAndNoThereIsParameter)
        .deleteListModelToGetListModel(_cloneListModelDomain(listModelDomain));
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
      if(!streamController.isClosed) {
        streamController.close();
      }
    }
  }
}