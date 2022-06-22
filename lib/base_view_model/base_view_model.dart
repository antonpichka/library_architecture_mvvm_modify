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
import 'package:library_architecture_mvvm_modify/base_iterator/base_iterator.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_list_model/base_list_model_domain.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_list_model/base_list_model_named_database.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_model_domain.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_model_named_database.dart';
import 'package:library_architecture_mvvm_modify/base_type_parameter/base_type_parameter.dart';
import 'package:library_architecture_mvvm_modify/base_type_parameter/bool_type_parameter.dart';
import 'package:library_architecture_mvvm_modify/base_view_model/enums_for_view_model/enum_base_list_model_domain_vm.dart';
import 'package:library_architecture_mvvm_modify/base_view_model/enums_for_view_model/enum_base_model_domain_vm.dart';
import 'package:library_architecture_mvvm_modify/base_view_model/enums_for_view_model/enum_base_type_parameter_for_get_model_named_database_and_get_list_named_database_vm.dart';
import 'package:library_architecture_mvvm_modify/response.dart';
import 'package:library_architecture_mvvm_modify/response_generic_bool_and_domain_exception.dart';

typedef ItemCreator<S> = S Function();

abstract class BaseViewModel<T extends BaseModelDomain,Y extends BaseListModelDomain<T>,Z extends BaseModelNamedDatabase<T>,X extends BaseListModelNamedDatabase<Y,Z>,C extends Enum> implements BaseDispose
{
  /* Init DataSource */
  final Object _dataSource;

  /* Init Objects */
  final List<EnumBaseModelDomainVM> _listEnumBaseModelDomainVM;
  final List<EnumBaseListModelDomainVM> _listEnumBaseListModelDomainVM;

  /* Set Default Model Object */
  final ItemCreator<T> _initCreatorBaseModelDomain;
  final ItemCreator<Y> _initCreatorBaseListModelDomain;

  /* CTMND (Converter To Model Named Database) */
  final ConverterToBaseModelNamedDatabase<T,Z> _converterToBaseModelNamedDatabase;
  final ConverterToBaseListModelNamedDatabase<Y,X> _converterToBaseListModelNamedDatabase;

  /* FBDS (Function Before Data Source) */
  final InsertModelToNamedDatabaseFBDS<T> _insertModelToNamedDatabaseFBDS;
  final InsertListModelToNamedDatabaseFBDS<T,Y> _insertListModelToNamedDatabaseFBDS;
  final UpdateModelToNamedDatabaseFBDS<T> _updateModelToNamedDatabaseFBDS;
  final UpdateListModelToNamedDatabaseFBDS<T,Y> _updateListModelToNamedDatabaseFBDS;
  final DeleteModelToNamedDatabaseFBDS<T> _deleteModelToNamedDatabaseFBDS;
  final DeleteListModelToNamedDatabaseFBDS<T,Y> _deleteListModelToNamedDatabaseFBDS;

  /* Iterator */
  final Map<C,BaseIterator<T>> _mapEnumAndBaseIterator;
  BaseTypeParameter<C> _baseTypeParameterForBaseIterator;

  final Map<EnumBaseTypeParameterForGetModelNamedDatabaseAndGetListNamedDatabaseVM,BaseTypeParameter> _mapEnumBaseTypeParameterForGetModelNamedDatabaseAndGetListNamedDatabaseVMAndBaseTypeParameter = {
    EnumBaseTypeParameterForGetModelNamedDatabaseAndGetListNamedDatabaseVM.getListModelFromNamedDatabaseThereIsParameter : BoolTypeParameter(true),
    EnumBaseTypeParameterForGetModelNamedDatabaseAndGetListNamedDatabaseVM.getModelFromNamedDatabaseThereIsParameter : BoolTypeParameter(true)
  };
  Map<EnumBaseModelDomainVM,T> _mapEnumBaseModelDomainVMAndBaseModelDomain;
  Map<EnumBaseListModelDomainVM,Y> _mapEnumBaseListModelDomainVMAndBaseListModelDomain;
  Map<EnumBaseModelDomainVM,StreamController<T>> _mapEnumBaseModelDomainVMAndStreamControllerForBaseModelDomain;
  Map<EnumBaseListModelDomainVM,StreamController<List<T>>> _mapEnumBaseListModelDomainVMAndStreamControllerForListBaseModelDomain;

  BaseViewModel(
      this._dataSource,
      this._listEnumBaseModelDomainVM,
      this._listEnumBaseListModelDomainVM,
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
      this._baseTypeParameterForBaseIterator);

