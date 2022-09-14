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
import 'package:library_architecture_mvvm_modify/base_exception/base_exception.dart';
import 'package:library_architecture_mvvm_modify/base_exception/local_exception.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_list_model/base_list_model_domain.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_list_model/base_list_model_named_database.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_model_domain.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_model_named_database.dart';
import 'package:library_architecture_mvvm_modify/base_type_parameter/base_type_parameter.dart';
import 'package:library_architecture_mvvm_modify/base_type_parameter/bool_type_parameter.dart';
import 'package:library_architecture_mvvm_modify/constants.dart';
import 'package:library_architecture_mvvm_modify/response.dart';
import 'package:library_architecture_mvvm_modify/response_generic_bool_and_domain_exception.dart';

typedef ItemCreator<S> = S Function();

abstract class BaseBackgroundModel<T extends BaseModelDomain,Y extends BaseListModelDomain<T>,Z extends BaseModelNamedDatabase<T>,X extends BaseListModelNamedDatabase<Y,Z>> {
  /* Init ThisClass */
  final Object _thisClass;

  /* Init DataSource */
  final Object _dataSource;

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

  BaseBackgroundModel(
      this._thisClass,
      this._dataSource,
      this._converterToBaseModelNamedDatabase,
      this._converterToBaseListModelNamedDatabase,
      this._insertModelToNamedDatabaseFBDS,
      this._insertListModelToNamedDatabaseFBDS,
      this._updateModelToNamedDatabaseFBDS,
      this._updateListModelToNamedDatabaseFBDS,
      this._deleteModelToNamedDatabaseFBDS,
      this._deleteListModelToNamedDatabaseFBDS);

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
  Future<Response<List<T>, BaseException>> getListModelFromNamedDatabase() {
    if(_dataSource == null) {
      return throw LocalException(_thisClass,constDeveloper,"DataSource equals null");
    }
    return _baseGetListModelFromNamedDatabase(
        _dataSource as GetListModelFromNamedDatabaseDataSource<X>);
  }

  // start getListThereIsParameter 2
  @protected
  @nonVirtual
  Future<Response<List<T>, BaseException>> getListModelFromNamedDatabaseThereIsParameter() {
    if(_dataSource == null) {
      return throw LocalException(_thisClass,constDeveloper,"DataSource equals null");
    }
    return _baseGetListModelFromNamedDatabaseThereIsParameter(
        _dataSource as GetListModelFromNamedDatabaseThereIsParameterDataSource<X,BaseTypeParameter>,
        BoolTypeParameter(true));
  }

  @protected
  @nonVirtual
  Future<Response<List<T>, BaseException>> defaultGetListModelFromNamedDatabaseThereIsParameter(
      BaseTypeParameter newBaseTypeParameter)
  {
    if(_dataSource == null) {
      return throw LocalException(_thisClass,constDeveloper,"DataSource equals null");
    }
    return _baseGetListModelFromNamedDatabaseThereIsParameter(
        _dataSource as GetListModelFromNamedDatabaseThereIsParameterDataSource<X,BaseTypeParameter>,
        newBaseTypeParameter);
  }
  // end getListThereIsParameter 2

  // start getModelThereIsParameter 2
  @protected
  @nonVirtual
  Future<Response<T, BaseException>> getModelFromNamedDatabaseThereIsParameter() {
    if(_dataSource == null) {
      return throw LocalException(_thisClass,constDeveloper,"DataSource equals null");
    }
    return _baseGetModelFromNamedDatabaseThereIsParameter(
        _dataSource as GetModelFromNamedDatabaseThereIsParameterDataSource<Z,BaseTypeParameter>,
        BoolTypeParameter(true));
  }

  @protected
  @nonVirtual
  Future<Response<T, BaseException>> defaultGetModelFromNamedDatabaseThereIsParameter(
      BaseTypeParameter newBaseTypeParameter)
  {
    if(_dataSource == null) {
      return throw LocalException(_thisClass,constDeveloper,"DataSource equals null");
    }
    return _baseGetModelFromNamedDatabaseThereIsParameter(
        _dataSource as GetModelFromNamedDatabaseThereIsParameterDataSource<Z,BaseTypeParameter>,
        newBaseTypeParameter);
  }
  // end getModelThereIsParameter 2

