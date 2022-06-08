import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:library_architecture_mvvm_modify/abstract_classes_check_inputs_data_by_user_and_calculate_before_function_view_model/delete_list_model_to_named_database_there_is_parameter_cidbuacbfvm.dart';
import 'package:library_architecture_mvvm_modify/abstract_classes_check_inputs_data_by_user_and_calculate_before_function_view_model/delete_model_to_named_database_there_is_parameter_cidbuacbfvm.dart';
import 'package:library_architecture_mvvm_modify/abstract_classes_check_inputs_data_by_user_and_calculate_before_function_view_model/insert_list_model_to_named_database_there_is_parameter_cidbuacbfvm.dart';
import 'package:library_architecture_mvvm_modify/abstract_classes_check_inputs_data_by_user_and_calculate_before_function_view_model/insert_model_to_named_database_there_is_parameter_cidbuacbfvm.dart';
import 'package:library_architecture_mvvm_modify/abstract_classes_check_inputs_data_by_user_and_calculate_before_function_view_model/update_list_model_to_named_database_there_is_parameter_cidbuacbfvm.dart';
import 'package:library_architecture_mvvm_modify/abstract_classes_check_inputs_data_by_user_and_calculate_before_function_view_model/update_model_to_named_database_there_is_parameter_cidbuacbfvm.dart';
import 'package:library_architecture_mvvm_modify/abstract_classes_converters_to_named_model/converter_to_base_list_model_named_database.dart';
import 'package:library_architecture_mvvm_modify/abstract_classes_converters_to_named_model/converter_to_base_model_named_database.dart';
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

abstract class BaseViewModel<T extends BaseModelDomain,Y extends BaseListModelDomain,Z extends BaseModelNamedDatabase,X extends BaseListModelNamedDatabase,GenericDataSource> implements BaseDispose
{
  /* Init DataSource */
  final GenericDataSource _dataSource;

  /* CIDBUACBFVM */
  final InsertModelToNamedDatabaseThereIsParameterCIDBUACBFVM<T> _insertModelToNamedDatabaseThereIsParameterCIDBUACBFVM;
  final InsertListModelToNamedDatabaseThereIsParameterCIDBUACBFVM<T,Y> _insertListModelToNamedDatabaseThereIsParameterCIDBUACBFVM;
  final UpdateModelToNamedDatabaseThereIsParameterCIDBUACBFVM<T> _updateModelToNamedDatabaseThereIsParameterCIDBUACBFVM;
  final UpdateListModelToNamedDatabaseThereIsParameterCIDBUACBFVM<T,Y> _updateListModelToNamedDatabaseThereIsParameterCIDBUACBFVM;
  final DeleteModelToNamedDatabaseThereIsParameterCIDBUACBFVM<T> _deleteModelToNamedDatabaseThereIsParameterCIDBUACBFVM;
  final DeleteListModelToNamedDatabaseThereIsParameterCIDBUACBFVM<T,Y> _deleteListModelToNamedDatabaseThereIsParameterCIDBUACBFVM;

  /* Set Default Model Object */
  final ItemCreator<T> _initCreatorBaseModelDomain;
  final ItemCreator<Y> _initCreatorBaseListModelDomain;

  /* Converter To Model */
  final ConverterToBaseModelNamedDatabase<T,Z> _converterToBaseModelNamedDatabase;
  final ConverterToBaseListModelNamedDatabase<Y,X> _converterToBaseListModelNamedDatabase;

  final List<EnumBaseModelDomainVM> _listEnumBaseModelDomainVM;
  final List<EnumBaseListModelDomainVM> _listEnumBaseListModelDomainVM;

  final Map<EnumBaseTypeParameterForGetModelNamedDatabaseAndGetListNamedDatabaseVM,BaseTypeParameter> _mapEnumBaseTypeParameterVMAndBaseTypeParameterForGetModelFromNamedDatabaseAndGetListFromNamedDatabase = {
    EnumBaseTypeParameterForGetModelNamedDatabaseAndGetListNamedDatabaseVM.getListModelFromNamedDatabaseThereIsParameter : BoolTypeParameter(true),
    EnumBaseTypeParameterForGetModelNamedDatabaseAndGetListNamedDatabaseVM.getModelFromNamedDatabaseThereIsParameter : BoolTypeParameter(true)
  };
  Map<Enum,BaseIterator> _mapEnumAndBaseIterator = {};
  EnumTypeParameter _enumTypeParameterForIteratorForListModelNamedDatabase;
  Map<EnumBaseModelDomainVM,T> _mapEnumBaseModelDomainVMAndBaseModelDomain;
  Map<EnumBaseListModelDomainVM,Y> _mapEnumBaseListModelDomainVMAndBaseListModelDomain;
  Map<EnumBaseModelDomainVM,StreamController<T>> _mapEnumBaseModelDomainVMAndStreamControllerForBaseModelDomain;
  Map<EnumBaseListModelDomainVM,StreamController<List<T>>> _mapEnumBaseListModelDomainVMAndStreamControllerForList;