  @override
  void dispose() {
    _disposeForAnyMap(_mapEnumAndBaseIterator);
    _disposeForAnyMap(_mapEnumBaseTypeParameterForGetModelNamedDatabaseAndGetListNamedDatabaseVMAndBaseTypeParameter);
    _disposeForAnyMap(_mapEnumBaseModelDomainVMAndBaseModelDomain);
    _disposeForAnyMap(_mapEnumBaseListModelDomainVMAndBaseListModelDomain);
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
  @nonVirtual
  Future<Response<List<T>, BaseException>> getListModelFromNamedDatabaseAndUseTheSetters() {
    return _baseGetListModelFromNamedDatabaseAndUseTheSetters(_dataSource as GetListModelFromNamedDatabaseDataSource<X>);
  }

  @nonVirtual
  Future<Response<List<T>, BaseException>> setAndGetListModelFromNamedDatabaseThereIsParameterAndUseTheSetters(BaseTypeParameter newBaseTypeParameter) {
    setBaseTypeParameterForGetModelNamedDatabaseAndGetListNamedDatabase(newBaseTypeParameter, EnumBaseTypeParameterForGetModelNamedDatabaseAndGetListNamedDatabaseVM.getListModelFromNamedDatabaseThereIsParameter);
    return _baseGetListModelFromNamedDatabaseThereIsParameterAndUseTheSetters(_dataSource as GetListModelFromNamedDatabaseThereIsParameterDataSource<X>);
  }

  @nonVirtual
  Future<Response<List<T>, BaseException>> getListModelFromNamedDatabaseThereIsParameterAndUseTheSetters() {
    return _baseGetListModelFromNamedDatabaseThereIsParameterAndUseTheSetters(_dataSource as GetListModelFromNamedDatabaseThereIsParameterDataSource<X>);
  }

  @nonVirtual
  Future<Response<T, BaseException>> setAndGetModelFromNamedDatabaseThereIsParameterAndUseTheSetters(BaseTypeParameter newBaseTypeParameter) {
    setBaseTypeParameterForGetModelNamedDatabaseAndGetListNamedDatabase(newBaseTypeParameter, EnumBaseTypeParameterForGetModelNamedDatabaseAndGetListNamedDatabaseVM.getModelFromNamedDatabaseThereIsParameter);
    return _baseGetModelFromNamedDatabaseThereIsParameterAndUseTheSetters(_dataSource as GetModelFromNamedDatabaseThereIsParameterDataSource<Z>);
  }

  @nonVirtual
  Future<Response<T, BaseException>> getModelFromNamedDatabaseThereIsParameterAndUseTheSetters() {
    return _baseGetModelFromNamedDatabaseThereIsParameterAndUseTheSetters(_dataSource as GetModelFromNamedDatabaseThereIsParameterDataSource<Z>);
  }

  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> setAndInsertModelToNamedDatabaseThereIsParameter(T model) {
    setModel(model, EnumBaseModelDomainVM.insertModelToNamedDatabaseThereIsParameter);
    return _baseInsertModelToNamedDatabaseThereIsParameter(_dataSource as InsertModelToNamedDatabaseThereIsParameterDataSource<Z>);
  }

  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> insertModelToNamedDatabaseThereIsParameter() {
    return _baseInsertModelToNamedDatabaseThereIsParameter(_dataSource as InsertModelToNamedDatabaseThereIsParameterDataSource<Z>);
  }

  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> setAndInsertModelToNamedDatabaseThereIsParameterAndSetListForFBDSUsingGetList(T newModel,List<T> newListModelUsingGetList) {
    setModel(newModel, EnumBaseModelDomainVM.insertModelToNamedDatabaseThereIsParameter);
    setListModel(newListModelUsingGetList, EnumBaseListModelDomainVM.getListModelFromNamedDatabaseThereIsParameterAndNoThereIsParameter);
    return _baseInsertModelToNamedDatabaseThereIsParameter(_dataSource as InsertModelToNamedDatabaseThereIsParameterDataSource<Z>);
  }

  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> setAndInsertListModelToNamedDatabaseThereIsParameter(List<T> newListModel) {
    setListModel(newListModel, EnumBaseListModelDomainVM.insertListModelToNamedDatabaseThereIsParameter);
    return _baseInsertListModelToNamedDatabaseThereIsParameter(_dataSource as InsertListModelToNamedDatabaseThereIsParameterDataSource<X>);
  }

  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> insertListModelToNamedDatabaseThereIsParameter() {
    return _baseInsertListModelToNamedDatabaseThereIsParameter(_dataSource as InsertListModelToNamedDatabaseThereIsParameterDataSource<X>);
  }

  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> setAndInsertListModelToNamedDatabaseThereIsParameterAndSetListForFBDSUsingGetList(List<T> newListModel,List<T> newListModelUsingGetList) {
    setListModel(newListModel, EnumBaseListModelDomainVM.insertListModelToNamedDatabaseThereIsParameter);
    setListModel(newListModelUsingGetList, EnumBaseListModelDomainVM.getListModelFromNamedDatabaseThereIsParameterAndNoThereIsParameter);
    return _baseInsertListModelToNamedDatabaseThereIsParameter(_dataSource as InsertListModelToNamedDatabaseThereIsParameterDataSource<X>);
  }

  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> setAndUpdateModelToNamedDatabaseThereIsParameter(T newModel) {
    setModel(newModel, EnumBaseModelDomainVM.updateModelToNamedDatabaseThereIsParameter);
    return _baseUpdateModelToNamedDatabaseThereIsParameter(_dataSource as UpdateModelToNamedDatabaseThereIsParameterDataSource<Z>);
  }

  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> updateModelToNamedDatabaseThereIsParameter() {
    return _baseUpdateModelToNamedDatabaseThereIsParameter(_dataSource as UpdateModelToNamedDatabaseThereIsParameterDataSource<Z>);
  }

  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> setAndUpdateModelToNamedDatabaseThereIsParameterAndSetListForFBDSUsingGetList(T newModel,List<T> newListModelUsingGetList) {
    setModel(newModel, EnumBaseModelDomainVM.updateModelToNamedDatabaseThereIsParameter);
    setListModel(newListModelUsingGetList, EnumBaseListModelDomainVM.getListModelFromNamedDatabaseThereIsParameterAndNoThereIsParameter);
    return _baseUpdateModelToNamedDatabaseThereIsParameter(_dataSource as UpdateModelToNamedDatabaseThereIsParameterDataSource<Z>);
  }

  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> setAndUpdateListModelToNamedDatabaseThereIsParameter(List<T> newListModel) {
    setListModel(newListModel, EnumBaseListModelDomainVM.updateListModelToNamedDatabaseThereIsParameter);
    return _baseUpdateListModelToNamedDatabaseThereIsParameter(_dataSource as UpdateListModelToNamedDatabaseThereIsParameterDataSource<X>);
  }

  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> updateListModelToNamedDatabaseThereIsParameter() {
    return _baseUpdateListModelToNamedDatabaseThereIsParameter(_dataSource as UpdateListModelToNamedDatabaseThereIsParameterDataSource<X>);
  }

  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> setAndUpdateListModelToNamedDatabaseThereIsParameterAndSetListForFBDSUsingGetList(List<T> newListModel,List<T> newListModelUsingGetList) {
    setListModel(newListModel, EnumBaseListModelDomainVM.updateListModelToNamedDatabaseThereIsParameter);
    setListModel(newListModelUsingGetList, EnumBaseListModelDomainVM.getListModelFromNamedDatabaseThereIsParameterAndNoThereIsParameter);
    return _baseUpdateListModelToNamedDatabaseThereIsParameter(_dataSource as UpdateListModelToNamedDatabaseThereIsParameterDataSource<X>);
  }

  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> setAndDeleteModelToNamedDatabaseThereIsParameter(T newModel) {
    setModel(newModel, EnumBaseModelDomainVM.deleteModelToNamedDatabaseThereIsParameter);
    return _baseDeleteModelToNamedDatabaseThereIsParameter(_dataSource as DeleteModelToNamedDatabaseThereIsParameterDataSource<Z>);
  }

  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> deleteModelToNamedDatabaseThereIsParameter() {
    return _baseDeleteModelToNamedDatabaseThereIsParameter(_dataSource as DeleteModelToNamedDatabaseThereIsParameterDataSource<Z>);
  }

  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> setAndDeleteModelToNamedDatabaseThereIsParameterAndSetListForFBDSUsingGetList(T newModel,List<T> newListModelUsingGetList) {
    setModel(newModel, EnumBaseModelDomainVM.deleteModelToNamedDatabaseThereIsParameter);
    setListModel(newListModelUsingGetList, EnumBaseListModelDomainVM.getListModelFromNamedDatabaseThereIsParameterAndNoThereIsParameter);
    return _baseDeleteModelToNamedDatabaseThereIsParameter(_dataSource as DeleteModelToNamedDatabaseThereIsParameterDataSource<Z>);
  }

  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> setAndDeleteListModelToNamedDatabaseThereIsParameter(List<T> newListModel) {
    setListModel(newListModel, EnumBaseListModelDomainVM.deleteListModelToNamedDatabaseThereIsParameter);
    return _baseDeleteListModelToNamedDatabaseThereIsParameter(_dataSource as DeleteListModelToNamedDatabaseThereIsParameterDataSource<X>);
  }

  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> deleteListModelToNamedDatabaseThereIsParameter() {
    return _baseDeleteListModelToNamedDatabaseThereIsParameter(_dataSource as DeleteListModelToNamedDatabaseThereIsParameterDataSource<X>);
  }

  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> setAndDeleteListModelToNamedDatabaseThereIsParameterAndSetListForFBDSUsingGetList(List<T> newListModel,List<T> newListModelUsingGetList) {
    setListModel(newListModel, EnumBaseListModelDomainVM.deleteListModelToNamedDatabaseThereIsParameter);
    setListModel(newListModelUsingGetList, EnumBaseListModelDomainVM.getListModelFromNamedDatabaseThereIsParameterAndNoThereIsParameter);
    return _baseDeleteListModelToNamedDatabaseThereIsParameter(_dataSource as DeleteListModelToNamedDatabaseThereIsParameterDataSource<X>);
  }

  /// End DataSource **/

  /// Start For Object GetListModel **/
  ///
  @nonVirtual
  Response<List<T>, BaseException> setAndRunIteratorForGetListModel(BaseTypeParameter<C> newBaseTypeParameterForBaseIterator) {
    setBaseTypeParameterForBaseIterator = newBaseTypeParameterForBaseIterator;
    return _baseRunIteratorForGetListModel();
  }

  @nonVirtual
  Response<List<T>, BaseException> runIteratorForGetListModel() {
    return _baseRunIteratorForGetListModel();
  }

  @nonVirtual
  Response<bool, BaseException> insertModelToGetListModel() {
    return _baseInsertModelToGetListModel(getModel(EnumBaseModelDomainVM.insertModelToNamedDatabaseThereIsParameter));
  }

  @nonVirtual
  Response<bool, BaseException> setAndInsertModelToGetListModel(T model) {
    setModel(model, EnumBaseModelDomainVM.insertModelToNamedDatabaseThereIsParameter);
    return _baseInsertModelToGetListModel(getModel(EnumBaseModelDomainVM.insertModelToNamedDatabaseThereIsParameter));
  }
  
  @nonVirtual
  Response<bool, BaseException> setNoGlobalAndInsertModelToGetListModel(T model) {
    return _baseInsertModelToGetListModel(model);
  }

  @nonVirtual
  Response<bool, BaseException> insertListModelToGetListModel() {
    return _baseInsertListModelToGetListModel(getListModel(EnumBaseListModelDomainVM.insertListModelToNamedDatabaseThereIsParameter));
  }

  @nonVirtual
  Response<bool, BaseException> setAndInsertListModelToGetListModel(List<T> listModel) {
    setListModel(listModel, EnumBaseListModelDomainVM.insertListModelToNamedDatabaseThereIsParameter);
    return _baseInsertListModelToGetListModel(getListModel(EnumBaseListModelDomainVM.insertListModelToNamedDatabaseThereIsParameter));
  }

  @nonVirtual
  Response<bool, BaseException> setNoGlobalAndInsertListModelToGetListModel(List<T> listModel) {
    return _baseInsertListModelToGetListModel(listModel);
  }

  @nonVirtual
  Response<bool, BaseException> updateModelToGetListModel() {
    return _baseUpdateModelToGetListModel(getModel(EnumBaseModelDomainVM.updateModelToNamedDatabaseThereIsParameter));
  }

  @nonVirtual
  Response<bool, BaseException> setAndUpdateModelToGetListModel(T model) {
    setModel(model, EnumBaseModelDomainVM.updateModelToNamedDatabaseThereIsParameter);
    return _baseUpdateModelToGetListModel(getModel(EnumBaseModelDomainVM.updateModelToNamedDatabaseThereIsParameter));
  }
  
  @nonVirtual
  Response<bool, BaseException> setNoGlobalAndUpdateModelToGetListModel(T model) {
    return _baseUpdateModelToGetListModel(model);
  }

  @nonVirtual
  Response<bool, BaseException> updateListModelToGetListModel() {
    return _baseUpdateListModelToGetListModel(getListModel(EnumBaseListModelDomainVM.updateListModelToNamedDatabaseThereIsParameter));
  }

  @nonVirtual
  Response<bool, BaseException> setAndUpdateListModelToGetListModel(List<T> listModel) {
    setListModel(listModel, EnumBaseListModelDomainVM.updateListModelToNamedDatabaseThereIsParameter);
    return _baseUpdateListModelToGetListModel(getListModel(EnumBaseListModelDomainVM.updateListModelToNamedDatabaseThereIsParameter));
  }
  
  @nonVirtual
  Response<bool, BaseException> setNoGlobalAndUpdateListModelToGetListModel(List<T> listModel) {
    return _baseUpdateListModelToGetListModel(listModel);
  }

  @nonVirtual
  Response<bool, BaseException> deleteModelToGetListModel() {
    return _baseDeleteModelToGetListModel(getModel(EnumBaseModelDomainVM.deleteModelToNamedDatabaseThereIsParameter));
  }

  @nonVirtual
  Response<bool, BaseException> setAndDeleteModelToGetListModel(T model) {
    setModel(model, EnumBaseModelDomainVM.deleteModelToNamedDatabaseThereIsParameter);
    return _baseDeleteModelToGetListModel(getModel(EnumBaseModelDomainVM.deleteModelToNamedDatabaseThereIsParameter));
  }

  @nonVirtual
  Response<bool, BaseException> setNoGlobalAndDeleteModelToGetListModel(T model) {
    return _baseDeleteModelToGetListModel(model);
  }

  @nonVirtual
  Response<bool, BaseException> deleteListModelToGetListModel() {
    return _baseDeleteListModelToGetListModel(getListModel(EnumBaseListModelDomainVM.deleteListModelToNamedDatabaseThereIsParameter));
  }

  @nonVirtual
  Response<bool, BaseException> setAndDeleteListModelToGetListModel(List<T> listModel) {
    setListModel(listModel, EnumBaseListModelDomainVM.deleteListModelToNamedDatabaseThereIsParameter);
    return _baseDeleteListModelToGetListModel(getListModel(EnumBaseListModelDomainVM.deleteListModelToNamedDatabaseThereIsParameter));
  }
  
  @nonVirtual
  Response<bool, BaseException> setNoGlobalAndDeleteListModelToGetListModel(List<T> listModel) {
    return _baseDeleteListModelToGetListModel(listModel);
  }

  /// End For Object GetListModel **/
  
  /// Start Base/EnumTypeParameter **/

  @nonVirtual
  void setMapEnumAndBaseIterator(
      BaseIterator<T> baseIterator,
      C operation)
  {
    _mapEnumAndBaseIterator[operation] = baseIterator;
  }

  @nonVirtual
  BaseTypeParameter<C> get getBaseTypeParameterForBaseIterator {
    return _baseTypeParameterForBaseIterator;
  }

  @nonVirtual
  set setBaseTypeParameterForBaseIterator(BaseTypeParameter<C> baseTypeParameterForBaseIterator) {
    _baseTypeParameterForBaseIterator = baseTypeParameterForBaseIterator;
  }

  @nonVirtual
  BaseTypeParameter getBaseTypeParameterForGetModelNamedDatabaseAndGetListNamedDatabase(EnumBaseTypeParameterForGetModelNamedDatabaseAndGetListNamedDatabaseVM operation) {
    return _mapEnumBaseTypeParameterForGetModelNamedDatabaseAndGetListNamedDatabaseVMAndBaseTypeParameter[operation];
  }

  @nonVirtual
  void setBaseTypeParameterForGetModelNamedDatabaseAndGetListNamedDatabase(
      BaseTypeParameter baseTypeParameter,
      EnumBaseTypeParameterForGetModelNamedDatabaseAndGetListNamedDatabaseVM operation)
  {
    _mapEnumBaseTypeParameterForGetModelNamedDatabaseAndGetListNamedDatabaseVMAndBaseTypeParameter[operation] = baseTypeParameter;
  }

  /// End Base/EnumTypeParameter **/

  /// Start Model **/

  @nonVirtual
  T getModel(EnumBaseModelDomainVM operation) {
    return _getMapEnumBaseModelDomainVMAndBaseModelDomain[operation];
  }

  @nonVirtual
  void setModel(T newModel,EnumBaseModelDomainVM operation) {
    _getMapEnumBaseModelDomainVMAndBaseModelDomain[operation] = newModel;
  }

  @nonVirtual
  Future<T> getFutureModel(EnumBaseModelDomainVM operation) async {
    return _getMapEnumBaseModelDomainVMAndBaseModelDomain[operation];
  }

  @nonVirtual
  Stream<T> getStreamModel(EnumBaseModelDomainVM operation) {
    return _getMapEnumBaseModelDomainVMAndStreamControllerForBaseModelDomain[operation].stream;
  }

  @nonVirtual
  void notifyStreamModel(EnumBaseModelDomainVM operation) {
    _getMapEnumBaseModelDomainVMAndStreamControllerForBaseModelDomain[operation].add(
        _getMapEnumBaseModelDomainVMAndBaseModelDomain[operation]
    );
  }

  /// End Model **/
  
  /// Start ListModel **/

  @nonVirtual
  List<T> getListModel(EnumBaseListModelDomainVM operation)  {
    return _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[operation].getListModelDomain;
  }
  
  @nonVirtual
  void setListModel(List<T> newModel,EnumBaseListModelDomainVM operation) {
    _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[operation].setListModelDomain = newModel;
  }
  
  @nonVirtual
  Future<List<T>> getFutureListModel(EnumBaseListModelDomainVM operation) async {
    return _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[operation].getListModelDomain;
  }

  @nonVirtual
  Stream<List<T>> getStreamListModel(EnumBaseListModelDomainVM operation) {
    return _getMapEnumBaseListModelDomainVMAndStreamControllerForListBaseModelDomain[operation].stream;
  }

  @nonVirtual
  void notifyStreamListModel(EnumBaseListModelDomainVM operation) {
    _getMapEnumBaseListModelDomainVMAndStreamControllerForListBaseModelDomain[operation].add(
        _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[operation].getListModelDomain
    );
  }

  /// End ListModel **/

  /// Start BaseListModel **/

  Y _getBaseListModel(EnumBaseListModelDomainVM operation) {
    return _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[operation];
  }

  /// End BaseListModel **/

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
      GetListModelFromNamedDatabaseThereIsParameterDataSource<X> getListModelFromNamedDatabaseThereIsParameterDataSource)
  async {
    Response<X,BaseException> response = await getListModelFromNamedDatabaseThereIsParameterDataSource
        .getListModelFromNamedDatabaseThereIsParameterDataSource(_mapEnumBaseTypeParameterForGetModelNamedDatabaseAndGetListNamedDatabaseVMAndBaseTypeParameter[EnumBaseTypeParameterForGetModelNamedDatabaseAndGetListNamedDatabaseVM.getListModelFromNamedDatabaseThereIsParameter]);
    if(response.isSuccessResponse) {
      Y baseListModelDomain = _getBaseListModel(EnumBaseListModelDomainVM.getListModelFromNamedDatabaseThereIsParameterAndNoThereIsParameter);
      baseListModelDomain.setListModelDomainByBaseListModelDomain = response.getData.toBaseListModelDomain();
      return Response.success(baseListModelDomain.getListModelDomain);
    } else {
      return Response.exception(response.getException);
    }
  }

