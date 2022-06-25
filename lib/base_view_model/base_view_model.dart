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
import 'package:library_architecture_mvvm_modify/base_data_source/interface_data_source/data_source.dart';
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
import 'package:library_architecture_mvvm_modify/base_type_parameter/bool_type_parameter.dart';
import 'package:library_architecture_mvvm_modify/base_view_model/enums_for_view_model/enum_base_list_model_domain_vm.dart';
import 'package:library_architecture_mvvm_modify/base_view_model/enums_for_view_model/enum_base_model_domain_vm.dart';
import 'package:library_architecture_mvvm_modify/base_view_model/enums_for_view_model/enum_base_type_parameter_for_getters_vm.dart';
import 'package:library_architecture_mvvm_modify/constants.dart';
import 'package:library_architecture_mvvm_modify/response.dart';
import 'package:library_architecture_mvvm_modify/response_generic_bool_and_domain_exception.dart';

typedef ItemCreator<S> = S Function();

abstract class BaseViewModel<T extends BaseModelDomain,Y extends BaseListModelDomain<T>,Z extends BaseModelNamedDatabase<T>,X extends BaseListModelNamedDatabase<Y,Z>,C extends Enum> implements BaseDispose
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
  final Map<EnumBaseModelDomainVM,StreamController<T>> _mapEnumBaseModelDomainVMAndStreamControllerForBaseModelDomain = {};
  final Map<EnumBaseListModelDomainVM,StreamController<List<T>>> _mapEnumBaseListModelDomainVMAndStreamControllerForListBaseModelDomain = {};
  final Map<EnumBaseTypeParameterForGettersVM,BaseTypeParameter> _mapEnumBaseTypeParameterForGettersVMAndBaseTypeParameter = {
    EnumBaseTypeParameterForGettersVM.getListModelFromNamedDatabaseThereIsParameter : BoolTypeParameter(true),
    EnumBaseTypeParameterForGettersVM.getModelFromNamedDatabaseThereIsParameter : BoolTypeParameter(true)
  };

  /* Maps And BaseTypeParameterForBaseIterator For Iterator */
  final Map<C,BaseIterator<T>> _mapEnumAndBaseIterator;
  BaseTypeParameter<C> _baseTypeParameterForBaseIterator;

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
      this._baseTypeParameterForBaseIterator)
  {
    _initListEnumBaseModelDomainVMAndEnumBaseListModelDomainVM();
    _initMaps();
  }

  BaseViewModel.alternative(
      List<EnumBaseModelDomainVM> newListEnumBaseModelDomainVM,
      List<EnumBaseListModelDomainVM> newListEnumBaseListModelDomainVM,
      this._initCreatorBaseModelDomain,
      this._initCreatorBaseListModelDomain,
      this._mapEnumAndBaseIterator,
      this._baseTypeParameterForBaseIterator)
  {
    _initAlternativeListEnumBaseModelDomainVMAndEnumBaseListModelDomainVM(newListEnumBaseModelDomainVM,newListEnumBaseListModelDomainVM);
    _initMaps();
  }

  @override
  void dispose() {
    _disposeForAnyMap(_mapEnumBaseModelDomainVMAndBaseModelDomain);
    _disposeForAnyMap(_mapEnumBaseListModelDomainVMAndBaseListModelDomain);
    _disposeForAnyMap(_mapEnumBaseTypeParameterForGettersVMAndBaseTypeParameter);
    _disposeForAnyMap(_mapEnumAndBaseIterator);
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
  ///   UserDomain cloneModel(UserDomain model) {
  ///     return UserDomain(model.uniqueId,model.name);
  ///   }
  ///
  @protected
  T cloneModel(T model);

  List<T> _cloneListModel(List<T> listModel) {
    if(listModel.isEmpty) {
      return [];
    }
    List<T> list  = List.empty(growable: true);
    list.addAll(listModel);
    return list;
  }

  /// End Clone **/

  /// Start DataSource **/
  ///
  @protected
  @nonVirtual
  Future<Response<List<T>, BaseException>> getListModelFromNamedDatabaseAndUseTheSetters()
  {
    return _baseGetListModelFromNamedDatabaseAndUseTheSetters(
        _dataSource as GetListModelFromNamedDatabaseDataSource<X>);
  }

  // start getListThereIsParameter 3
  @protected
  @nonVirtual
  Future<Response<List<T>, BaseException>> getListModelFromNamedDatabaseThereIsParameterAndUseTheSetters()
  {
    return _baseGetListModelFromNamedDatabaseThereIsParameterAndUseTheSetters(
        _dataSource as  GetListModelFromNamedDatabaseThereIsParameterDataSource<X>,
        getBaseTypeParameterForGetters(EnumBaseTypeParameterForGettersVM.getListModelFromNamedDatabaseThereIsParameter));
  }

  @protected
  @nonVirtual
  Future<Response<List<T>, BaseException>> setBaseTypeParameterForGettersAndGetListModelFromNamedDatabaseThereIsParameterAndUseTheSetters(
      BaseTypeParameter baseTypeParameter)
  {
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
    return _baseGetListModelFromNamedDatabaseThereIsParameterAndUseTheSetters(
        _dataSource as  GetListModelFromNamedDatabaseThereIsParameterDataSource<X>,
        baseTypeParameter);
  }
  // end getListThereIsParameter 3

  // start get 3
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
    return _baseGetModelFromNamedDatabaseThereIsParameterAndUseTheSetters(
        _dataSource as GetModelFromNamedDatabaseThereIsParameterDataSource<Z>,
        baseTypeParameter);
  }
  // end get 3

  // start insert 6
  @protected
  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> insertModelToNamedDatabaseThereIsParameter() {
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
    return _baseRunIteratorForGetListModel(getBaseTypeParameterForBaseIterator);
  }
  
  @protected
  @nonVirtual
  Response<List<T>, BaseException> setBaseTypeParameterForBaseIteratorAndRunIteratorForGetListModel(BaseTypeParameter<C> baseTypeParameterForBaseIterator) {
    setBaseTypeParameterForBaseIterator = baseTypeParameterForBaseIterator;
    return _baseRunIteratorForGetListModel(getBaseTypeParameterForBaseIterator);
  }

  @protected
  @nonVirtual
  Response<List<T>, BaseException> defaultRunIteratorForGetListModel(BaseTypeParameter<C> baseTypeParameterForBaseIterator) {
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
      C operation)
  {
    _mapEnumAndBaseIterator[operation] = baseIterator;
  }

  @protected
  @nonVirtual
  BaseTypeParameter<C> get getBaseTypeParameterForBaseIterator {
    return _baseTypeParameterForBaseIterator;
  }

  @protected
  @nonVirtual
  set setBaseTypeParameterForBaseIterator(BaseTypeParameter<C> baseTypeParameterForBaseIterator) {
    _baseTypeParameterForBaseIterator = baseTypeParameterForBaseIterator;
  }

  @protected
  @nonVirtual
  BaseTypeParameter getBaseTypeParameterForGetters(EnumBaseTypeParameterForGettersVM operation) {
    return _mapEnumBaseTypeParameterForGettersVMAndBaseTypeParameter[operation];
  }

  @protected
  @nonVirtual
  void setBaseTypeParameterForGetters(
      BaseTypeParameter baseTypeParameter,
      EnumBaseTypeParameterForGettersVM operation)
  {
    _mapEnumBaseTypeParameterForGettersVMAndBaseTypeParameter[operation] = baseTypeParameter;
  }

  /// End Base/EnumTypeParameter **/

  /// Start Model **/

  @protected
  @nonVirtual
  T getModel(EnumBaseModelDomainVM operation) {
    if(!_mapEnumBaseModelDomainVMAndBaseModelDomain.containsKey(operation)) {
      return throw LocalException(constDeveloper,"$operation not found");
    }
    return _mapEnumBaseModelDomainVMAndBaseModelDomain[operation];
  }

  @protected
  @nonVirtual
  void setModel(T newModel,EnumBaseModelDomainVM operation) {
    if(!_mapEnumBaseModelDomainVMAndBaseModelDomain.containsKey(operation)) {
      throw LocalException(constDeveloper,"$operation not found");
    }
    _mapEnumBaseModelDomainVMAndBaseModelDomain[operation] = newModel;
  }

  @protected
  @nonVirtual
  Future<T> getFutureModel(EnumBaseModelDomainVM operation) async {
    if(!_mapEnumBaseModelDomainVMAndBaseModelDomain.containsKey(operation)) {
      return throw LocalException(constDeveloper,"$operation not found");
    }
    return _mapEnumBaseModelDomainVMAndBaseModelDomain[operation];
  }

  @protected
  @nonVirtual
  Stream<T> getStreamModel(EnumBaseModelDomainVM operation) {
    if(!_mapEnumBaseModelDomainVMAndStreamControllerForBaseModelDomain.containsKey(operation)) {
      return throw LocalException(constDeveloper,"$operation not found");
    }
    return _mapEnumBaseModelDomainVMAndStreamControllerForBaseModelDomain[operation].stream;
  }

  @protected
  @nonVirtual
  void notifyStreamModel(EnumBaseModelDomainVM operation) {
    if(!_mapEnumBaseModelDomainVMAndStreamControllerForBaseModelDomain.containsKey(operation) || !_mapEnumBaseModelDomainVMAndBaseModelDomain.containsKey(operation)) {
      throw LocalException(constDeveloper,"$operation not found");
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
      return throw LocalException(constDeveloper,"$operation not found");
    }
    return _mapEnumBaseListModelDomainVMAndBaseListModelDomain[operation].getListModelDomain;
  }

  @protected
  @nonVirtual
  void setListModel(List<T> newModel,EnumBaseListModelDomainVM operation) {
    if(!_mapEnumBaseListModelDomainVMAndBaseListModelDomain.containsKey(operation)) {
      throw LocalException(constDeveloper,"$operation not found");
    }
    _mapEnumBaseListModelDomainVMAndBaseListModelDomain[operation].setListModelDomain = newModel;
  }

  @protected
  @nonVirtual
  Future<List<T>> getFutureListModel(EnumBaseListModelDomainVM operation) async {
    if(!_mapEnumBaseListModelDomainVMAndBaseListModelDomain.containsKey(operation)) {
      return throw LocalException(constDeveloper,"$operation not found");
    }
    return _mapEnumBaseListModelDomainVMAndBaseListModelDomain[operation].getListModelDomain;
  }

  @protected
  @nonVirtual
  Stream<List<T>> getStreamListModel(EnumBaseListModelDomainVM operation) {
    if(!_mapEnumBaseListModelDomainVMAndStreamControllerForListBaseModelDomain.containsKey(operation)) {
      return throw LocalException(constDeveloper,"$operation not found");
    }
    return _mapEnumBaseListModelDomainVMAndStreamControllerForListBaseModelDomain[operation].stream;
  }

  @protected
  @nonVirtual
  void notifyStreamListModel(EnumBaseListModelDomainVM operation) {
    if(!_mapEnumBaseListModelDomainVMAndStreamControllerForListBaseModelDomain.containsKey(operation) || !_mapEnumBaseListModelDomainVMAndBaseListModelDomain.containsKey(operation)) {
      throw LocalException(constDeveloper,"$operation not found");
    }
    _mapEnumBaseListModelDomainVMAndStreamControllerForListBaseModelDomain[operation]
        .add(_mapEnumBaseListModelDomainVMAndBaseListModelDomain[operation].getListModelDomain);
  }

  /// End ListModel **/

  /// Start BaseListModel **/

  Y _getBaseListModel(EnumBaseListModelDomainVM operation) {
    if(!_mapEnumBaseListModelDomainVMAndBaseListModelDomain.containsKey(operation)) {
      return throw LocalException(constDeveloper,"$operation not found");
    }
    return _mapEnumBaseListModelDomainVMAndBaseListModelDomain[operation];
  }

  /// End BaseListModel **/

  void _initListEnumBaseModelDomainVMAndEnumBaseListModelDomainVM() {
    if(_dataSource is DataSource) {
      _listEnumBaseModelDomainVM.addAll(EnumBaseModelDomainVM.values);
      _listEnumBaseListModelDomainVM.addAll(EnumBaseListModelDomainVM.values);
      return;
    }
    if(_dataSource is InsertModelToNamedDatabaseThereIsParameterDataSource) {
      _listEnumBaseModelDomainVM.add(EnumBaseModelDomainVM.insertModelToNamedDatabaseThereIsParameter);
    }
    if(_dataSource is UpdateModelToNamedDatabaseThereIsParameterDataSource) {
      _listEnumBaseModelDomainVM.add(EnumBaseModelDomainVM.updateModelToNamedDatabaseThereIsParameter);
    }
    if(_dataSource is DeleteModelToNamedDatabaseThereIsParameterDataSource) {
      _listEnumBaseModelDomainVM.add(EnumBaseModelDomainVM.deleteModelToNamedDatabaseThereIsParameter);
    }
    if(_dataSource is GetModelFromNamedDatabaseThereIsParameterDataSource) {
      _listEnumBaseModelDomainVM.add(EnumBaseModelDomainVM.getModelFromNamedDatabaseThereIsParameter);
    }
    if(_dataSource is InsertListModelToNamedDatabaseThereIsParameterDataSource) {
      _listEnumBaseListModelDomainVM.add(EnumBaseListModelDomainVM.insertListModelToNamedDatabaseThereIsParameter);
    }
    if(_dataSource is UpdateListModelToNamedDatabaseThereIsParameterDataSource) {
      _listEnumBaseListModelDomainVM.add(EnumBaseListModelDomainVM.updateListModelToNamedDatabaseThereIsParameter);
    }
    if(_dataSource is DeleteListModelToNamedDatabaseThereIsParameterDataSource) {
      _listEnumBaseListModelDomainVM.add(EnumBaseListModelDomainVM.deleteListModelToNamedDatabaseThereIsParameter);
    }
    if(_dataSource is GetListModelFromNamedDatabaseThereIsParameterDataSource) {
      _listEnumBaseModelDomainVM.add(EnumBaseModelDomainVM.getListModelFromNamedDatabaseThereIsParameterAndNoThereIsParameter);
      _listEnumBaseListModelDomainVM.add(EnumBaseListModelDomainVM.getListModelFromNamedDatabaseThereIsParameterAndNoThereIsParameter);
    } else if(_dataSource is GetListModelFromNamedDatabaseDataSource) {
      _listEnumBaseModelDomainVM.add(EnumBaseModelDomainVM.getListModelFromNamedDatabaseThereIsParameterAndNoThereIsParameter);
      _listEnumBaseListModelDomainVM.add(EnumBaseListModelDomainVM.getListModelFromNamedDatabaseThereIsParameterAndNoThereIsParameter);
    }
  }

  void _initAlternativeListEnumBaseModelDomainVMAndEnumBaseListModelDomainVM(
      List<EnumBaseModelDomainVM> newListEnumBaseModelDomainVM,
      List<EnumBaseListModelDomainVM> newListEnumBaseListModelDomainVM)
  {
    if(newListEnumBaseModelDomainVM != null) {
      _listEnumBaseModelDomainVM.addAll(newListEnumBaseModelDomainVM);
    }
    if(newListEnumBaseListModelDomainVM != null) {
      _listEnumBaseListModelDomainVM.addAll(newListEnumBaseListModelDomainVM);
    }
  }

  void _initMaps() {
    _mapEnumBaseModelDomainVMAndBaseModelDomain.addAll(_creationAndGetMapEnumBaseModelDomainVMAndBaseModelDomain());
    _mapEnumBaseModelDomainVMAndStreamControllerForBaseModelDomain.addAll(_creationAndGetMapEnumBaseModelDomainVMAndStreamControllerForBaseModelDomain());
    _mapEnumBaseListModelDomainVMAndBaseListModelDomain.addAll(_creationAndGetMapEnumBaseListModelDomainVMAndBaseListModelDomain());
    _mapEnumBaseListModelDomainVMAndStreamControllerForListBaseModelDomain.addAll(_creationAndGetMapEnumBaseListModelDomainVMAndStreamControllerForListBaseModelDomain());
  }

  Map<EnumBaseModelDomainVM,T> _creationAndGetMapEnumBaseModelDomainVMAndBaseModelDomain() {
    if(_listEnumBaseModelDomainVM.isEmpty) {
      return {};
    }
    Map<EnumBaseModelDomainVM,T> map = {};
    for(EnumBaseModelDomainVM enumBaseModelDomainVM in _listEnumBaseModelDomainVM) {
      map[enumBaseModelDomainVM] = _initCreatorBaseModelDomain();
    }
    return map;
  }

  Map<EnumBaseModelDomainVM,StreamController<T>> _creationAndGetMapEnumBaseModelDomainVMAndStreamControllerForBaseModelDomain() {
    if(_listEnumBaseModelDomainVM.isEmpty) {
      return {};
    }
    Map<EnumBaseModelDomainVM,StreamController<T>> map = {};
    for (EnumBaseModelDomainVM enumBaseModelDomainVM in _listEnumBaseModelDomainVM) {
      map[enumBaseModelDomainVM] = StreamController<T>.broadcast();
    }
    return map;
  }

  Map<EnumBaseListModelDomainVM,Y> _creationAndGetMapEnumBaseListModelDomainVMAndBaseListModelDomain() {
    if(_listEnumBaseListModelDomainVM.isEmpty) {
      return {};
    }
    Map<EnumBaseListModelDomainVM,Y> map = {};
    for(EnumBaseListModelDomainVM enumBaseListModelDomainVM in _listEnumBaseListModelDomainVM) {
      map[enumBaseListModelDomainVM] = _initCreatorBaseListModelDomain();
    }
    return map;
  }

  Map<EnumBaseListModelDomainVM,StreamController<List<T>>> _creationAndGetMapEnumBaseListModelDomainVMAndStreamControllerForListBaseModelDomain() {
    if(_listEnumBaseListModelDomainVM.isEmpty) {
      return {};
    }
    Map<EnumBaseListModelDomainVM,StreamController<List<T>>> map = {};
    for(EnumBaseListModelDomainVM enumBaseListModelDomainVM in _listEnumBaseListModelDomainVM) {
      map[enumBaseListModelDomainVM] = StreamController<List<T>>.broadcast();
    }
    return map;
  }

  Future<Response<List<T>,BaseException>> _baseGetListModelFromNamedDatabaseAndUseTheSetters(
      GetListModelFromNamedDatabaseDataSource<X> getListModelFromNamedDatabaseDataSource)
  async {
    Response<X,BaseException> response = await getListModelFromNamedDatabaseDataSource
        .getListModelFromNamedDatabaseDataSource();
    if(response.isSuccessResponse) {
      Y baseListModelDomain = _getBaseListModel(EnumBaseListModelDomainVM.getListModelFromNamedDatabaseThereIsParameterAndNoThereIsParameter);
      baseListModelDomain.setListModelDomainByBaseListModelDomain = response.getData.toBaseListModelDomain();
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
      baseListModelDomain.setListModelDomainByBaseListModelDomain = response.getData.toBaseListModelDomain();
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
      T model,
      List<T> listModelForFBDS)
  async {
    if(_converterToBaseModelNamedDatabase == null) {
      return throw LocalException(constDeveloper,"ConverterToBaseModelNamedDatabase null");
    }
    T modelDomain = cloneModel(model);
    if(_insertModelToNamedDatabaseFBDS == null) {
      return await insertModelToNamedDatabaseThereIsParameterDataSource
          .insertModelToNamedDatabaseThereIsParameterDataSource(_converterToBaseModelNamedDatabase.toBaseModelNamedDatabase(modelDomain));
    }
    List<T> listModelDomainForFBDS = _cloneListModel(listModelForFBDS);
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
      List<T> listModel,
      List<T> listModelForFBDS)
  async {
    if(_converterToBaseListModelNamedDatabase == null) {
      return throw LocalException(constDeveloper,"ConverterToBaseListModelNamedDatabase null");
    }
    BaseListModelDomain<T> baseListModelDomain = BaseListModelDomain(_cloneListModel(listModel));
    if(_insertListModelToNamedDatabaseFBDS == null) {
      return await insertListModelToNamedDatabaseThereIsParameterDataSource
          .insertListModelToNamedDatabaseThereIsParameterDataSource(_converterToBaseListModelNamedDatabase.toBaseListModelNamedDatabase(baseListModelDomain));
    }
    List<T> listModelDomainForFBDS = _cloneListModel(listModelForFBDS);
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
      T model,
      List<T> listModelForFBDS)
  async {
    if(_converterToBaseModelNamedDatabase == null) {
      return throw LocalException(constDeveloper,"ConverterToBaseModelNamedDatabase null");
    }
    T modelDomain = cloneModel(model);
    if(_updateModelToNamedDatabaseFBDS == null) {
      return await updateModelToNamedDatabaseThereIsParameterDataSource
          .updateModelToNamedDatabaseThereIsParameterDataSource(_converterToBaseModelNamedDatabase.toBaseModelNamedDatabase(modelDomain));
    }
    List<T> listModelDomainForFBDS = _cloneListModel(listModelForFBDS);
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
      List<T> listModel,
      List<T> listModelForFBDS)
  async {
    if(_converterToBaseListModelNamedDatabase == null) {
      return throw LocalException(constDeveloper,"ConverterToBaseListModelNamedDatabase null");
    }
    BaseListModelDomain<T> baseListModelDomain = BaseListModelDomain(_cloneListModel(listModel));
    if(_updateListModelToNamedDatabaseFBDS == null) {
      return await updateListModelToNamedDatabaseThereIsParameterDataSource
          .updateListModelToNamedDatabaseThereIsParameterDataSource(_converterToBaseListModelNamedDatabase.toBaseListModelNamedDatabase(baseListModelDomain));
    }
    List<T> listModelDomainForFBDSUsingGetList = _cloneListModel(listModelForFBDS);
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
      T model,
      List<T> listModelForFBDS)
  async {
    if(_converterToBaseModelNamedDatabase == null) {
      return throw LocalException(constDeveloper,"ConverterToBaseModelNamedDatabase null");
    }
    T modelDomain = cloneModel(model);
    if(_deleteModelToNamedDatabaseFBDS == null) {
      return await deleteModelToNamedDatabaseThereIsParameterDataSource
          .deleteModelToNamedDatabaseThereIsParameterDataSource(_converterToBaseModelNamedDatabase.toBaseModelNamedDatabase(modelDomain));
    }
    List<T> listModelDomainForFBDS = _cloneListModel(listModelForFBDS);
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
      List<T> listModel,
      List<T> listModelForFBDS)
  async {
    if(_converterToBaseListModelNamedDatabase == null) {
      return throw LocalException(constDeveloper,"ConverterToBaseListModelNamedDatabase null");
    }
    BaseListModelDomain<T> baseListModelDomain = BaseListModelDomain(_cloneListModel(listModel));
    if(_deleteListModelToNamedDatabaseFBDS == null) {
      return await deleteListModelToNamedDatabaseThereIsParameterDataSource
          .deleteListModelToNamedDatabaseThereIsParameterDataSource(_converterToBaseListModelNamedDatabase.toBaseListModelNamedDatabase(baseListModelDomain));
    }
    List<T> listModelDomainForFBDS = _cloneListModel(listModelForFBDS);
    ResponseGenericBoolAndDomainException response = _deleteListModelToNamedDatabaseFBDS
        .deleteListModelToNamedDatabaseFBDS(baseListModelDomain,listModelDomainForFBDS);
    if(response.isSuccessResponse) {
      return await deleteListModelToNamedDatabaseThereIsParameterDataSource
          .deleteListModelToNamedDatabaseThereIsParameterDataSource(_converterToBaseListModelNamedDatabase.toBaseListModelNamedDatabase(baseListModelDomain));
    } else {
      return Response.exception(response.getException);
    }
  }

  Response<List<T>,BaseException> _baseRunIteratorForGetListModel(BaseTypeParameter<C> baseTypeParameterForBaseIterator) {
    return _getBaseListModel(EnumBaseListModelDomainVM.getListModelFromNamedDatabaseThereIsParameterAndNoThereIsParameter)
        .runIteratorForGetListModel(baseTypeParameterForBaseIterator, _mapEnumAndBaseIterator);
  }

  Response<bool, BaseException> _baseInsertModelToGetListModel(T model) {
    return _getBaseListModel(EnumBaseListModelDomainVM.getListModelFromNamedDatabaseThereIsParameterAndNoThereIsParameter)
        .insertModelToGetListModel(cloneModel(model));
  }

  Response<bool, BaseException> _baseInsertListModelToGetListModel(List<T> listModel) {
    return _getBaseListModel(EnumBaseListModelDomainVM.getListModelFromNamedDatabaseThereIsParameterAndNoThereIsParameter)
        .insertListModelToGetListModel(_cloneListModel(listModel));
  }

  Response<bool, BaseException> _baseUpdateModelToGetListModel(T model) {
    return _getBaseListModel(EnumBaseListModelDomainVM.getListModelFromNamedDatabaseThereIsParameterAndNoThereIsParameter)
        .updateModelToGetListModel(cloneModel(model));
  }

  Response<bool, BaseException> _baseUpdateListModelToGetListModel(List<T> listModel) {
    return _getBaseListModel(EnumBaseListModelDomainVM.getListModelFromNamedDatabaseThereIsParameterAndNoThereIsParameter)
        .updateListModelToGetListModel(_cloneListModel(listModel));
  }

  Response<bool, BaseException> _baseDeleteModelToGetListModel(T model) {
    return _getBaseListModel(EnumBaseListModelDomainVM.getListModelFromNamedDatabaseThereIsParameterAndNoThereIsParameter)
        .deleteModelToGetListModel(cloneModel(model));
  }

  Response<bool, BaseException> _baseDeleteListModelToGetListModel(List<T> listModel) {
    return _getBaseListModel(EnumBaseListModelDomainVM.getListModelFromNamedDatabaseThereIsParameterAndNoThereIsParameter)
        .deleteListModelToGetListModel(_cloneListModel(listModel));
  }

  void _disposeForAnyMap(Map map) {
    if(map.isEmpty) {
      return;
    }
    map.clear();
  }

  void _disposeForMapEnumAndStreamController(Map<Enum,StreamController> map) {
    if(map.isEmpty) {
      return;
    }
    for (StreamController streamController in map.values) {
      if (streamController == null) {
        continue;
      }
      if (!streamController.isClosed) {
        streamController.close();
      }
    }
    map.clear();
  }
}