  BaseViewModel(
      this._dataSource,
      this._listEnumBaseModelDomainVM,
      this._listEnumBaseListModelDomainVM,
      this._initCreatorBaseModelDomain,
      this._initCreatorBaseListModelDomain,
      this._converterToBaseModelNamedDatabase,
      this._converterToBaseListModelNamedDatabase,
      this._insertModelToNamedDatabaseThereIsParameterCIDBUACBFVM,
      this._insertListModelToNamedDatabaseThereIsParameterCIDBUACBFVM,
      this._updateModelToNamedDatabaseThereIsParameterCIDBUACBFVM,
      this._updateListModelToNamedDatabaseThereIsParameterCIDBUACBFVM,
      this._deleteModelToNamedDatabaseThereIsParameterCIDBUACBFVM,
      this._deleteListModelToNamedDatabaseThereIsParameterCIDBUACBFVM
      );

  BaseViewModel.forIterator(
      this._dataSource,
      this._listEnumBaseModelDomainVM,
      this._listEnumBaseListModelDomainVM,
      this._initCreatorBaseModelDomain,
      this._initCreatorBaseListModelDomain,
      this._converterToBaseModelNamedDatabase,
      this._converterToBaseListModelNamedDatabase,
      this._mapEnumAndBaseIterator,
      this._enumTypeParameterForIteratorForListModelNamedDatabase,
      this._insertModelToNamedDatabaseThereIsParameterCIDBUACBFVM,
      this._insertListModelToNamedDatabaseThereIsParameterCIDBUACBFVM,
      this._updateModelToNamedDatabaseThereIsParameterCIDBUACBFVM,
      this._updateListModelToNamedDatabaseThereIsParameterCIDBUACBFVM,
      this._deleteModelToNamedDatabaseThereIsParameterCIDBUACBFVM,
      this._deleteListModelToNamedDatabaseThereIsParameterCIDBUACBFVM,
      );

  @override
  void dispose() {
    _disposeForAnyMap(_mapEnumAndBaseIterator);
    _disposeForAnyMap(_mapEnumBaseTypeParameterVMAndBaseTypeParameterForGetModelFromNamedDatabaseAndGetListFromNamedDatabase);
    _disposeForAnyMap(_mapEnumBaseModelDomainVMAndBaseModelDomain);
    _disposeForAnyMap(_mapEnumBaseListModelDomainVMAndBaseListModelDomain);
    _disposeForMapEnumAndStreamController(_mapEnumBaseModelDomainVMAndStreamControllerForBaseModelDomain);
    _disposeForMapEnumAndStreamController(_mapEnumBaseListModelDomainVMAndStreamControllerForList);
  }

  /// Start Abstract Methods (Clone) **/

  T cloneModel(T model);

  Y cloneListModel(Y listModel);

  /// End Abstract Methods (Clone) **/

  /// Start Realized Abstract Methods (DataSource) **/
  ///
  @nonVirtual
  Response<bool, BaseException> callToMethodSetIteratorForListModeNamedDatabaseAndSetListModelNamedDatabaseUsingAnIteratorFVM() {
    return _baseCallToMethodSetIteratorForListModelNamedDatabaseAndSetListModelNamedDatabaseUsingAnIteratorFVM();
  }

  @nonVirtual
  Future<Response<bool, BaseException>> callToMethodGetListModelFromNamedDatabaseAndUseTheSettersFVM() {
    return _baseCallToMethodGetListModelFromNamedDatabaseAndUseTheSettersFVM(_dataSource as GetListModelFromNamedDatabaseDataSource<X>);
  }

  @nonVirtual
  Future<Response<bool, BaseException>> callToMethodGetListModelFromNamedDatabaseThereIsParameterAndUseTheSettersFVM() {
    return _baseCallToMethodGetListModelFromNamedDatabaseThereIsParameterAndUseTheSettersFVM(_dataSource as GetListModelFromNamedDatabaseThereIsParameterDataSource<X>);
  }