  Future<Response<T,BaseException>> _baseGetModelFromNamedDatabaseThereIsParameterAndUseTheSetters(
      GetModelFromNamedDatabaseThereIsParameterDataSource<Z> getModelFromNamedDatabaseThereIsParameterDataSource)
  async {
    Response<Z,BaseException> response = await getModelFromNamedDatabaseThereIsParameterDataSource
        .getModelFromNamedDatabaseThereIsParameterDataSource(_mapEnumBaseTypeParameterForGetModelNamedDatabaseAndGetListNamedDatabaseVMAndBaseTypeParameter[EnumBaseTypeParameterForGetModelNamedDatabaseAndGetListNamedDatabaseVM.getModelFromNamedDatabaseThereIsParameter]);
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
      InsertModelToNamedDatabaseThereIsParameterDataSource<Z> insertModelToNamedDatabaseThereIsParameterDataSource)
  async {
    if(_converterToBaseModelNamedDatabase == null) {
      return throw Exception("ConverterToBaseModelNamedDatabase null");
    }
    T modelDomain = cloneModel(getModel(EnumBaseModelDomainVM.insertModelToNamedDatabaseThereIsParameter));
    if(_insertModelToNamedDatabaseFBDS == null) {
      return await insertModelToNamedDatabaseThereIsParameterDataSource
          .insertModelToNamedDatabaseThereIsParameterDataSource(_converterToBaseModelNamedDatabase.toBaseModelNamedDatabase(modelDomain));
    }
    List<T> listModelDomainForFBDSUsingGetList = _cloneListModel(getListModel(EnumBaseListModelDomainVM.getListModelFromNamedDatabaseThereIsParameterAndNoThereIsParameter));
    ResponseGenericBoolAndDomainException response = _insertModelToNamedDatabaseFBDS
        .insertModelToNamedDatabaseFBDS(modelDomain,listModelDomainForFBDSUsingGetList);
    if(response.isSuccessResponse) {
      return await insertModelToNamedDatabaseThereIsParameterDataSource
          .insertModelToNamedDatabaseThereIsParameterDataSource(_converterToBaseModelNamedDatabase.toBaseModelNamedDatabase(modelDomain));
    } else {
      return Response.exception(response.getException);
    }
  }