  // start insert 3
  @protected
  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> insertModelToNamedDatabaseThereIsParameter() {
    if(_dataSource == null) {
      return throw LocalException(_thisClass,constDeveloper,"DataSource equals null");
    }
    return _baseInsertModelToNamedDatabaseThereIsParameter(
        _dataSource as InsertModelToNamedDatabaseThereIsParameterDataSource<Z>,
        BaseModelDomain(""),
        List.empty(growable: true));
  }
  
  @protected
  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> defaultInsertModelToNamedDatabaseThereIsParameter(
      T newModelDomain) 
  {
    if(_dataSource == null) {
      return throw LocalException(_thisClass,constDeveloper,"DataSource equals null");
    }
    return _baseInsertModelToNamedDatabaseThereIsParameter(
        _dataSource as InsertModelToNamedDatabaseThereIsParameterDataSource<Z>, 
        newModelDomain,
        List.empty(growable: true));
  }

  @protected
  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> defaultInsertModelToNamedDatabaseThereIsParameterAndDefaultListModelForFBDS(
      T newModelDomain, List<T> newListModeDomainForFBDS)
  {
    if(_dataSource == null) {
      return throw LocalException(_thisClass,constDeveloper,"DataSource equals null");
    }
    return _baseInsertModelToNamedDatabaseThereIsParameter(
        _dataSource as InsertModelToNamedDatabaseThereIsParameterDataSource<Z>,
        newModelDomain,
        newListModeDomainForFBDS);
  }
  // end insert 3

  // start insertList 3
  @protected
  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> insertListModelToNamedDatabaseThereIsParameter() {
    if(_dataSource == null) {
      return throw LocalException(_thisClass,constDeveloper,"DataSource equals null");
    }
    return _baseInsertListModelToNamedDatabaseThereIsParameter(
        _dataSource as InsertListModelToNamedDatabaseThereIsParameterDataSource<X>,
        List.empty(growable: true),
        List.empty(growable: true));
  }
  
  @protected
  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> defaultInsertListModelToNamedDatabaseThereIsParameter(
      List<T> newListModelDomain)
  {
    if(_dataSource == null) {
      return throw LocalException(_thisClass,constDeveloper,"DataSource equals null");
    }
    return _baseInsertListModelToNamedDatabaseThereIsParameter(
        _dataSource as InsertListModelToNamedDatabaseThereIsParameterDataSource<X>,
        newListModelDomain,
        List.empty(growable: true));
  }

  @protected
  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> defaultInsertListModelToNamedDatabaseThereIsParameterAndDefaultListModelForFBDS(
      List<T> newListModelDomain, List<T> newListModeDomainForFBDS)
  {
    if(_dataSource == null) {
      return throw LocalException(_thisClass,constDeveloper,"DataSource equals null");
    }
    return _baseInsertListModelToNamedDatabaseThereIsParameter(
        _dataSource as InsertListModelToNamedDatabaseThereIsParameterDataSource<X>,
        newListModelDomain,
        newListModeDomainForFBDS);
  }
  // end insertList 3

  // start update 3
  @protected
  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> updateModelToNamedDatabaseThereIsParameter() {
    if(_dataSource == null) {
      return throw LocalException(_thisClass,constDeveloper,"DataSource equals null");
    }
    return _baseUpdateModelToNamedDatabaseThereIsParameter(
        _dataSource as UpdateModelToNamedDatabaseThereIsParameterDataSource<Z>,
        BaseModelDomain(""),
        List.empty(growable: true));
  }
  
  @protected
  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> defaultUpdateModelToNamedDatabaseThereIsParameter(
      T newModelDomain)
  {
    if(_dataSource == null) {
      return throw LocalException(_thisClass,constDeveloper,"DataSource equals null");
    }
    return _baseUpdateModelToNamedDatabaseThereIsParameter(
        _dataSource as UpdateModelToNamedDatabaseThereIsParameterDataSource<Z>,
        newModelDomain,
        List.empty(growable: true));
  }

  @protected
  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> defaultUpdateModelToNamedDatabaseThereIsParameterAndDefaultListModelForFBDS(
      T newModelDomain,List<T> newListModeDomainForFBDS)
  {
    if(_dataSource == null) {
      return throw LocalException(_thisClass,constDeveloper,"DataSource equals null");
    }
    return _baseUpdateModelToNamedDatabaseThereIsParameter(
        _dataSource as UpdateModelToNamedDatabaseThereIsParameterDataSource<Z>, 
        newModelDomain, 
        newListModeDomainForFBDS);
  }
  // end update 3

