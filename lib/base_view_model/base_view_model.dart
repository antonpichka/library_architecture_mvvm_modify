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
import 'package:library_architecture_mvvm_modify/base_type_parameter/enum_type_parameter.dart';
import 'package:library_architecture_mvvm_modify/base_view_model/enums_for_view_model/enum_base_list_model_domain_vm.dart';
import 'package:library_architecture_mvvm_modify/base_view_model/enums_for_view_model/enum_base_model_domain_vm.dart';
import 'package:library_architecture_mvvm_modify/base_view_model/enums_for_view_model/enum_base_type_parameter_for_get_model_named_database_and_get_list_named_database_vm.dart';
import 'package:library_architecture_mvvm_modify/response.dart';
import 'package:library_architecture_mvvm_modify/response_generic_bool_and_domain_exception.dart';

typedef ItemCreator<S> = S Function();

abstract class BaseViewModel<T extends BaseModelDomain,Y extends BaseListModelDomain,Z extends BaseModelNamedDatabase,X extends BaseListModelNamedDatabase> implements BaseDispose
{
  /* Init DataSource */
  final Object _dataSource;

  /* Init Objects */
  final List<EnumBaseModelDomainVM> _listEnumBaseModelDomainVM;
  final List<EnumBaseListModelDomainVM> _listEnumBaseListModelDomainVM;

  /* Set Default Model Object */
  final ItemCreator<T> _initCreatorBaseModelDomain;
  final ItemCreator<Y> _initCreatorBaseListModelDomain;

  /* CTMND */
  final ConverterToBaseModelNamedDatabase<T,Z> _converterToBaseModelNamedDatabase;
  final ConverterToBaseListModelNamedDatabase<Y,X> _converterToBaseListModelNamedDatabase;

  /* FBDS */
  final InsertModelToNamedDatabaseFBDS<T> _insertModelToNamedDatabaseFBDS;
  final InsertListModelToNamedDatabaseFBDS<T,Y> _insertListModelToNamedDatabaseFBDS;
  final UpdateModelToNamedDatabaseFBDS<T> _updateModelToNamedDatabaseFBDS;
  final UpdateListModelToNamedDatabaseFBDS<T,Y> _updateListModelToNamedDatabaseFBDS;
  final DeleteModelToNamedDatabaseFBDS<T> _deleteModelToNamedDatabaseFBDS;
  final DeleteListModelToNamedDatabaseFBDS<T,Y> _deleteListModelToNamedDatabaseFBDS;