  Future<Response<BaseTypeParameter,BaseException>> _baseInsertListModelToNamedDatabaseThereIsParameter(
      InsertListModelToNamedDatabaseThereIsParameterDataSource<X> insertListModelToNamedDatabaseThereIsParameterDataSource)
  async {
    if(_converterToBaseListModelNamedDatabase == null) {
      return throw Exception("ConverterToBaseListModelNamedDatabase null");
    }
    BaseListModelDomain<T> listModelDomain = BaseListModelDomain(_cloneListModel(getListModel(EnumBaseListModelDomainVM.insertListModelToNamedDatabaseThereIsParameter)));
    if(_insertListModelToNamedDatabaseFBDS == null) {
      return await insertListModelToNamedDatabaseThereIsParameterDataSource
          .insertListModelToNamedDatabaseThereIsParameterDataSource(_converterToBaseListModelNamedDatabase.toBaseListModelNamedDatabase(listModelDomain));
    }
    List<T> listModelDomainForFBDSUsingGetList = _cloneListModel(getListModel(EnumBaseListModelDomainVM.getListModelFromNamedDatabaseThereIsParameterAndNoThereIsParameter));
    ResponseGenericBoolAndDomainException response = _insertListModelToNamedDatabaseFBDS
        .insertListModelToNamedDatabaseFBDS(listModelDomain,listModelDomainForFBDSUsingGetList);
    if(response.isSuccessResponse) {
      return await insertListModelToNamedDatabaseThereIsParameterDataSource
          .insertListModelToNamedDatabaseThereIsParameterDataSource(_converterToBaseListModelNamedDatabase.toBaseListModelNamedDatabase(listModelDomain));
    } else {
      return Response.exception(response.getException);
    }
  }