  // start updateList 3
  @protected
  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> updateListModelToNamedDatabaseThereIsParameter() {
    if(_dataSource == null) {
      return throw LocalException(_thisClass,constDeveloper,"DataSource equals null");
    }
    return _baseUpdateListModelToNamedDatabaseThereIsParameter(
        _dataSource as UpdateListModelToNamedDatabaseThereIsParameterDataSource<X>,
        List.empty(growable: true),
        List.empty(growable: true));
  }
  
  @protected
  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> defaultUpdateListModelToNamedDatabaseThereIsParameter(
      List<T> newListModelDomain)
  {
    if(_dataSource == null) {
      return throw LocalException(_thisClass,constDeveloper,"DataSource equals null");
    }
    return _baseUpdateListModelToNamedDatabaseThereIsParameter(
        _dataSource as UpdateListModelToNamedDatabaseThereIsParameterDataSource<X>,
        newListModelDomain,
        List.empty(growable: true));
  }

  @protected
  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> defaultUpdateListModelToNamedDatabaseThereIsParameterAndDefaultListModelForFBDS(
      List<T> newListModelDomain,List<T> newListModeDomainForFBDS)
  {
    if(_dataSource == null) {
      return throw LocalException(_thisClass,constDeveloper,"DataSource equals null");
    }
    return _baseUpdateListModelToNamedDatabaseThereIsParameter(
        _dataSource as UpdateListModelToNamedDatabaseThereIsParameterDataSource<X>,
        newListModelDomain,
        newListModeDomainForFBDS
    );
  }
  // end updateList 3

  // start delete 3
  @protected
  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> deleteModelToNamedDatabaseThereIsParameter() {
    if(_dataSource == null) {
      return throw LocalException(_thisClass,constDeveloper,"DataSource equals null");
    }
    return _baseDeleteModelToNamedDatabaseThereIsParameter(
        _dataSource as DeleteModelToNamedDatabaseThereIsParameterDataSource<Z>,
        BaseModelDomain(""),
        List.empty(growable: true));
  }
  
  @protected
  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> defaultDeleteModelToNamedDatabaseThereIsParameter(
      T newModelDomain)
  {
    if(_dataSource == null) {
      return throw LocalException(_thisClass,constDeveloper,"DataSource equals null");
    }
    return _baseDeleteModelToNamedDatabaseThereIsParameter(
        _dataSource as DeleteModelToNamedDatabaseThereIsParameterDataSource<Z>, 
        newModelDomain,
        List.empty(growable: true));
  }

  @protected
  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> defaultDeleteModelToNamedDatabaseThereIsParameterAndDefaultListModelForFBDS(
      T newModelDomain,List<T> newListModeDomainForFBDS)
  {
    if(_dataSource == null) {
      return throw LocalException(_thisClass,constDeveloper,"DataSource equals null");
    }
    return _baseDeleteModelToNamedDatabaseThereIsParameter(
        _dataSource as DeleteModelToNamedDatabaseThereIsParameterDataSource<Z>,
        newModelDomain,
        newListModeDomainForFBDS
    );
  }
  // end delete 3

  // start deleteList 3
  @protected
  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> deleteListModelToNamedDatabaseThereIsParameter() {
    if(_dataSource == null) {
      return throw LocalException(_thisClass,constDeveloper,"DataSource equals null");
    }
    return _baseDeleteListModelToNamedDatabaseThereIsParameter(
        _dataSource as DeleteListModelToNamedDatabaseThereIsParameterDataSource<X>,
        List.empty(growable: true),
        List.empty(growable: true));
  }

  @protected
  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> defaultDeleteListModelToNamedDatabaseThereIsParameter(
      List<T> newListModelDomain)
  {
    if(_dataSource == null) {
      return throw LocalException(_thisClass,constDeveloper,"DataSource equals null");
    }
    return _baseDeleteListModelToNamedDatabaseThereIsParameter(
        _dataSource as DeleteListModelToNamedDatabaseThereIsParameterDataSource<X>,
        newListModelDomain,
        List.empty(growable: true));
  }