  /* Iterator */
  Map<Enum,BaseIterator<T>> _mapEnumAndBaseIterator = {};
  EnumTypeParameter _enumTypeParameterForBaseIterator;

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
      this._deleteListModelToNamedDatabaseFBDS);

  BaseViewModel.forIterator(
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
      this._enumTypeParameterForBaseIterator);

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

  T cloneModel(T model);

  Y cloneListModel(Y listModel);

  /// End Clone **/

  /// Start DataSource **/
  ///
  @nonVirtual
  Future<Response<bool, BaseException>> getListModelFromNamedDatabaseAndUseTheSetters() {
    return _baseGetListModelFromNamedDatabaseAndUseTheSetters(_dataSource as GetListModelFromNamedDatabaseDataSource<X>);
  }

  @nonVirtual
  Future<Response<bool, BaseException>> setAndGetListModelFromNamedDatabaseThereIsParameterAndUseTheSetters(BaseTypeParameter baseTypeParameter) {
    setBaseTypeParameterForGetModelNamedDatabaseAndGetListNamedDatabase(baseTypeParameter, EnumBaseTypeParameterForGetModelNamedDatabaseAndGetListNamedDatabaseVM.getListModelFromNamedDatabaseThereIsParameter);
    return _baseGetListModelFromNamedDatabaseThereIsParameterAndUseTheSetters(_dataSource as GetListModelFromNamedDatabaseThereIsParameterDataSource<X>);
  }

  @nonVirtual
  Future<Response<bool, BaseException>> getListModelFromNamedDatabaseThereIsParameterAndUseTheSetters() {
    return _baseGetListModelFromNamedDatabaseThereIsParameterAndUseTheSetters(_dataSource as GetListModelFromNamedDatabaseThereIsParameterDataSource<X>);
  }

  @nonVirtual
  Future<Response<bool, BaseException>> setAndGetModelFromNamedDatabaseThereIsParameterAndUseTheSetters(BaseTypeParameter baseTypeParameter) {
    setBaseTypeParameterForGetModelNamedDatabaseAndGetListNamedDatabase(baseTypeParameter, EnumBaseTypeParameterForGetModelNamedDatabaseAndGetListNamedDatabaseVM.getModelFromNamedDatabaseThereIsParameter);
    return _baseGetListModelFromNamedDatabaseThereIsParameterAndUseTheSetters(_dataSource as GetListModelFromNamedDatabaseThereIsParameterDataSource<X>);
  }

  @nonVirtual
  Future<Response<bool, BaseException>> getModelFromNamedDatabaseThereIsParameterAndUseTheSetters() {
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
  Future<Response<BaseTypeParameter, BaseException>> setAndInsertListModelToNamedDatabaseThereIsParameter(List<T> listModel) {
    setListModel(listModel, EnumBaseListModelDomainVM.insertListModelToNamedDatabaseThereIsParameter);
    return _baseInsertListModelToNamedDatabaseThereIsParameter(_dataSource as InsertListModelToNamedDatabaseThereIsParameterDataSource<X>);
  }

  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> insertListModelToNamedDatabaseThereIsParameter() {
    return _baseInsertListModelToNamedDatabaseThereIsParameter(_dataSource as InsertListModelToNamedDatabaseThereIsParameterDataSource<X>);
  }

  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> setAndUpdateModelToNamedDatabaseThereIsParameter(T model) {
    setModel(model, EnumBaseModelDomainVM.updateModelToNamedDatabaseThereIsParameter);
    return _baseUpdateModelToNamedDatabaseThereIsParameter(_dataSource as UpdateModelToNamedDatabaseThereIsParameterDataSource<Z>);
  }

  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> updateModelToNamedDatabaseThereIsParameter() {
    return _baseUpdateModelToNamedDatabaseThereIsParameter(_dataSource as UpdateModelToNamedDatabaseThereIsParameterDataSource<Z>);
  }

  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> setAndUpdateListModelToNamedDatabaseThereIsParameter(List<T> listModel) {
    setListModel(listModel, EnumBaseListModelDomainVM.updateListModelToNamedDatabaseThereIsParameter);
    return _baseUpdateListModelToNamedDatabaseThereIsParameter(_dataSource as UpdateListModelToNamedDatabaseThereIsParameterDataSource<X>);
  }

  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> updateListModelToNamedDatabaseThereIsParameter() {
    return _baseUpdateListModelToNamedDatabaseThereIsParameter(_dataSource as UpdateListModelToNamedDatabaseThereIsParameterDataSource<X>);
  }

  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> setAndDeleteModelToNamedDatabaseThereIsParameter(T model) {
    setModel(model, EnumBaseModelDomainVM.deleteModelToNamedDatabaseThereIsParameter);
    return _baseDeleteModelToNamedDatabaseThereIsParameter(_dataSource as DeleteModelToNamedDatabaseThereIsParameterDataSource<Z>);
  }

  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> deleteModelToNamedDatabaseThereIsParameter() {
    return _baseDeleteModelToNamedDatabaseThereIsParameter(_dataSource as DeleteModelToNamedDatabaseThereIsParameterDataSource<Z>);
  }

  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> setAndDeleteListModelToNamedDatabaseThereIsParameter(List<T> listModel) {
    setListModel(listModel, EnumBaseListModelDomainVM.deleteListModelToNamedDatabaseThereIsParameter);
    return _baseDeleteListModelToNamedDatabaseThereIsParameter(_dataSource as DeleteListModelToNamedDatabaseThereIsParameterDataSource<X>);
  }

  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> deleteListModelToNamedDatabaseThereIsParameter() {
    return _baseDeleteListModelToNamedDatabaseThereIsParameter(_dataSource as DeleteListModelToNamedDatabaseThereIsParameterDataSource<X>);
  }

  /// End DataSource **/

  /// Start For Object GetListModel **/
  ///
  @nonVirtual
  Response<bool, BaseException> setAndRunIteratorForGetListModel(EnumTypeParameter enumTypeParameter) {
    setEnumTypeParameterForBaseIterator = enumTypeParameter;
    return _baseRunIteratorForGetListModel();
  }

  @nonVirtual
  Response<bool, BaseException> runIteratorForGetListModel() {
    return _baseRunIteratorForGetListModel();
  }

  @nonVirtual
  Response<bool, BaseException> setAndInsertModelToGetListModel(T model) {
    setModel(model, EnumBaseModelDomainVM.insertModelToNamedDatabaseThereIsParameter);
    return _baseInsertModelToGetListModel();
  }

  @nonVirtual
  Response<bool, BaseException> insertModelToGetListModel() {
    return _baseInsertModelToGetListModel();
  }

  @nonVirtual
  Response<bool, BaseException> setAndInsertListModelToGetListModel(List<T> listModel) {
    setListModel(listModel, EnumBaseListModelDomainVM.insertListModelToNamedDatabaseThereIsParameter);
    return _baseInsertListModelToGetListModel();
  }

  @nonVirtual
  Response<bool, BaseException> insertListModelToGetListModel() {
    return _baseInsertListModelToGetListModel();
  }

  @nonVirtual
  Response<bool, BaseException> setAndUpdateModelToGetListModel(T model) {
    setModel(model, EnumBaseModelDomainVM.updateModelToNamedDatabaseThereIsParameter);
    return _baseUpdateModelToGetListModel();
  }

  @nonVirtual
  Response<bool, BaseException> updateModelToGetListModel() {
    return _baseUpdateModelToGetListModel();
  }

  @nonVirtual
  Response<bool, BaseException> setAndUpdateListModelToGetListModel(List<T> listModel) {
    setListModel(listModel, EnumBaseListModelDomainVM.updateListModelToNamedDatabaseThereIsParameter);
    return _baseUpdateListModelToGetListModel();
  }

  @nonVirtual
  Response<bool, BaseException> updateListModelToGetListModel() {
    return _baseUpdateListModelToGetListModel();
  }

  @nonVirtual
  Response<bool, BaseException> setAndDeleteModelToGetListModel(T model) {
    setModel(model, EnumBaseModelDomainVM.deleteModelToNamedDatabaseThereIsParameter);
    return _baseDeleteModelToGetListModel();
  }

  @nonVirtual
  Response<bool, BaseException> deleteModelToGetListModel() {
    return _baseDeleteModelToGetListModel();
  }

  @nonVirtual
  Response<bool, BaseException> setAndDeleteListModelToGetListModel(List<T> listModel) {
    setListModel(listModel, EnumBaseListModelDomainVM.deleteListModelToNamedDatabaseThereIsParameter);
    return _baseDeleteListModelToGetListModel();
  }

  @nonVirtual
  Response<bool, BaseException> deleteListModelToGetListModel() {
    return _baseDeleteListModelToGetListModel();
  }

  /// End For Object GetListModel **/
  
  /// Start Base/EnumTypeParameter **/

  @nonVirtual
  void setMapEnumAndBaseIterator(
      BaseIterator baseIterator,
      Enum operation)
  {
    _mapEnumAndBaseIterator[operation] = baseIterator;
  }

  @nonVirtual
  EnumTypeParameter get getEnumTypeParameterForBaseIterator {
    return _enumTypeParameterForBaseIterator;
  }

  @nonVirtual
  set setEnumTypeParameterForBaseIterator(EnumTypeParameter enumTypeParameterForBaseIterator) {
    _enumTypeParameterForBaseIterator = enumTypeParameterForBaseIterator;
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

  Response<bool,BaseException> _baseRunIteratorForGetListModel() {
    return _getBaseListModel(EnumBaseListModelDomainVM.getListModelFromNamedDatabaseThereIsParameterAndNoThereIsParameter)
        .runIteratorForGetListModel(_enumTypeParameterForBaseIterator, _mapEnumAndBaseIterator);
  }

  Future<Response<bool,BaseException>> _baseGetListModelFromNamedDatabaseAndUseTheSetters(GetListModelFromNamedDatabaseDataSource<X> getListModelFromNamedDatabaseDataSource) async {
    Response<X,BaseException> response = await getListModelFromNamedDatabaseDataSource.getListModelFromNamedDatabaseDataSource();
    if(response.isSuccessResponse) {
      _getBaseListModel(EnumBaseListModelDomainVM.getListModelFromNamedDatabaseThereIsParameterAndNoThereIsParameter)
          .setListModelDomainByBaseListModelDomain = response.getData.toBaseListModelDomain();
      return Response.success(true);
    } else {
      return Response.exception(response.getException);
    }
  }

  Future<Response<bool,BaseException>> _baseGetListModelFromNamedDatabaseThereIsParameterAndUseTheSetters(GetListModelFromNamedDatabaseThereIsParameterDataSource<X> getListModelFromNamedDatabaseThereIsParameterDataSource) async {
    Response<X,BaseException> response = await getListModelFromNamedDatabaseThereIsParameterDataSource.getListModelFromNamedDatabaseThereIsParameterDataSource(
        _mapEnumBaseTypeParameterForGetModelNamedDatabaseAndGetListNamedDatabaseVMAndBaseTypeParameter[EnumBaseTypeParameterForGetModelNamedDatabaseAndGetListNamedDatabaseVM.getListModelFromNamedDatabaseThereIsParameter]
    );
    if(response.isSuccessResponse) {
      _getBaseListModel(EnumBaseListModelDomainVM.getListModelFromNamedDatabaseThereIsParameterAndNoThereIsParameter)
          .setListModelDomainByBaseListModelDomain = response.getData.toBaseListModelDomain();
      return Response.success(true);
    } else {
      return Response.exception(response.getException);
    }
  }

  Future<Response<bool,BaseException>> _baseGetModelFromNamedDatabaseThereIsParameterAndUseTheSetters(GetModelFromNamedDatabaseThereIsParameterDataSource<Z> getModelFromNamedDatabaseThereIsParameterDataSource) async {
    Response<Z,BaseException> response = await getModelFromNamedDatabaseThereIsParameterDataSource.getModelFromNamedDatabaseThereIsParameterDataSource(
        _mapEnumBaseTypeParameterForGetModelNamedDatabaseAndGetListNamedDatabaseVMAndBaseTypeParameter[EnumBaseTypeParameterForGetModelNamedDatabaseAndGetListNamedDatabaseVM.getModelFromNamedDatabaseThereIsParameter]
    );
    if(response.isSuccessResponse) {
      setModel(
          response.getData.toBaseModelDomain(),
          EnumBaseModelDomainVM.getModelFromNamedDatabaseThereIsParameter
      );
      return Response.success(true);
    } else {
      return Response.exception(response.getException);
    }
  }

  Future<Response<BaseTypeParameter,BaseException>> _baseInsertModelToNamedDatabaseThereIsParameter(InsertModelToNamedDatabaseThereIsParameterDataSource<Z> insertModelToNamedDatabaseThereIsParameterDataSource) async {
    if(_converterToBaseModelNamedDatabase == null) {
      return throw Exception("null converterToBaseModelNamedDatabase");
    }
    T modelDomain = cloneModel(getModel(EnumBaseModelDomainVM.insertModelToNamedDatabaseThereIsParameter));
    Y listModelDomainForIf = cloneListModel(_getBaseListModel(EnumBaseListModelDomainVM.getListModelFromNamedDatabaseThereIsParameterAndNoThereIsParameter));
    ConverterToBaseModelNamedDatabase ctmnd = _converterToBaseModelNamedDatabase;
    if(_insertModelToNamedDatabaseFBDS == null) {
      return await insertModelToNamedDatabaseThereIsParameterDataSource.insertModelToNamedDatabaseThereIsParameterDataSource(ctmnd.toBaseModelNamedDatabase(modelDomain));
    }
    InsertModelToNamedDatabaseFBDS fbds = _insertModelToNamedDatabaseFBDS;
    ResponseGenericBoolAndDomainException response = fbds.insertModelToNamedDatabaseFBDS(modelDomain,listModelDomainForIf.getListModelDomain);
    if(response.isSuccessResponse) {
      return await insertModelToNamedDatabaseThereIsParameterDataSource.insertModelToNamedDatabaseThereIsParameterDataSource(ctmnd.toBaseModelNamedDatabase(modelDomain));
    } else {
      return Response.exception(response.getException);
    }
  }

  Future<Response<BaseTypeParameter,BaseException>> _baseInsertListModelToNamedDatabaseThereIsParameter(InsertListModelToNamedDatabaseThereIsParameterDataSource<X> insertListModelToNamedDatabaseThereIsParameterDataSource) async {
    if(_converterToBaseListModelNamedDatabase == null) {
      return throw Exception("null converterToBaseListModelNamedDatabase");
    }
    Y listModelDomain = cloneListModel(_getBaseListModel(EnumBaseListModelDomainVM.insertListModelToNamedDatabaseThereIsParameter));
    Y listModelDomainForIf = cloneListModel(_getBaseListModel(EnumBaseListModelDomainVM.getListModelFromNamedDatabaseThereIsParameterAndNoThereIsParameter));
    ConverterToBaseListModelNamedDatabase ctmnd = _converterToBaseListModelNamedDatabase;
    if(_insertListModelToNamedDatabaseFBDS == null) {
      return await insertListModelToNamedDatabaseThereIsParameterDataSource.insertListModelToNamedDatabaseThereIsParameterDataSource(ctmnd.toBaseListModelNamedDatabase(listModelDomain));
    }
    InsertListModelToNamedDatabaseFBDS fbds = _insertListModelToNamedDatabaseFBDS;
    ResponseGenericBoolAndDomainException response = fbds.insertListModelToNamedDatabaseFBDS(listModelDomain,listModelDomainForIf.getListModelDomain);
    if(response.isSuccessResponse) {
      return await insertListModelToNamedDatabaseThereIsParameterDataSource.insertListModelToNamedDatabaseThereIsParameterDataSource(ctmnd.toBaseListModelNamedDatabase(listModelDomain));
    } else {
      return Response.exception(response.getException);
    }
  }

  Future<Response<BaseTypeParameter,BaseException>> _baseUpdateModelToNamedDatabaseThereIsParameter(UpdateModelToNamedDatabaseThereIsParameterDataSource<Z> updateModelToNamedDatabaseThereIsParameterDataSource) async {
    if(_converterToBaseModelNamedDatabase == null) {
      return throw Exception("null converterToBaseModelNamedDatabase");
    }
    T modelDomain = cloneModel(getModel(EnumBaseModelDomainVM.updateModelToNamedDatabaseThereIsParameter));
    Y listModelDomainForIf = cloneListModel(_getBaseListModel(EnumBaseListModelDomainVM.getListModelFromNamedDatabaseThereIsParameterAndNoThereIsParameter));
    ConverterToBaseModelNamedDatabase ctmnd = _converterToBaseModelNamedDatabase;
    if(_updateModelToNamedDatabaseFBDS == null) {
      return await updateModelToNamedDatabaseThereIsParameterDataSource.updateModelToNamedDatabaseThereIsParameterDataSource(ctmnd.toBaseModelNamedDatabase(modelDomain));
    }
    UpdateModelToNamedDatabaseFBDS fbds = _updateModelToNamedDatabaseFBDS;
    ResponseGenericBoolAndDomainException response = fbds.updateModelToNamedDatabaseFBDS(modelDomain,listModelDomainForIf.getListModelDomain);
    if(response.isSuccessResponse) {
      return await updateModelToNamedDatabaseThereIsParameterDataSource.updateModelToNamedDatabaseThereIsParameterDataSource(ctmnd.toBaseModelNamedDatabase(modelDomain));
    } else {
      return Response.exception(response.getException);
    }
  }

  Future<Response<BaseTypeParameter,BaseException>> _baseUpdateListModelToNamedDatabaseThereIsParameter(UpdateListModelToNamedDatabaseThereIsParameterDataSource<X> updateListModelToNamedDatabaseThereIsParameterDataSource) async {
    if(_converterToBaseListModelNamedDatabase == null) {
      return throw Exception("null converterToBaseListModelNamedDatabase");
    }
    Y listModelDomain = cloneListModel(_getBaseListModel(EnumBaseListModelDomainVM.updateListModelToNamedDatabaseThereIsParameter));
    Y listModelDomainForIf = cloneListModel(_getBaseListModel(EnumBaseListModelDomainVM.getListModelFromNamedDatabaseThereIsParameterAndNoThereIsParameter));
    ConverterToBaseListModelNamedDatabase ctmnd = _converterToBaseListModelNamedDatabase;
    if(_updateListModelToNamedDatabaseFBDS == null) {
      return await updateListModelToNamedDatabaseThereIsParameterDataSource.updateListModelToNamedDatabaseThereIsParameterDataSource(ctmnd.toBaseListModelNamedDatabase(listModelDomain));
    }
    UpdateListModelToNamedDatabaseFBDS fbds = _updateListModelToNamedDatabaseFBDS;
    ResponseGenericBoolAndDomainException response = fbds.updateListModelToNamedDatabaseFBDS(listModelDomain,listModelDomainForIf.getListModelDomain);
    if(response.isSuccessResponse) {
      return await updateListModelToNamedDatabaseThereIsParameterDataSource.updateListModelToNamedDatabaseThereIsParameterDataSource(ctmnd.toBaseListModelNamedDatabase(listModelDomain));
    } else {
      return Response.exception(response.getException);
    }
  }

  Future<Response<BaseTypeParameter,BaseException>> _baseDeleteModelToNamedDatabaseThereIsParameter(DeleteModelToNamedDatabaseThereIsParameterDataSource<Z> deleteModelToNamedDatabaseThereIsParameterDataSource) async {
    if(_converterToBaseModelNamedDatabase == null) {
      return throw Exception("null converterToBaseModelNamedDatabase");
    }
    T modelDomain = cloneModel(getModel(EnumBaseModelDomainVM.deleteModelToNamedDatabaseThereIsParameter));
    Y listModelDomainForIf = cloneListModel(_getBaseListModel(EnumBaseListModelDomainVM.getListModelFromNamedDatabaseThereIsParameterAndNoThereIsParameter));
    ConverterToBaseModelNamedDatabase ctmnd = _converterToBaseModelNamedDatabase;
    if(_deleteModelToNamedDatabaseFBDS != null) {
      return await deleteModelToNamedDatabaseThereIsParameterDataSource.deleteModelToNamedDatabaseThereIsParameterDataSource(ctmnd.toBaseModelNamedDatabase(modelDomain));
    }
    DeleteModelToNamedDatabaseFBDS fbds = _deleteModelToNamedDatabaseFBDS;
    ResponseGenericBoolAndDomainException response = fbds.deleteModelToNamedDatabaseFBDS(modelDomain,listModelDomainForIf.getListModelDomain);
    if(response.isSuccessResponse) {
      return await deleteModelToNamedDatabaseThereIsParameterDataSource.deleteModelToNamedDatabaseThereIsParameterDataSource(ctmnd.toBaseModelNamedDatabase(modelDomain));
    } else {
      return Response.exception(response.getException);
    }
  }

  Future<Response<BaseTypeParameter,BaseException>> _baseDeleteListModelToNamedDatabaseThereIsParameter(DeleteListModelToNamedDatabaseThereIsParameterDataSource<X> deleteListModelToNamedDatabaseThereIsParameterDataSource) async {
    if(_converterToBaseListModelNamedDatabase == null) {
      return throw Exception("null converterToBaseListModelNamedDatabase");
    }
    Y listModelDomain = cloneListModel(_getBaseListModel(EnumBaseListModelDomainVM.deleteListModelToNamedDatabaseThereIsParameter));
    Y listModelDomainForIf = cloneListModel(_getBaseListModel(EnumBaseListModelDomainVM.getListModelFromNamedDatabaseThereIsParameterAndNoThereIsParameter));
    ConverterToBaseListModelNamedDatabase ctmnd = _converterToBaseListModelNamedDatabase;
    if(_deleteListModelToNamedDatabaseFBDS == null) {
      return await deleteListModelToNamedDatabaseThereIsParameterDataSource.deleteListModelToNamedDatabaseThereIsParameterDataSource(ctmnd.toBaseListModelNamedDatabase(listModelDomain));
    }
    DeleteListModelToNamedDatabaseFBDS fbds = _deleteListModelToNamedDatabaseFBDS;
    ResponseGenericBoolAndDomainException response = fbds.deleteListModelToNamedDatabaseFBDS(listModelDomain,listModelDomainForIf.getListModelDomain);
    if(response.isSuccessResponse) {
      return await deleteListModelToNamedDatabaseThereIsParameterDataSource.deleteListModelToNamedDatabaseThereIsParameterDataSource(ctmnd.toBaseListModelNamedDatabase(listModelDomain));
    } else {
      return Response.exception(response.getException);
    }
  }

  Response<bool, BaseException> _baseInsertModelToGetListModel() {
    return _getBaseListModel(EnumBaseListModelDomainVM.getListModelFromNamedDatabaseThereIsParameterAndNoThereIsParameter)
        .insertModelToGetListModel(cloneModel(_getMapEnumBaseModelDomainVMAndBaseModelDomain[EnumBaseModelDomainVM.insertModelToNamedDatabaseThereIsParameter])
    );
  }

  Response<bool, BaseException> _baseInsertListModelToGetListModel() {
    return _getBaseListModel(EnumBaseListModelDomainVM.getListModelFromNamedDatabaseThereIsParameterAndNoThereIsParameter)
        .insertListModelToGetListModel(cloneListModel(_getMapEnumBaseListModelDomainVMAndBaseListModelDomain[EnumBaseListModelDomainVM.insertListModelToNamedDatabaseThereIsParameter]).getListModelDomain
    );
  }

  Response<bool, BaseException> _baseUpdateModelToGetListModel() {
    return _getBaseListModel(EnumBaseListModelDomainVM.getListModelFromNamedDatabaseThereIsParameterAndNoThereIsParameter)
        .updateModelToGetListModel(cloneModel(_getMapEnumBaseModelDomainVMAndBaseModelDomain[EnumBaseModelDomainVM.updateModelToNamedDatabaseThereIsParameter])
    );
  }

  Response<bool, BaseException> _baseUpdateListModelToGetListModel() {
    return _getBaseListModel(EnumBaseListModelDomainVM.getListModelFromNamedDatabaseThereIsParameterAndNoThereIsParameter)
        .updateListModelToGetListModel(cloneListModel(_getMapEnumBaseListModelDomainVMAndBaseListModelDomain[EnumBaseListModelDomainVM.updateListModelToNamedDatabaseThereIsParameter]).getListModelDomain
    );
  }

  Response<bool, BaseException> _baseDeleteModelToGetListModel() {
    return _getBaseListModel(EnumBaseListModelDomainVM.getListModelFromNamedDatabaseThereIsParameterAndNoThereIsParameter)
        .deleteModelToGetListModel(cloneModel(_getMapEnumBaseModelDomainVMAndBaseModelDomain[EnumBaseModelDomainVM.deleteModelToNamedDatabaseThereIsParameter])
    );
  }

  Response<bool, BaseException> _baseDeleteListModelToGetListModel() {
    return _getBaseListModel(EnumBaseListModelDomainVM.getListModelFromNamedDatabaseThereIsParameterAndNoThereIsParameter)
        .deleteListModelToGetListModel(cloneListModel(_getMapEnumBaseListModelDomainVMAndBaseListModelDomain[EnumBaseListModelDomainVM.deleteListModelToNamedDatabaseThereIsParameter]).getListModelDomain
    );
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
    if(_isCheckListToIsEqualsNullOrIsNotEmptyAndNoInsertEnumBaseModelDomainVM(_listEnumBaseModelDomainVM)) {
      return {};
    }
    Map<EnumBaseModelDomainVM,T> map = {};
    for(EnumBaseModelDomainVM viewModelOperation in _listEnumBaseModelDomainVM) {
      map[viewModelOperation] = _initCreatorBaseModelDomain();
    }
    return map;
  }

  Map<EnumBaseModelDomainVM,StreamController<T>> _creationAndGetMapEnumBaseModelDomainVMAndStreamControllerForBaseModelDomain() {
    if(_isCheckListToIsEqualsNullOrIsNotEmptyAndNoInsertEnumBaseModelDomainVM(_listEnumBaseModelDomainVM)) {
      return {};
    }
    Map<EnumBaseModelDomainVM,StreamController<T>> map = {};
    for(EnumBaseModelDomainVM viewModelOperation in _listEnumBaseModelDomainVM) {
      map[viewModelOperation] = StreamController<T>.broadcast();
    }
    return map;
  }

  Map<EnumBaseListModelDomainVM,Y> _creationAndGetMapEnumBaseListModelDomainVMAndBaseListModelDomain() {
    if(_isCheckListToIsEqualsNullOrIsNotEmptyAndNoInsertEnumBaseListModelDomainVM(_listEnumBaseListModelDomainVM)) {
      return {};
    }
    Map<EnumBaseListModelDomainVM,Y> map = {};
    for(EnumBaseListModelDomainVM viewModelOperation in _listEnumBaseListModelDomainVM) {
      map[viewModelOperation] = _initCreatorBaseListModelDomain();
    }
    return map;
  }

  Map<EnumBaseListModelDomainVM,StreamController<List<T>>> _creationAndGetMapEnumBaseListModelDomainVMAndStreamControllerForListBaseModelDomain() {
    if(_isCheckListToIsEqualsNullOrIsNotEmptyAndNoInsertEnumBaseListModelDomainVM(_listEnumBaseListModelDomainVM)) {
      return {};
    }
    Map<EnumBaseListModelDomainVM,StreamController<List<T>>> map = {};
    for(EnumBaseListModelDomainVM viewModelOperation in _listEnumBaseListModelDomainVM) {
      map[viewModelOperation] = StreamController<List<T>>.broadcast();
    }
    return map;
  }

  bool _isCheckListToIsEqualsNullOrIsNotEmptyAndNoInsertEnumBaseModelDomainVM(List<EnumBaseModelDomainVM> listEnumBaseModelDomainVM)
  {
    if(listEnumBaseModelDomainVM == null) {
      return true;
    }
    if(listEnumBaseModelDomainVM.isNotEmpty) {
      return true;
    }
    for(EnumBaseModelDomainVM enumBaseModelDomainVM in EnumBaseModelDomainVM.values) {
      listEnumBaseModelDomainVM.add(enumBaseModelDomainVM);
    }
    return false;
  }

  bool _isCheckListToIsEqualsNullOrIsNotEmptyAndNoInsertEnumBaseListModelDomainVM(List<EnumBaseListModelDomainVM> listEnumBaseListModelDomainVM)
  {
    if(listEnumBaseListModelDomainVM == null) {
      return true;
    }
    if(listEnumBaseListModelDomainVM.isNotEmpty) {
      return true;
    }
    for(EnumBaseListModelDomainVM enumBaseListModelDomainVM in EnumBaseListModelDomainVM.values) {
      listEnumBaseListModelDomainVM.add(enumBaseListModelDomainVM);
    }
    return false;
  }

  void _disposeForAnyMap(Map map) {
    if(map == null) {
      return;
    }
    if(map.isEmpty) {
      map = null;
      return;
    }
    for (dynamic object in map.values) {
      if (object != null) {
        object = null;
      }
    }
    map.clear();
    map = null;
  }

  void _disposeForMapEnumAndStreamController(Map<Enum,StreamController> map) {
    if(map == null) {
      return;
    }
    if(map.isEmpty) {
      map = null;
      return;
    }
    for (StreamController streamController in map.values) {
      if (streamController == null) {
        continue;
      }
      if (!streamController.isClosed) {
        streamController.close();
      }
      streamController = null;
    }
    map.clear();
    map = null;
  }
}