  Future<Response<BaseTypeParameter,BaseException>> _baseUpdateModelToNamedDatabaseThereIsParameter(
      UpdateModelToNamedDatabaseThereIsParameterDataSource<Z> updateModelToNamedDatabaseThereIsParameterDataSource)
  async {
    if(_converterToBaseModelNamedDatabase == null) {
      return throw Exception("ConverterToBaseModelNamedDatabase null");
    }
    T modelDomain = cloneModel(getModel(EnumBaseModelDomainVM.updateModelToNamedDatabaseThereIsParameter));
    if(_updateModelToNamedDatabaseFBDS == null) {
      return await updateModelToNamedDatabaseThereIsParameterDataSource
          .updateModelToNamedDatabaseThereIsParameterDataSource(_converterToBaseModelNamedDatabase.toBaseModelNamedDatabase(modelDomain));
    }
    List<T> listModelDomainForFBDSUsingGetList = _cloneListModel(getListModel(EnumBaseListModelDomainVM.getListModelFromNamedDatabaseThereIsParameterAndNoThereIsParameter));
    ResponseGenericBoolAndDomainException response = _updateModelToNamedDatabaseFBDS
        .updateModelToNamedDatabaseFBDS(modelDomain,listModelDomainForFBDSUsingGetList);
    if(response.isSuccessResponse) {
      return await updateModelToNamedDatabaseThereIsParameterDataSource
          .updateModelToNamedDatabaseThereIsParameterDataSource(_converterToBaseModelNamedDatabase.toBaseModelNamedDatabase(modelDomain));
    } else {
      return Response.exception(response.getException);
    }
  }