  @protected
  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> defaultDeleteListModelToNamedDatabaseThereIsParameterAndDefaultListModelForFBDS(
      List<T> newListModelDomain, List<T> newListModeDomainForFBDS)
  {
    if(_dataSource == null) {
      return throw LocalException(_thisClass,constDeveloper,"DataSource equals null");
    }
    return _baseDeleteListModelToNamedDatabaseThereIsParameter(
        _dataSource as DeleteListModelToNamedDatabaseThereIsParameterDataSource<X>,
        newListModelDomain,
        newListModeDomainForFBDS
    );
  }
  // end deleteList 3
  
  /// End DataSource **/
  ///
  Future<Response<List<T>,BaseException>> _baseGetListModelFromNamedDatabase(
      GetListModelFromNamedDatabaseDataSource<X> getListModelFromNamedDatabaseDataSource)
  async {
    Response<X,BaseException> response = await getListModelFromNamedDatabaseDataSource
        .getListModelFromNamedDatabaseDataSource();
    if(response.isExceptionResponse) {
      return Response.exception(response.getException);
    }
    Y baseListModelDomain = response.getData.toBaseListModelDomain();
    return Response.success(baseListModelDomain.getListModelDomain);
  }

  Future<Response<List<T>,BaseException>> _baseGetListModelFromNamedDatabaseThereIsParameter(
      GetListModelFromNamedDatabaseThereIsParameterDataSource<X,BaseTypeParameter> getListModelFromNamedDatabaseThereIsParameterDataSource,
      BaseTypeParameter newBaseTypeParameter)
  async {
    Response<X,BaseException> response = await getListModelFromNamedDatabaseThereIsParameterDataSource
        .getListModelFromNamedDatabaseThereIsParameterDataSource(newBaseTypeParameter);
    if(response.isExceptionResponse) {
      return Response.exception(response.getException);
    }
    Y baseListModelDomain = response.getData.toBaseListModelDomain();
    return Response.success(baseListModelDomain.getListModelDomain);
  }

  Future<Response<T,BaseException>> _baseGetModelFromNamedDatabaseThereIsParameter(
      GetModelFromNamedDatabaseThereIsParameterDataSource<Z,BaseTypeParameter> getModelFromNamedDatabaseThereIsParameterDataSource,
      BaseTypeParameter newBaseTypeParameter)
  async {
    Response<Z,BaseException> response = await getModelFromNamedDatabaseThereIsParameterDataSource
        .getModelFromNamedDatabaseThereIsParameterDataSource(newBaseTypeParameter);
    if(response.isExceptionResponse) {
      return Response.exception(response.getException);
    }
    T modelDomain = response.getData.toBaseModelDomain();
    return Response.success(modelDomain);
  }

  Future<Response<BaseTypeParameter,BaseException>> _baseInsertModelToNamedDatabaseThereIsParameter(
      InsertModelToNamedDatabaseThereIsParameterDataSource<Z> insertModelToNamedDatabaseThereIsParameterDataSource,
      BaseModelDomain newModelDomain,
      List<BaseModelDomain> newListModeDomainForFBDS)
  async {
    if(_converterToBaseModelNamedDatabase == null) {
      return throw LocalException(_thisClass,constDeveloper,"ConverterToBaseModelNamedDatabase equals null");
    }
    T modelDomain = cloneModelDomain(newModelDomain);
    if(_insertModelToNamedDatabaseFBDS == null) {
      return await insertModelToNamedDatabaseThereIsParameterDataSource
          .insertModelToNamedDatabaseThereIsParameterDataSource(_converterToBaseModelNamedDatabase.toBaseModelNamedDatabase(modelDomain));
    }
    ResponseGenericBoolAndDomainException response = _insertModelToNamedDatabaseFBDS
        .insertModelToNamedDatabaseFBDS(modelDomain,_cloneListModelDomain(newListModeDomainForFBDS));
    if(response.isExceptionResponse) {
      return Response.exception(response.getException);
    }
    if(response.isCanceledOperationWithoutErrorAndSuccess) {
      return Response.cancelOperationWithoutErrorAndSuccess(response.getCancelOperationWithoutErrorAndSuccess);
    }
    return await insertModelToNamedDatabaseThereIsParameterDataSource
        .insertModelToNamedDatabaseThereIsParameterDataSource(_converterToBaseModelNamedDatabase.toBaseModelNamedDatabase(modelDomain));
  }