  @nonVirtual
  Future<Response<bool, BaseException>> callToMethodGetModelFromNamedDatabaseThereIsParameterAndUseTheSettersFVM() {
    return _baseCallToMethodGetModelFromNamedDatabaseThereIsParameterAndUseTheSettersFVM(_dataSource as GetModelFromNamedDatabaseThereIsParameterDataSource<Z>);
  }

  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> insertModelToNamedDatabaseThereIsParameterFVM() {
    return _baseInsertModelToNamedDatabaseThereIsParameterFVM(_dataSource as InsertModelToNamedDatabaseThereIsParameterDataSource<Z>);
  }

  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> insertListModelToNamedDatabaseThereIsParameterFVM() {
    return _baseInsertListModelToNamedDatabaseThereIsParameterFVM(_dataSource as InsertListModelToNamedDatabaseThereIsParameterDataSource<X>);
  }

  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> updateModelToNamedDatabaseThereIsParameterFVM() {
    return _baseUpdateModelToNamedDatabaseThereIsParameterFVM(_dataSource as UpdateModelToNamedDatabaseThereIsParameterDataSource<Z>);
  }

  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> updateListModelToNamedDatabaseThereIsParameterFVM() {
    return _baseUpdateListModelToNamedDatabaseThereIsParameterFVM(_dataSource as UpdateListModelToNamedDatabaseThereIsParameterDataSource<X>);
  }

  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> deleteModelToNamedDatabaseThereIsParameterFVM() {
    return _baseDeleteModelToNamedDatabaseThereIsParameterFVM(_dataSource as DeleteModelToNamedDatabaseThereIsParameterDataSource<Z>);
  }

  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> deleteListModelToNamedDatabaseThereIsParameterFVM() {
    return _baseDeleteListModelToNamedDatabaseThereIsParameterFVM(_dataSource as DeleteListModelToNamedDatabaseThereIsParameterDataSource<X>);
  }

  /// End Realized Abstract Methods (DataSource) **/

  @nonVirtual
  Response<bool, BaseException> insertModelToListModelDomainForNamedDatabaseFVM() {
    return _baseInsertModelToListModelDomainForNamedDatabaseFVM();
  }

  @nonVirtual
  Response<bool, BaseException> insertListModelToListModelDomainForNamedDatabaseFVM() {
    return _baseInsertListModelToListModelDomainForNamedDatabaseFVM();
  }

  @nonVirtual
  Response<bool, BaseException> updateModelToListModelDomainForNamedDatabaseFVM() {
    return _baseUpdateModelToListModelDomainForNamedDatabaseFVM();
  }

  @nonVirtual
  Response<bool, BaseException> updateListModelToListModelDomainForNamedDatabaseFVM() {
    return _baseUpdateListModelToListModelDomainForNamedDatabaseFVM();
  }

  @nonVirtual
  Response<bool, BaseException> deleteModelToListModelDomainForNamedDatabaseFVM() {
    return _baseDeleteModelToListModelDomainForNamedDatabaseFVM();
  }

  @nonVirtual
  Response<bool, BaseException> deleteListModelToListModelDomainForNamedDatabaseFVM() {
    return _baseDeleteListModelToListModelDomainForNamedDatabaseFVM();
  }

  /// Start Getters DataSource Methods **/

  @nonVirtual
  GenericDataSource get getDataSource {
    return _dataSource;
  }

  /// End Getters DataSource Methods **/
  
  /// Start Methods Base/EnumTypeParameter **/

  @nonVirtual
  void setMapEnumAndBaseIterator(
      BaseIterator baseIterator,
      Enum operation)
  {
    _mapEnumAndBaseIterator[operation] = baseIterator;
  }

  @nonVirtual
  void setMapEnumBaseTypeParameterVMAndBaseTypeParameterForGetModelFromNamedDatabaseAndGetListFromNamedDatabase(
      BaseTypeParameter baseTypeParameter,
      EnumBaseTypeParameterForGetModelNamedDatabaseAndGetListNamedDatabaseVM operation)
  {
    _mapEnumBaseTypeParameterVMAndBaseTypeParameterForGetModelFromNamedDatabaseAndGetListFromNamedDatabase[operation] = baseTypeParameter;
  }

  @nonVirtual
  BaseTypeParameter getBaseTypeParameterForGetModelNamedDatabaseAndGetListNamedDatabase(EnumBaseTypeParameterForGetModelNamedDatabaseAndGetListNamedDatabaseVM operation)
  {
    return _mapEnumBaseTypeParameterVMAndBaseTypeParameterForGetModelFromNamedDatabaseAndGetListFromNamedDatabase[operation];
  }

  @nonVirtual
  set setEnumTypeParameterForIteratorForListModelNamedDatabase(EnumTypeParameter enumTypeParameterForIteratorForListModelNamedDatabase) {
    _enumTypeParameterForIteratorForListModelNamedDatabase = enumTypeParameterForIteratorForListModelNamedDatabase;
  }

  @nonVirtual
  EnumTypeParameter get getEnumTypeParameterForIteratorForListModelNamedDatabase {
    return _enumTypeParameterForIteratorForListModelNamedDatabase;
  }

  /// End Methods Base/EnumTypeParameter **/

  /// Start Methods Model **/

  @nonVirtual
  void setModel(T newModel,EnumBaseModelDomainVM operation) {
    _getMapEnumBaseModelDomainVMAndBaseModelDomain[operation] = newModel;
  }

  @nonVirtual
  T getModel(EnumBaseModelDomainVM operation) {
    return _getMapEnumBaseModelDomainVMAndBaseModelDomain[operation];
  }