  Future<Response<BaseTypeParameter,BaseException>> _baseUpdateListModelToNamedDatabaseThereIsParameter(
      UpdateListModelToNamedDatabaseThereIsParameterDataSource<X> updateListModelToNamedDatabaseThereIsParameterDataSource)
  async {
    if(_converterToBaseListModelNamedDatabase == null) {
      return throw Exception("ConverterToBaseListModelNamedDatabase null");
    }
    BaseListModelDomain<T> listModelDomain = BaseListModelDomain(_cloneListModel(getListModel(EnumBaseListModelDomainVM.updateListModelToNamedDatabaseThereIsParameter)));
    if(_updateListModelToNamedDatabaseFBDS == null) {
      return await updateListModelToNamedDatabaseThereIsParameterDataSource
          .updateListModelToNamedDatabaseThereIsParameterDataSource(_converterToBaseListModelNamedDatabase.toBaseListModelNamedDatabase(listModelDomain));
    }
    List<T> listModelDomainForFBDSUsingGetList = _cloneListModel(getListModel(EnumBaseListModelDomainVM.getListModelFromNamedDatabaseThereIsParameterAndNoThereIsParameter));
    ResponseGenericBoolAndDomainException response = _updateListModelToNamedDatabaseFBDS
        .updateListModelToNamedDatabaseFBDS(listModelDomain,listModelDomainForFBDSUsingGetList);
    if(response.isSuccessResponse) {
      return await updateListModelToNamedDatabaseThereIsParameterDataSource
          .updateListModelToNamedDatabaseThereIsParameterDataSource(_converterToBaseListModelNamedDatabase.toBaseListModelNamedDatabase(listModelDomain));
    } else {
      return Response.exception(response.getException);
    }
  }

  Future<Response<BaseTypeParameter,BaseException>> _baseDeleteModelToNamedDatabaseThereIsParameter(
      DeleteModelToNamedDatabaseThereIsParameterDataSource<Z> deleteModelToNamedDatabaseThereIsParameterDataSource)
  async {
    if(_converterToBaseModelNamedDatabase == null) {
      return throw Exception("ConverterToBaseModelNamedDatabase null");
    }
    T modelDomain = cloneModel(getModel(EnumBaseModelDomainVM.deleteModelToNamedDatabaseThereIsParameter));
    if(_deleteModelToNamedDatabaseFBDS == null) {
      return await deleteModelToNamedDatabaseThereIsParameterDataSource
          .deleteModelToNamedDatabaseThereIsParameterDataSource(_converterToBaseModelNamedDatabase.toBaseModelNamedDatabase(modelDomain));
    }
    List<T> listModelDomainForFBDSUsingGetList = _cloneListModel(getListModel(EnumBaseListModelDomainVM.getListModelFromNamedDatabaseThereIsParameterAndNoThereIsParameter));
    ResponseGenericBoolAndDomainException response = _deleteModelToNamedDatabaseFBDS
        .deleteModelToNamedDatabaseFBDS(modelDomain,listModelDomainForFBDSUsingGetList);
    if(response.isSuccessResponse) {
      return await deleteModelToNamedDatabaseThereIsParameterDataSource
          .deleteModelToNamedDatabaseThereIsParameterDataSource(_converterToBaseModelNamedDatabase.toBaseModelNamedDatabase(modelDomain));
    } else {
      return Response.exception(response.getException);
    }
  }