  Future<Response<BaseTypeParameter,BaseException>> _baseInsertListModelToNamedDatabaseThereIsParameter(
      InsertListModelToNamedDatabaseThereIsParameterDataSource<X> insertListModelToNamedDatabaseThereIsParameterDataSource,
      List<BaseModelDomain> newListModeDomain,
      List<BaseModelDomain> newListModeDomainForFBDS)
  async {
    if(_converterToBaseListModelNamedDatabase == null) {
      return throw LocalException(_thisClass,constDeveloper,"ConverterToBaseListModelNamedDatabase equals null");
    }
    BaseListModelDomain<T> listModelDomain = BaseListModelDomain<T>(_cloneListModelDomain(newListModeDomain));
    if(_insertListModelToNamedDatabaseFBDS == null) {
      return await insertListModelToNamedDatabaseThereIsParameterDataSource
          .insertListModelToNamedDatabaseThereIsParameterDataSource(_converterToBaseListModelNamedDatabase.toBaseListModelNamedDatabase(listModelDomain));
    }
    ResponseGenericBoolAndDomainException response = _insertListModelToNamedDatabaseFBDS
        .insertListModelToNamedDatabaseFBDS(listModelDomain,_cloneListModelDomain(newListModeDomainForFBDS));
    if(response.isExceptionResponse) {
      return Response.exception(response.getException);
    }
    if(response.isCanceledOperationWithoutErrorAndSuccess) {
      return Response.cancelOperationWithoutErrorAndSuccess(response.getCancelOperationWithoutErrorAndSuccess);
    }
    return await insertListModelToNamedDatabaseThereIsParameterDataSource
        .insertListModelToNamedDatabaseThereIsParameterDataSource(_converterToBaseListModelNamedDatabase.toBaseListModelNamedDatabase(listModelDomain));
  }

  Future<Response<BaseTypeParameter,BaseException>> _baseUpdateModelToNamedDatabaseThereIsParameter(
      UpdateModelToNamedDatabaseThereIsParameterDataSource<Z> updateModelToNamedDatabaseThereIsParameterDataSource,
      BaseModelDomain newModelDomain,
      List<BaseModelDomain> newListModeDomainForFBDS)
  async {
    if(_converterToBaseModelNamedDatabase == null) {
      return throw LocalException(_thisClass,constDeveloper,"ConverterToBaseModelNamedDatabase equals null");
    }
    T modelDomain = cloneModelDomain(newModelDomain);
    if(_updateModelToNamedDatabaseFBDS == null) {
      return await updateModelToNamedDatabaseThereIsParameterDataSource
          .updateModelToNamedDatabaseThereIsParameterDataSource(_converterToBaseModelNamedDatabase.toBaseModelNamedDatabase(modelDomain));
    }
    ResponseGenericBoolAndDomainException response = _updateModelToNamedDatabaseFBDS
        .updateModelToNamedDatabaseFBDS(modelDomain,_cloneListModelDomain(newListModeDomainForFBDS));
    if(response.isExceptionResponse) {
      return Response.exception(response.getException);
    }
    if(response.isCanceledOperationWithoutErrorAndSuccess) {
      return Response.cancelOperationWithoutErrorAndSuccess(response.getCancelOperationWithoutErrorAndSuccess);
    }
    return await updateModelToNamedDatabaseThereIsParameterDataSource
        .updateModelToNamedDatabaseThereIsParameterDataSource(_converterToBaseModelNamedDatabase.toBaseModelNamedDatabase(modelDomain));
  }

  Future<Response<BaseTypeParameter,BaseException>> _baseUpdateListModelToNamedDatabaseThereIsParameter(
      UpdateListModelToNamedDatabaseThereIsParameterDataSource<X> updateListModelToNamedDatabaseThereIsParameterDataSource,
      List<BaseModelDomain> newListModelDomain,
      List<BaseModelDomain> newListModeDomainForFBDS)
  async {
    if(_converterToBaseListModelNamedDatabase == null) {
      return throw LocalException(_thisClass,constDeveloper,"ConverterToBaseListModelNamedDatabase equals null");
    }
    BaseListModelDomain<T> listModelDomain = BaseListModelDomain<T>(_cloneListModelDomain(newListModelDomain));
    if(_updateListModelToNamedDatabaseFBDS == null) {
      return await updateListModelToNamedDatabaseThereIsParameterDataSource
          .updateListModelToNamedDatabaseThereIsParameterDataSource(_converterToBaseListModelNamedDatabase.toBaseListModelNamedDatabase(listModelDomain));
    }
    ResponseGenericBoolAndDomainException response = _updateListModelToNamedDatabaseFBDS
        .updateListModelToNamedDatabaseFBDS(listModelDomain,_cloneListModelDomain(newListModeDomainForFBDS));
    if(response.isExceptionResponse) {
      return Response.exception(response.getException);
    }
    if(response.isCanceledOperationWithoutErrorAndSuccess) {
      return Response.cancelOperationWithoutErrorAndSuccess(response.getCancelOperationWithoutErrorAndSuccess);
    }
    return await updateListModelToNamedDatabaseThereIsParameterDataSource
        .updateListModelToNamedDatabaseThereIsParameterDataSource(_converterToBaseListModelNamedDatabase.toBaseListModelNamedDatabase(listModelDomain));
  }