  @nonVirtual
  Future<T> getFutureModel(EnumBaseModelDomainVM operation) async {
    return _getMapEnumBaseModelDomainVMAndBaseModelDomain[operation];
  }

  @nonVirtual
  Stream<T> getStreamModel(EnumBaseModelDomainVM operation) {
    return _getMapEnumBaseModelDomainVMAndStreamControllerForBaseModelDomain[operation]?.stream;
  }

  @nonVirtual
  void notifyStreamModel(EnumBaseModelDomainVM operation) {
    _getMapEnumBaseModelDomainVMAndStreamControllerForBaseModelDomain[operation]?.add(
        _getMapEnumBaseModelDomainVMAndBaseModelDomain[operation]
    );
  }
  /// End Methods Model **/
  
  /// Start Methods ListModel **/

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
    return _getMapEnumBaseListModelDomainVMAndStreamControllerForList[operation].stream;
  }

  @nonVirtual
  void notifyStreamListModel(EnumBaseListModelDomainVM operation) {
    _getMapEnumBaseListModelDomainVMAndStreamControllerForList[operation].add(
        _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[operation].getListModelDomain
    );
  }

  /// End Methods ListModel **/

  /// Start ReadyIteratorForBaseListModelNamedDatabaseFVM

  Response<bool,BaseException> _baseCallToMethodSetIteratorForListModelNamedDatabaseAndSetListModelNamedDatabaseUsingAnIteratorFVM()
  {
    return _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[EnumBaseListModelDomainVM.getListModelFromNamedDatabaseThereIsParameterAndNoThereIsParameter]
        .setIteratorForListModelNamedDatabaseAndSetListModelNamedDatabaseUsingAnIterator(_enumTypeParameterForIteratorForListModelNamedDatabase, _mapEnumAndBaseIterator);
  }

  /// End ReadyIteratorForBaseListModelNamedDatabaseFVM

  /// Start ReadyModelNamedDatabaseFVM

  Future<Response<bool,BaseException>> _baseCallToMethodGetListModelFromNamedDatabaseAndUseTheSettersFVM(GetListModelFromNamedDatabaseDataSource<X> getListModelFromNamedDatabaseDataSource) async {
    Response<X,BaseException> response = await getListModelFromNamedDatabaseDataSource.getListModelFromNamedDatabaseDataSource();
    if(response.isSuccessResponse) {
      _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[EnumBaseListModelDomainVM.getListModelFromNamedDatabaseThereIsParameterAndNoThereIsParameter]
          .setListModelDomainFromBaseListModelDomain = response.getData.toBaseListModelDomain();
      return Response.success(true);
    } else {
      return Response.exception(response.getException);
    }
  }

  Future<Response<bool,BaseException>> _baseCallToMethodGetListModelFromNamedDatabaseThereIsParameterAndUseTheSettersFVM(GetListModelFromNamedDatabaseThereIsParameterDataSource<X> getListModelFromNamedDatabaseThereIsParameterDataSource) async {
    Response<X,BaseException> response = await getListModelFromNamedDatabaseThereIsParameterDataSource.getListModelFromNamedDatabaseThereIsParameterDataSource(
        _mapEnumBaseTypeParameterVMAndBaseTypeParameterForGetModelFromNamedDatabaseAndGetListFromNamedDatabase[EnumBaseTypeParameterForGetModelNamedDatabaseAndGetListNamedDatabaseVM.getListModelFromNamedDatabaseThereIsParameter]
    );
    if(response.isSuccessResponse) {
      _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[EnumBaseListModelDomainVM.getListModelFromNamedDatabaseThereIsParameterAndNoThereIsParameter]
          .setListModelDomainFromBaseListModelDomain = response.getData.toBaseListModelDomain();
      return Response.success(true);
    } else {
      return Response.exception(response.getException);
    }
  }

  Future<Response<bool,BaseException>> _baseCallToMethodGetModelFromNamedDatabaseThereIsParameterAndUseTheSettersFVM(GetModelFromNamedDatabaseThereIsParameterDataSource<Z> getModelFromNamedDatabaseThereIsParameterDataSource) async {
    Response<Z,BaseException> response = await getModelFromNamedDatabaseThereIsParameterDataSource.getModelFromNamedDatabaseThereIsParameterDataSource(
        _mapEnumBaseTypeParameterVMAndBaseTypeParameterForGetModelFromNamedDatabaseAndGetListFromNamedDatabase[EnumBaseTypeParameterForGetModelNamedDatabaseAndGetListNamedDatabaseVM.getModelFromNamedDatabaseThereIsParameter]
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

  Future<Response<BaseTypeParameter,BaseException>> _baseInsertModelToNamedDatabaseThereIsParameterFVM(InsertModelToNamedDatabaseThereIsParameterDataSource<Z> insertModelToNamedDatabaseThereIsParameterDataSource) async {
    if(_converterToBaseModelNamedDatabase == null) {
      return throw Exception("null converterToBaseModelNamedDatabase");
    }
    T modelDomain = cloneModel(_getMapEnumBaseModelDomainVMAndBaseModelDomain[EnumBaseModelDomainVM.insertModelToNamedDatabaseThereIsParameter]);
    Y listModelDomainForIf = cloneListModel(_getMapEnumBaseListModelDomainVMAndBaseListModelDomain[EnumBaseListModelDomainVM.getListModelFromNamedDatabaseThereIsParameterAndNoThereIsParameter]);
    ConverterToBaseModelNamedDatabase ctmnd = _converterToBaseModelNamedDatabase;
    if(_insertModelToNamedDatabaseThereIsParameterCIDBUACBFVM != null) {
      InsertModelToNamedDatabaseThereIsParameterCIDBUACBFVM cidbuacbfvm = _insertModelToNamedDatabaseThereIsParameterCIDBUACBFVM;
      ResponseGenericBoolAndDomainException response = cidbuacbfvm.insertModelToNamedDatabaseThereIsParameterCIDBUACBFVM(modelDomain,listModelDomainForIf.getListModelDomain);
      if(response.isSuccessResponse) {
        return await insertModelToNamedDatabaseThereIsParameterDataSource.insertModelToNamedDatabaseThereIsParameterDataSource(ctmnd.toBaseModelNamedDatabase(modelDomain));
      } else {
        return Response.exception(response.getException);
      }
    } else {
      return await insertModelToNamedDatabaseThereIsParameterDataSource.insertModelToNamedDatabaseThereIsParameterDataSource(ctmnd.toBaseModelNamedDatabase(modelDomain));
    }
  }

  Future<Response<BaseTypeParameter,BaseException>> _baseInsertListModelToNamedDatabaseThereIsParameterFVM(InsertListModelToNamedDatabaseThereIsParameterDataSource<X> insertListModelToNamedDatabaseThereIsParameterDataSource) async {
    if(_converterToBaseListModelNamedDatabase == null) {
      return throw Exception("null converterToBaseListModelNamedDatabase");
    }
    Y listModelDomain = cloneListModel(_getMapEnumBaseListModelDomainVMAndBaseListModelDomain[EnumBaseListModelDomainVM.insertListModelToNamedDatabaseThereIsParameter]);
    Y listModelDomainForIf = cloneListModel(_getMapEnumBaseListModelDomainVMAndBaseListModelDomain[EnumBaseListModelDomainVM.getListModelFromNamedDatabaseThereIsParameterAndNoThereIsParameter]);
    ConverterToBaseListModelNamedDatabase ctmnd = _converterToBaseListModelNamedDatabase;
    if(_insertListModelToNamedDatabaseThereIsParameterCIDBUACBFVM != null) {
      InsertListModelToNamedDatabaseThereIsParameterCIDBUACBFVM cidbuacbfvm = _insertListModelToNamedDatabaseThereIsParameterCIDBUACBFVM;
      ResponseGenericBoolAndDomainException response = cidbuacbfvm.insertListModelToNamedDatabaseThereIsParameterCIDBUACBFVM(listModelDomain,listModelDomainForIf.getListModelDomain);
      if(response.isSuccessResponse) {
        return await insertListModelToNamedDatabaseThereIsParameterDataSource.insertListModelToNamedDatabaseThereIsParameterDataSource(ctmnd.toBaseListModelNamedDatabase(listModelDomain));
      } else {
        return Response.exception(response.getException);
      }
    } else {
      return await insertListModelToNamedDatabaseThereIsParameterDataSource.insertListModelToNamedDatabaseThereIsParameterDataSource(ctmnd.toBaseListModelNamedDatabase(listModelDomain));
    }
  }

  Future<Response<BaseTypeParameter,BaseException>> _baseUpdateModelToNamedDatabaseThereIsParameterFVM(UpdateModelToNamedDatabaseThereIsParameterDataSource<Z> updateModelToNamedDatabaseThereIsParameterDataSource) async {
    if(_converterToBaseModelNamedDatabase == null) {
      return throw Exception("null converterToBaseModelNamedDatabase");
    }
    T modelDomain = cloneModel(_getMapEnumBaseModelDomainVMAndBaseModelDomain[EnumBaseModelDomainVM.updateModelToNamedDatabaseThereIsParameter]);
    Y listModelDomainForIf = cloneListModel(_getMapEnumBaseListModelDomainVMAndBaseListModelDomain[EnumBaseListModelDomainVM.getListModelFromNamedDatabaseThereIsParameterAndNoThereIsParameter]);
    ConverterToBaseModelNamedDatabase ctmnd = _converterToBaseModelNamedDatabase;
    if(_updateModelToNamedDatabaseThereIsParameterCIDBUACBFVM != null) {
      UpdateModelToNamedDatabaseThereIsParameterCIDBUACBFVM cidbuacbfvm = _updateModelToNamedDatabaseThereIsParameterCIDBUACBFVM;
      ResponseGenericBoolAndDomainException response = cidbuacbfvm.updateModelToNamedDatabaseThereIsParameterCIDBUACBFVM(modelDomain,listModelDomainForIf.getListModelDomain);
      if(response.isSuccessResponse) {
        return await updateModelToNamedDatabaseThereIsParameterDataSource.updateModelToNamedDatabaseThereIsParameterDataSource(ctmnd.toBaseModelNamedDatabase(modelDomain));
      } else {
        return Response.exception(response.getException);
      }
    } else {
      return await updateModelToNamedDatabaseThereIsParameterDataSource.updateModelToNamedDatabaseThereIsParameterDataSource(ctmnd.toBaseModelNamedDatabase(modelDomain));
    }
  }

  Future<Response<BaseTypeParameter,BaseException>> _baseUpdateListModelToNamedDatabaseThereIsParameterFVM(UpdateListModelToNamedDatabaseThereIsParameterDataSource<X> updateListModelToNamedDatabaseThereIsParameterDataSource) async {
    if(_converterToBaseListModelNamedDatabase == null) {
      return throw Exception("null converterToBaseListModelNamedDatabase");
    }
    Y listModelDomain = cloneListModel(_getMapEnumBaseListModelDomainVMAndBaseListModelDomain[EnumBaseListModelDomainVM.updateListModelToNamedDatabaseThereIsParameter]);
    Y listModelDomainForIf = cloneListModel(_getMapEnumBaseListModelDomainVMAndBaseListModelDomain[EnumBaseListModelDomainVM.getListModelFromNamedDatabaseThereIsParameterAndNoThereIsParameter]);
    ConverterToBaseListModelNamedDatabase ctmnd = _converterToBaseListModelNamedDatabase;
    if(_updateListModelToNamedDatabaseThereIsParameterCIDBUACBFVM != null) {
      UpdateListModelToNamedDatabaseThereIsParameterCIDBUACBFVM cidbuacbfvm = _updateListModelToNamedDatabaseThereIsParameterCIDBUACBFVM;
      ResponseGenericBoolAndDomainException response = cidbuacbfvm.updateListModelToNamedDatabaseThereIsParameterCIDBUACBFVM(listModelDomain,listModelDomainForIf.getListModelDomain);
      if(response.isSuccessResponse) {
        return await updateListModelToNamedDatabaseThereIsParameterDataSource.updateListModelToNamedDatabaseThereIsParameterDataSource(ctmnd.toBaseListModelNamedDatabase(listModelDomain));
      } else {
        return Response.exception(response.getException);
      }
    } else {
      return await updateListModelToNamedDatabaseThereIsParameterDataSource.updateListModelToNamedDatabaseThereIsParameterDataSource(ctmnd.toBaseListModelNamedDatabase(listModelDomain));
    }
  }

  Future<Response<BaseTypeParameter,BaseException>> _baseDeleteModelToNamedDatabaseThereIsParameterFVM(DeleteModelToNamedDatabaseThereIsParameterDataSource<Z> deleteModelToNamedDatabaseThereIsParameterDataSource) async {
    if(_converterToBaseModelNamedDatabase == null) {
      return throw Exception("null converterToBaseModelNamedDatabase");
    }
    T modelDomain = cloneModel(_getMapEnumBaseModelDomainVMAndBaseModelDomain[EnumBaseModelDomainVM.deleteModelToNamedDatabaseThereIsParameter]);
    Y listModelDomainForIf = cloneListModel(_getMapEnumBaseListModelDomainVMAndBaseListModelDomain[EnumBaseListModelDomainVM.getListModelFromNamedDatabaseThereIsParameterAndNoThereIsParameter]);
    ConverterToBaseModelNamedDatabase ctmnd = _converterToBaseModelNamedDatabase;
    if(_deleteModelToNamedDatabaseThereIsParameterCIDBUACBFVM != null) {
      DeleteModelToNamedDatabaseThereIsParameterCIDBUACBFVM cidbuacbfvm = _deleteModelToNamedDatabaseThereIsParameterCIDBUACBFVM;
      ResponseGenericBoolAndDomainException response = cidbuacbfvm.deleteModelToNamedDatabaseThereIsParameterCIDBUACBFVM(modelDomain,listModelDomainForIf.getListModelDomain);
      if(response.isSuccessResponse) {
        return await deleteModelToNamedDatabaseThereIsParameterDataSource.deleteModelToNamedDatabaseThereIsParameterDataSource(ctmnd.toBaseModelNamedDatabase(modelDomain));
      } else {
        return Response.exception(response.getException);
      }
    } else {
      return await deleteModelToNamedDatabaseThereIsParameterDataSource.deleteModelToNamedDatabaseThereIsParameterDataSource(ctmnd.toBaseModelNamedDatabase(modelDomain));
    }
  }

  Future<Response<BaseTypeParameter,BaseException>> _baseDeleteListModelToNamedDatabaseThereIsParameterFVM(DeleteListModelToNamedDatabaseThereIsParameterDataSource<X> deleteListModelToNamedDatabaseThereIsParameterDataSource) async {
    if(_converterToBaseListModelNamedDatabase == null) {
      return throw Exception("null converterToBaseListModelNamedDatabase");
    }
    Y listModelDomain = cloneListModel(_getMapEnumBaseListModelDomainVMAndBaseListModelDomain[EnumBaseListModelDomainVM.deleteListModelToNamedDatabaseThereIsParameter]);
    Y listModelDomainForIf = cloneListModel(_getMapEnumBaseListModelDomainVMAndBaseListModelDomain[EnumBaseListModelDomainVM.getListModelFromNamedDatabaseThereIsParameterAndNoThereIsParameter]);
    ConverterToBaseListModelNamedDatabase ctmnd = _converterToBaseListModelNamedDatabase;
    if(_deleteListModelToNamedDatabaseThereIsParameterCIDBUACBFVM != null) {
      DeleteListModelToNamedDatabaseThereIsParameterCIDBUACBFVM cidbuacbfvm = _deleteListModelToNamedDatabaseThereIsParameterCIDBUACBFVM;
      ResponseGenericBoolAndDomainException response = cidbuacbfvm.deleteListModelToNamedDatabaseThereIsParameterCIDBUACBFVM(listModelDomain,listModelDomainForIf.getListModelDomain);
      if(response.isSuccessResponse) {
        return await deleteListModelToNamedDatabaseThereIsParameterDataSource.deleteListModelToNamedDatabaseThereIsParameterDataSource(ctmnd.toBaseListModelNamedDatabase(listModelDomain));
      } else {
        return Response.exception(response.getException);
      }
    } else {
      return await deleteListModelToNamedDatabaseThereIsParameterDataSource.deleteListModelToNamedDatabaseThereIsParameterDataSource(ctmnd.toBaseListModelNamedDatabase(listModelDomain));
    }
  }

  /// End ReadyModelNamedDatabaseFVM

  /// Start ReadyListModelDomainForNamedDatabaseFVM

  Response<bool, BaseException> _baseInsertModelToListModelDomainForNamedDatabaseFVM() {
    return _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[EnumBaseListModelDomainVM.getListModelFromNamedDatabaseThereIsParameterAndNoThereIsParameter]
        .insertModelToListModelDomain(cloneModel(_getMapEnumBaseModelDomainVMAndBaseModelDomain[EnumBaseModelDomainVM.insertModelToNamedDatabaseThereIsParameter])
    );
  }

  Response<bool, BaseException> _baseInsertListModelToListModelDomainForNamedDatabaseFVM() {
    return _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[EnumBaseListModelDomainVM.getListModelFromNamedDatabaseThereIsParameterAndNoThereIsParameter]
        .insertListModelToListModelDomain(cloneListModel(_getMapEnumBaseListModelDomainVMAndBaseListModelDomain[EnumBaseListModelDomainVM.insertListModelToNamedDatabaseThereIsParameter]).getListModelDomain
    );
  }

  Response<bool, BaseException> _baseUpdateModelToListModelDomainForNamedDatabaseFVM() {
    return _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[EnumBaseListModelDomainVM.getListModelFromNamedDatabaseThereIsParameterAndNoThereIsParameter]
        .updateModelToListModelDomain(cloneModel(_getMapEnumBaseModelDomainVMAndBaseModelDomain[EnumBaseModelDomainVM.updateModelToNamedDatabaseThereIsParameter])
    );
  }

  Response<bool, BaseException> _baseUpdateListModelToListModelDomainForNamedDatabaseFVM() {
    return _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[EnumBaseListModelDomainVM.getListModelFromNamedDatabaseThereIsParameterAndNoThereIsParameter]
        .updateListModelToListModelDomain(cloneListModel(_getMapEnumBaseListModelDomainVMAndBaseListModelDomain[EnumBaseListModelDomainVM.updateListModelToNamedDatabaseThereIsParameter]).getListModelDomain
    );
  }

  Response<bool, BaseException> _baseDeleteModelToListModelDomainForNamedDatabaseFVM() {
    return _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[EnumBaseListModelDomainVM.getListModelFromNamedDatabaseThereIsParameterAndNoThereIsParameter]
        .deleteModelToListModelDomain(cloneModel(_getMapEnumBaseModelDomainVMAndBaseModelDomain[EnumBaseModelDomainVM.deleteModelToNamedDatabaseThereIsParameter])
    );
  }

  Response<bool, BaseException> _baseDeleteListModelToListModelDomainForNamedDatabaseFVM() {
    return _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[EnumBaseListModelDomainVM.getListModelFromNamedDatabaseThereIsParameterAndNoThereIsParameter]
        .deleteListModelToListModelDomain(cloneListModel(_getMapEnumBaseListModelDomainVMAndBaseListModelDomain[EnumBaseListModelDomainVM.deleteListModelToNamedDatabaseThereIsParameter]).getListModelDomain
    );
  }

  /// End ReadyListModelDomainForNamedDatabaseFVM

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

  Map<EnumBaseListModelDomainVM,StreamController<List<T>>> get _getMapEnumBaseListModelDomainVMAndStreamControllerForList {
    if(_mapEnumBaseListModelDomainVMAndStreamControllerForList != null) {
      return _mapEnumBaseListModelDomainVMAndStreamControllerForList;
    }
    _mapEnumBaseListModelDomainVMAndStreamControllerForList = _creationAndGetMapEnumBaseListModelDomainVMAndStreamControllerForList();
    return _mapEnumBaseListModelDomainVMAndStreamControllerForList;
  }

  Map<EnumBaseModelDomainVM,T> _creationAndGetMapEnumBaseModelDomainVMAndBaseModelDomain() {
    _checkListToIsEmptyAndInsertEnumBaseModelDomainVMIfListEmpty(_listEnumBaseModelDomainVM);

    Map<EnumBaseModelDomainVM,T> map = {};
    for(EnumBaseModelDomainVM viewModelOperation in _listEnumBaseModelDomainVM) {
      map[viewModelOperation] = _initCreatorBaseModelDomain();
    }
    return map;
  }

  Map<EnumBaseModelDomainVM,StreamController<T>> _creationAndGetMapEnumBaseModelDomainVMAndStreamControllerForBaseModelDomain() {
    _checkListToIsEmptyAndInsertEnumBaseModelDomainVMIfListEmpty(_listEnumBaseModelDomainVM);

    Map<EnumBaseModelDomainVM,StreamController<T>> map = {};
    for(EnumBaseModelDomainVM viewModelOperation in _listEnumBaseModelDomainVM) {
      map[viewModelOperation] = StreamController<T>.broadcast();
    }
    return map;
  }

  Map<EnumBaseListModelDomainVM,Y> _creationAndGetMapEnumBaseListModelDomainVMAndBaseListModelDomain() {
    _checkListToIsEmptyAndInsertEnumBaseListModelDomainVMIfListEmpty(_listEnumBaseListModelDomainVM);

    Map<EnumBaseListModelDomainVM,Y> map = {};
    for(EnumBaseListModelDomainVM viewModelOperation in _listEnumBaseListModelDomainVM) {
      map[viewModelOperation] = _initCreatorBaseListModelDomain();
    }
    return map;
  }

  Map<EnumBaseListModelDomainVM,StreamController<List<T>>> _creationAndGetMapEnumBaseListModelDomainVMAndStreamControllerForList() {
    _checkListToIsEmptyAndInsertEnumBaseListModelDomainVMIfListEmpty(_listEnumBaseListModelDomainVM);

    Map<EnumBaseListModelDomainVM,StreamController<List<T>>> map = {};
    for(EnumBaseListModelDomainVM viewModelOperation in _listEnumBaseListModelDomainVM) {
      map[viewModelOperation] = StreamController<List<T>>.broadcast();
    }
    return map;
  }

  void _checkListToIsEmptyAndInsertEnumBaseModelDomainVMIfListEmpty(List<EnumBaseModelDomainVM> listEnumBaseModelDomainVM)
  {
    if(listEnumBaseModelDomainVM.isEmpty) {
      for(EnumBaseModelDomainVM enumBaseListModelDomainVM in EnumBaseModelDomainVM.values) {
        listEnumBaseModelDomainVM.add(enumBaseListModelDomainVM);
      }
    }
  }

  void _checkListToIsEmptyAndInsertEnumBaseListModelDomainVMIfListEmpty(List<EnumBaseListModelDomainVM> listEnumBaseListModelDomainVM)
  {
    if(listEnumBaseListModelDomainVM.isEmpty) {
      for(EnumBaseListModelDomainVM enumBaseListModelDomainVM in EnumBaseListModelDomainVM.values) {
        listEnumBaseListModelDomainVM.add(enumBaseListModelDomainVM);
      }
    }
  }

  void _disposeForAnyMap(Map map) {
    if(map != null) {
      if(map.isNotEmpty) {
        for (dynamic object in map.values) {
          if (object != null) {
            object = null;
          }
        }
        map.clear();
      }
      map = null;
    }
  }

  void _disposeForMapEnumAndStreamController(Map<Enum,StreamController> map) {
    if(map != null) {
      if(map.isNotEmpty) {
        for (StreamController streamController in map.values) {
          if (streamController != null) {
            if (!streamController.isClosed) {
              streamController.close();
            }
            streamController = null;
          }
        }
        map.clear();
      }
      map = null;
    }
  }
}