  Future<Response<BaseTypeParameter,BaseException>> _baseDeleteListModelToNamedDatabaseThereIsParameter(
      DeleteListModelToNamedDatabaseThereIsParameterDataSource<X> deleteListModelToNamedDatabaseThereIsParameterDataSource)
  async {
    if(_converterToBaseListModelNamedDatabase == null) {
      return throw Exception("ConverterToBaseListModelNamedDatabase null");
    }
    BaseListModelDomain<T> listModelDomain = BaseListModelDomain(_cloneListModel(getListModel(EnumBaseListModelDomainVM.deleteListModelToNamedDatabaseThereIsParameter)));
    if(_deleteListModelToNamedDatabaseFBDS == null) {
      return await deleteListModelToNamedDatabaseThereIsParameterDataSource
          .deleteListModelToNamedDatabaseThereIsParameterDataSource(_converterToBaseListModelNamedDatabase.toBaseListModelNamedDatabase(listModelDomain));
    }
    List<T> listModelDomainForFBDSUsingGetList = _cloneListModel(getListModel(EnumBaseListModelDomainVM.getListModelFromNamedDatabaseThereIsParameterAndNoThereIsParameter));
    ResponseGenericBoolAndDomainException response = _deleteListModelToNamedDatabaseFBDS
        .deleteListModelToNamedDatabaseFBDS(listModelDomain,listModelDomainForFBDSUsingGetList);
    if(response.isSuccessResponse) {
      return await deleteListModelToNamedDatabaseThereIsParameterDataSource
          .deleteListModelToNamedDatabaseThereIsParameterDataSource(_converterToBaseListModelNamedDatabase.toBaseListModelNamedDatabase(listModelDomain));
    } else {
      return Response.exception(response.getException);
    }
  }