  Future<Response<BaseTypeParameter,BaseException>> _baseDeleteModelToNamedDatabaseThereIsParameter(
      DeleteModelToNamedDatabaseThereIsParameterDataSource<Z> deleteModelToNamedDatabaseThereIsParameterDataSource,
      BaseModelDomain newModelDomain,
      List<BaseModelDomain> newListModeDomainForFBDS)
  async {
    if(_converterToBaseModelNamedDatabase == null) {
      return throw LocalException(_thisClass,constDeveloper,"ConverterToBaseModelNamedDatabase equals null");
    }
    T modelDomain = cloneModelDomain(newModelDomain);
    if(_deleteModelToNamedDatabaseFBDS == null) {
      return await deleteModelToNamedDatabaseThereIsParameterDataSource
          .deleteModelToNamedDatabaseThereIsParameterDataSource(_converterToBaseModelNamedDatabase.toBaseModelNamedDatabase(modelDomain));
    }
    ResponseGenericBoolAndDomainException response = _deleteModelToNamedDatabaseFBDS
        .deleteModelToNamedDatabaseFBDS(modelDomain,_cloneListModelDomain(newListModeDomainForFBDS));
    if(response.isExceptionResponse) {
      return Response.exception(response.getException);
    }
    if(response.isCanceledOperationWithoutErrorAndSuccess) {
      return Response.cancelOperationWithoutErrorAndSuccess(response.getCancelOperationWithoutErrorAndSuccess);
    }
    return await deleteModelToNamedDatabaseThereIsParameterDataSource
        .deleteModelToNamedDatabaseThereIsParameterDataSource(_converterToBaseModelNamedDatabase.toBaseModelNamedDatabase(modelDomain));
  }

  Future<Response<BaseTypeParameter,BaseException>> _baseDeleteListModelToNamedDatabaseThereIsParameter(
      DeleteListModelToNamedDatabaseThereIsParameterDataSource<X> deleteListModelToNamedDatabaseThereIsParameterDataSource,
      List<BaseModelDomain> newListModelDomain,
      List<BaseModelDomain> newListModeDomainForFBDS)
  async {
    if(_converterToBaseListModelNamedDatabase == null) {
      return throw LocalException(_thisClass,constDeveloper,"ConverterToBaseListModelNamedDatabase equals null");
    }
    BaseListModelDomain<T> listModelDomain = BaseListModelDomain<T>(_cloneListModelDomain(newListModelDomain));
    if(_deleteListModelToNamedDatabaseFBDS == null) {
      return await deleteListModelToNamedDatabaseThereIsParameterDataSource
          .deleteListModelToNamedDatabaseThereIsParameterDataSource(_converterToBaseListModelNamedDatabase.toBaseListModelNamedDatabase(listModelDomain));
    }
    ResponseGenericBoolAndDomainException response = _deleteListModelToNamedDatabaseFBDS
        .deleteListModelToNamedDatabaseFBDS(listModelDomain,_cloneListModelDomain(newListModeDomainForFBDS));
    if(response.isExceptionResponse) {
      return Response.exception(response.getException);
    }
    if(response.isCanceledOperationWithoutErrorAndSuccess) {
      return Response.cancelOperationWithoutErrorAndSuccess(response.getCancelOperationWithoutErrorAndSuccess);
    }
    return await deleteListModelToNamedDatabaseThereIsParameterDataSource
        .deleteListModelToNamedDatabaseThereIsParameterDataSource(_converterToBaseListModelNamedDatabase.toBaseListModelNamedDatabase(listModelDomain));
  }
}