  Response<List<T>,BaseException> _baseRunIteratorForGetListModel() {
    return _getBaseListModel(EnumBaseListModelDomainVM.getListModelFromNamedDatabaseThereIsParameterAndNoThereIsParameter)
        .runIteratorForGetListModel(_baseTypeParameterForBaseIterator, _mapEnumAndBaseIterator);
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

  Map<EnumBaseModelDomainVM,T> get _getMapEnumBaseModelDomainVMAndBaseModelDomain {
    if(_mapEnumBaseModelDomainVMAndBaseModelDomain != null) {
      return _mapEnumBaseModelDomainVMAndBaseModelDomain;
    }
    _mapEnumBaseModelDomainVMAndBaseModelDomain = _creationAndGetMapEnumBaseModelDomainVMAndBaseModelDomain();
    return _mapEnumBaseModelDomainVMAndBaseModelDomain;
  }

  Map<EnumBaseModelDomainVM,StreamController<T>> get _getMapEnumBaseModelDomainVMAndStreamControllerForBaseModelDomain {
    if(_mapEnumBaseModelDomainVMAndStreamControllerForBaseModelDomain != null) {
      return _mapEnumBaseModelDomainVMAndStreamControllerForBaseModelDomain;
    }
    _mapEnumBaseModelDomainVMAndStreamControllerForBaseModelDomain = _creationAndGetMapEnumBaseModelDomainVMAndStreamControllerForBaseModelDomain();
    return _mapEnumBaseModelDomainVMAndStreamControllerForBaseModelDomain;
  }

  Map<EnumBaseListModelDomainVM,Y> get _getMapEnumBaseListModelDomainVMAndBaseListModelDomain {
    if(_mapEnumBaseListModelDomainVMAndBaseListModelDomain != null) {
      return _mapEnumBaseListModelDomainVMAndBaseListModelDomain;
    }
    _mapEnumBaseListModelDomainVMAndBaseListModelDomain = _creationAndGetMapEnumBaseListModelDomainVMAndBaseListModelDomain();
    return _mapEnumBaseListModelDomainVMAndBaseListModelDomain;
  }

  Map<EnumBaseListModelDomainVM,StreamController<List<T>>> get _getMapEnumBaseListModelDomainVMAndStreamControllerForListBaseModelDomain {
    if(_mapEnumBaseListModelDomainVMAndStreamControllerForListBaseModelDomain != null) {
      return _mapEnumBaseListModelDomainVMAndStreamControllerForListBaseModelDomain;
    }
    _mapEnumBaseListModelDomainVMAndStreamControllerForListBaseModelDomain = _creationAndGetMapEnumBaseListModelDomainVMAndStreamControllerForListBaseModelDomain();
    return _mapEnumBaseListModelDomainVMAndStreamControllerForListBaseModelDomain;
  }

  Map<EnumBaseModelDomainVM,T> _creationAndGetMapEnumBaseModelDomainVMAndBaseModelDomain() {
    if(_isEqualsNullOrIsEmptyListEnumBaseModelDomainVM(_listEnumBaseModelDomainVM)) {
      return {};
    }
    Map<EnumBaseModelDomainVM,T> map = {};
    bool isExistsItemForAllToListEnumBaseModelDomain = false;
    for(EnumBaseModelDomainVM enumBaseModelDomainVM in _listEnumBaseModelDomainVM) {
      if(enumBaseModelDomainVM == EnumBaseModelDomainVM.all) {
        isExistsItemForAllToListEnumBaseModelDomain = true;
        break;
      }
    }
    if(isExistsItemForAllToListEnumBaseModelDomain) {
      for(EnumBaseModelDomainVM enumBaseModelDomainVM in EnumBaseModelDomainVM.values) {
        map[enumBaseModelDomainVM] = _initCreatorBaseModelDomain();
      }
    } else {
      for(EnumBaseModelDomainVM enumBaseModelDomainVM in _listEnumBaseModelDomainVM) {
        map[enumBaseModelDomainVM] = _initCreatorBaseModelDomain();
      }
    }
    return map;
  }

  Map<EnumBaseModelDomainVM,StreamController<T>> _creationAndGetMapEnumBaseModelDomainVMAndStreamControllerForBaseModelDomain() {
    if(_isEqualsNullOrIsEmptyListEnumBaseModelDomainVM(_listEnumBaseModelDomainVM)) {
      return {};
    }
    Map<EnumBaseModelDomainVM,StreamController<T>> map = {};
    bool isExistsItemForAllToListEnumBaseModelDomain = false;
    for(EnumBaseModelDomainVM enumBaseModelDomainVM in _listEnumBaseModelDomainVM) {
      if(enumBaseModelDomainVM == EnumBaseModelDomainVM.all) {
        isExistsItemForAllToListEnumBaseModelDomain = true;
        break;
      }
    }
    if(isExistsItemForAllToListEnumBaseModelDomain) {
      for(EnumBaseModelDomainVM enumBaseModelDomainVM in EnumBaseModelDomainVM.values) {
        map[enumBaseModelDomainVM] = StreamController<T>.broadcast();
      }
    } else {
      for (EnumBaseModelDomainVM enumBaseModelDomainVM in _listEnumBaseModelDomainVM) {
        map[enumBaseModelDomainVM] = StreamController<T>.broadcast();
      }
    }
    return map;
  }

  Map<EnumBaseListModelDomainVM,Y> _creationAndGetMapEnumBaseListModelDomainVMAndBaseListModelDomain() {
    if(_isEqualsNullOrIsEmptyListEnumBaseListModelDomainVM(_listEnumBaseListModelDomainVM)) {
      return {};
    }
    Map<EnumBaseListModelDomainVM,Y> map = {};
    bool isExistsItemForAllToListEnumBaseListModelDomain = false;
    for(EnumBaseListModelDomainVM enumBaseModelDomainVM in _listEnumBaseListModelDomainVM) {
      if(enumBaseModelDomainVM == EnumBaseListModelDomainVM.all) {
        isExistsItemForAllToListEnumBaseListModelDomain = true;
        break;
      }
    }
    if(isExistsItemForAllToListEnumBaseListModelDomain) {
      for(EnumBaseListModelDomainVM enumBaseListModelDomainVM in EnumBaseListModelDomainVM.values) {
        map[enumBaseListModelDomainVM] = _initCreatorBaseListModelDomain();
      }
    } else {
      for(EnumBaseListModelDomainVM enumBaseListModelDomainVM in _listEnumBaseListModelDomainVM) {
        map[enumBaseListModelDomainVM] = _initCreatorBaseListModelDomain();
      }
    }
    return map;
  }

  Map<EnumBaseListModelDomainVM,StreamController<List<T>>> _creationAndGetMapEnumBaseListModelDomainVMAndStreamControllerForListBaseModelDomain() {
    if(_isEqualsNullOrIsEmptyListEnumBaseListModelDomainVM(_listEnumBaseListModelDomainVM)) {
      return {};
    }
    Map<EnumBaseListModelDomainVM,StreamController<List<T>>> map = {};
    bool isExistsItemForAllToListEnumBaseListModelDomain = false;
    for(EnumBaseListModelDomainVM enumBaseListModelDomainVM in _listEnumBaseListModelDomainVM) {
      if(enumBaseListModelDomainVM == EnumBaseListModelDomainVM.all) {
        isExistsItemForAllToListEnumBaseListModelDomain = true;
        break;
      }
    }
    if(isExistsItemForAllToListEnumBaseListModelDomain) {
      for(EnumBaseListModelDomainVM enumBaseListModelDomainVM in EnumBaseListModelDomainVM.values) {
        map[enumBaseListModelDomainVM] = StreamController<List<T>>.broadcast();
      }
    } else {
      for(EnumBaseListModelDomainVM enumBaseListModelDomainVM in _listEnumBaseListModelDomainVM) {
        map[enumBaseListModelDomainVM] = StreamController<List<T>>.broadcast();
      }
    }
    return map;
  }

  bool _isEqualsNullOrIsEmptyListEnumBaseModelDomainVM(List<EnumBaseModelDomainVM> listEnumBaseModelDomainVM)
  {
    if(listEnumBaseModelDomainVM == null) {
      return true;
    }
    if(listEnumBaseModelDomainVM.isEmpty) {
      return true;
    }
    return false;
  }

  bool _isEqualsNullOrIsEmptyListEnumBaseListModelDomainVM(List<EnumBaseListModelDomainVM> listEnumBaseListModelDomainVM)
  {
    if(listEnumBaseListModelDomainVM == null) {
      return true;
    }
    if(listEnumBaseListModelDomainVM.isEmpty) {
      return true;
    }
    return false;
  }

  void _disposeForAnyMap(Map map) {
    if(map == null) {
      return;
    }
    if(map.isEmpty) {
      return;
    }
    map.clear();
  }

  void _disposeForMapEnumAndStreamController(Map<Enum,StreamController> map) {
    if(map == null) {
      return;
    }
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