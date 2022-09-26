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
import 'package:library_architecture_mvvm_modify/base_data_source/interface_data_source/delete_list_model_to_named_database_tip_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_data_source/interface_data_source/delete_model_to_named_database_np_data_source.dart';
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
import 'package:library_architecture_mvvm_modify/base_data_source/interface_data_source/update_list_model_to_named_database_tip_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_data_source/interface_data_source/update_model_to_named_database_np_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_data_source/interface_data_source/update_model_to_named_database_tip_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_exception/base_exception.dart';
import 'package:library_architecture_mvvm_modify/base_exception/local_exception.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_list_model/base_list_model.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_list_model/base_list_model_named_database.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_model.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_model_named_database.dart';
import 'package:library_architecture_mvvm_modify/base_type_parameter/base_type_parameter.dart';
import 'package:library_architecture_mvvm_modify/constants.dart';
import 'package:library_architecture_mvvm_modify/response.dart';
import 'package:library_architecture_mvvm_modify/response_generic_bool_and_domain_exception.dart';

typedef ItemCreator<S> = S Function();

abstract class BaseBackgroundModel<T extends BaseModel,Y extends BaseListModel<T>,Z extends BaseModelNamedDatabase<T>,X extends BaseListModelNamedDatabase<Y,Z>>
{
  /* CTMND (Converter To Model Named Database) */
  final ConverterToBaseModelNamedDatabase<T,Z> _converterToBaseModelNamedDatabase;
  final ConverterToBaseListModelNamedDatabase<Y,X> _converterToBaseListModelNamedDatabase;

  /* Init DataSource */
  Object _dataSource;

  /* FBDS (Function Before Data Source) */
  InsertModelToNamedDatabaseFBDS<T> _insertModelToNamedDatabaseFBDS;
  InsertListModelToNamedDatabaseFBDS<T,Y> _insertListModelToNamedDatabaseFBDS;
  UpdateModelToNamedDatabaseFBDS<T> _updateModelToNamedDatabaseFBDS;
  UpdateListModelToNamedDatabaseFBDS<T,Y> _updateListModelToNamedDatabaseFBDS;
  DeleteModelToNamedDatabaseFBDS<T> _deleteModelToNamedDatabaseFBDS;
  DeleteListModelToNamedDatabaseFBDS<T,Y> _deleteListModelToNamedDatabaseFBDS;

  BaseBackgroundModel.usingMethodSetDataSourceToBodyConstructor(
      this._converterToBaseModelNamedDatabase,
      this._converterToBaseListModelNamedDatabase);

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
  T cloneModel(T model);

  List<T> _cloneListModel(List<T> listModel) {
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
  // start getListNP 1
  @protected
  @nonVirtual
  Future<Response<List<T>, BaseException>> getListModelFromNamedDatabaseNP()
  {
    if(_dataSource == null) {
      return throw LocalException(thisClass,constDeveloper,"DataSource equals null");
    }
    return _baseGetListModelFromNamedDatabaseNP(_dataSource as GetListModelFromNamedDatabaseNPDataSource<X>);
  }
  // end getListNP 1

  // start getListParameterNamed 1
  @protected
  @nonVirtual
  Future<Response<List<T>, BaseException>> getListModelFromNamedDatabaseParameterNamed(
      BaseTypeParameter baseTypeParameter)
  {
    if(_dataSource == null) {
      return throw LocalException(thisClass,constDeveloper,"DataSource equals null");
    }
    return _baseGetListModelFromNamedDatabaseParameterNamed(
        _dataSource as GetListModelFromNamedDatabaseParameterNamedDataSource<X,BaseTypeParameter>,
        baseTypeParameter);
  }
  // end getListParameterNamed 1

  // start getNP 1
  @protected
  @nonVirtual
  Future<Response<T, BaseException>> getModelFromNamedDatabaseNP()
  {
    if(_dataSource == null) {
      return throw LocalException(thisClass,constDeveloper,"DataSource equals null");
    }
    return _baseGetModelFromNamedDatabaseNP(_dataSource as GetModelFromNamedDatabaseNPDataSource<Z>);
  }
  // end getNP 1

  // start getParameterNamed 1
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
  // end getParameterNamed 1

  // start insertTIP 2
  @protected
  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> insertModelToNamedDatabaseTIP(
      T model)
  {
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
  Future<Response<BaseTypeParameter, BaseException>> insertModelToNamedDatabaseTIPUsingListModelForFBDS(
      T model,
      List<T> listModelForFBDS)
  {
    if(_dataSource == null) {
      return throw LocalException(thisClass,constDeveloper,"DataSource equals null");
    }
    return _baseInsertModelToNamedDatabaseTIPUsingListModelForFBDS(
        _dataSource as InsertModelToNamedDatabaseTIPDataSource<Z>,
        model,
        listModelForFBDS);
  }
  // end insertTIP 2

  // start insertNP 1
  @protected
  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> insertModelToNamedDatabaseNP()
  {
    if(_dataSource == null) {
      return throw LocalException(thisClass,constDeveloper,"DataSource equals null");
    }
    return _baseInsertModelToNamedDatabaseNP(_dataSource as InsertModelToNamedDatabaseNPDataSource);
  }
  // end insertNP 1

  // start insertListTIP 2
  @protected
  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> insertListModelToNamedDatabaseTIP(
      List<T> listModel)
  {
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
  Future<Response<BaseTypeParameter, BaseException>> insertListModelToNamedDatabaseTIPUsingListModelForFBDS(
      List<T> listModel,
      List<T> listModelForFBDS)
  {
    if(_dataSource == null) {
      return throw LocalException(thisClass,constDeveloper,"DataSource equals null");
    }
    return _baseInsertListModelToNamedDatabaseTIPUsingListModelForFBDS(
        _dataSource as InsertListModelToNamedDatabaseTIPDataSource<X>,
        listModel,
        listModelForFBDS);
  }
  // end insertListTIP 2

  // start insertListNP 1
  @protected
  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> insertListModelToNamedDatabaseNP()
  {
    if(_dataSource == null) {
      return throw LocalException(thisClass,constDeveloper,"DataSource equals null");
    }
    return _baseInsertListModelToNamedDatabaseNP(_dataSource as InsertListModelToNamedDatabaseNPDataSource);
  }
  // end insertListNP 1

  // start updateTIP 2
  @protected
  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> updateModelToNamedDatabaseTIP(
      T model)
  {
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
  Future<Response<BaseTypeParameter, BaseException>> updateModelToNamedDatabaseTIPUsingListModelForFBDS(
      T model,
      List<T> listModelForFBDS)
  {
    if(_dataSource == null) {
      return throw LocalException(thisClass,constDeveloper,"DataSource equals null");
    }
    return _baseUpdateModelToNamedDatabaseTIPUsingListModelForFBDS(
        _dataSource as UpdateModelToNamedDatabaseTIPDataSource<Z>,
        model,
        listModelForFBDS);
  }
  // end updateTIP 2

  // start updateNP 1
  @protected
  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> updateModelToNamedDatabaseNP()
  {
    if(_dataSource == null) {
      return throw LocalException(thisClass,constDeveloper,"DataSource equals null");
    }
    return _baseUpdateModelToNamedDatabaseNP(_dataSource as UpdateModelToNamedDatabaseNPDataSource);
  }
  // end updateNP 1

  // start updateListTIP 2
  @protected
  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> updateListModelToNamedDatabaseTIP(
      List<T> listModel)
  {
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
  Future<Response<BaseTypeParameter, BaseException>> updateListModelToNamedDatabaseTIPUsingListModelForFBDS(
      List<T> listModel,
      List<T> listModelForFBDS)
  {
    if(_dataSource == null) {
      return throw LocalException(thisClass,constDeveloper,"DataSource equals null");
    }
    return _baseUpdateListModelToNamedDatabaseTIPUsingListModelForFBDS(
        _dataSource as UpdateListModelToNamedDatabaseTIPDataSource<X>,
        listModel,
        listModelForFBDS
    );
  }
  // end updateListTIP 2

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

  // start deleteTIP 2
  @protected
  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> deleteModelToNamedDatabaseTIP(
      T model)
  {
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
  Future<Response<BaseTypeParameter, BaseException>> deleteModelToNamedDatabaseTIPUsingListModelForFBDS(
      T model,
      List<T> listModelForFBDS)
  {
    if(_dataSource == null) {
      return throw LocalException(thisClass,constDeveloper,"DataSource equals null");
    }
    return _baseDeleteModelToNamedDatabaseTIPUsingListModelForFBDS(
        _dataSource as DeleteModelToNamedDatabaseTIPDataSource<Z>,
        model,
        listModelForFBDS
    );
  }
  // end deleteTIP 2

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

  // start deleteListTIP 2
  @protected
  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> deleteListModelToNamedDatabaseTIP(
      List<T> listModel)
  {
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
  Future<Response<BaseTypeParameter, BaseException>> deleteListModelToNamedDatabaseTIPUsingListModelForFBDS(
      List<T> listModel,
      List<T> listModelForFBDS)
  {
    if(_dataSource == null) {
      return throw LocalException(thisClass,constDeveloper,"DataSource equals null");
    }
    return _baseDeleteListModelToNamedDatabaseTIPUsingListModelForFBDS(
        _dataSource as DeleteListModelToNamedDatabaseTIPDataSource<X>,
        listModel,
        listModelForFBDS
    );
  }
  // end deleteListTIP 2

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
  /// End DataSource **/

  /// Start Setters DataSource **/
  @protected
  @nonVirtual
  set setDataSource(Object dataSource) {
    _dataSource = dataSource;
  }
  /// End Setters DataSource **/

  /// Start Setters FBDS **/
  @protected
  @nonVirtual
  set setInsertModelToNamedDatabaseFBDS(
      InsertModelToNamedDatabaseFBDS<T> insertModelToNamedDatabaseFBDS)
  {
    _insertModelToNamedDatabaseFBDS = insertModelToNamedDatabaseFBDS;
  }

  @protected
  @nonVirtual
  set setUpdateModelToNamedDatabaseFBDS(
      UpdateModelToNamedDatabaseFBDS<T> updateModelToNamedDatabaseFBDS)
  {
    _updateModelToNamedDatabaseFBDS = updateModelToNamedDatabaseFBDS;
  }

  @protected
  @nonVirtual
  set setDeleteModelToNamedDatabaseFBDS(
      DeleteModelToNamedDatabaseFBDS<T> deleteModelToNamedDatabaseFBDS)
  {
    _deleteModelToNamedDatabaseFBDS = deleteModelToNamedDatabaseFBDS;
  }

  @protected
  @nonVirtual
  set setInsertListModelToNamedDatabaseFBDS(
      InsertListModelToNamedDatabaseFBDS<T,Y> insertListModelToNamedDatabaseFBDS)
  {
    _insertListModelToNamedDatabaseFBDS = insertListModelToNamedDatabaseFBDS;
  }

  @protected
  @nonVirtual
  set setUpdateListModelToNamedDatabaseFBDS(
      UpdateListModelToNamedDatabaseFBDS<T,Y> updateListModelToNamedDatabaseFBDS)
  {
    _updateListModelToNamedDatabaseFBDS = updateListModelToNamedDatabaseFBDS;
  }

  @protected
  @nonVirtual
  set setDeleteListModelToNamedDatabaseFBDS(
      DeleteListModelToNamedDatabaseFBDS<T,Y> deleteListModelToNamedDatabaseFBDS)
  {
    _deleteListModelToNamedDatabaseFBDS = deleteListModelToNamedDatabaseFBDS;
  }
  /// End Setters FBDS **/

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
      return throw LocalException(thisClass,constDeveloper,"ConverterToBaseModelNamedDatabase equals null");
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
      return throw LocalException(thisClass,constDeveloper,"ConverterToBaseListModelNamedDatabase equals null");
    }
    BaseListModel<T> listModelForClone = BaseListModel<T>(_cloneListModel(listModel));
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
  async {
    return await insertListModelToNamedDatabaseNPDataSource
        .insertListModelToNamedDatabaseNP();
  }

  Future<Response<BaseTypeParameter,BaseException>> _baseUpdateModelToNamedDatabaseTIPUsingListModelForFBDS(
      UpdateModelToNamedDatabaseTIPDataSource<Z> updateModelToNamedDatabaseTIPDataSource,
      T model,
      List<T> listModelForFBDS)
  async {
    if(_converterToBaseModelNamedDatabase == null) {
      return throw LocalException(thisClass,constDeveloper,"ConverterToBaseModelNamedDatabase equals null");
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

  Future<Response<BaseTypeParameter,BaseException>> _baseUpdateListModelToNamedDatabaseTIPUsingListModelForFBDS(
      UpdateListModelToNamedDatabaseTIPDataSource<X> updateListModelToNamedDatabaseTIPDataSource,
      List<T> listModel,
      List<T> listModelForFBDS)
  async {
    if(_converterToBaseListModelNamedDatabase == null) {
      return throw LocalException(thisClass,constDeveloper,"ConverterToBaseListModelNamedDatabase equals null");
    }
    BaseListModel<T> listModelForClone = BaseListModel<T>(_cloneListModel(listModel));
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

  Future<Response<BaseTypeParameter,BaseException>> _baseDeleteModelToNamedDatabaseTIPUsingListModelForFBDS(
      DeleteModelToNamedDatabaseTIPDataSource<Z> deleteModelToNamedDatabaseTIPDataSource,
      T model,
      List<T> listModelForFBDS)
  async {
    if(_converterToBaseModelNamedDatabase == null) {
      return throw LocalException(thisClass,constDeveloper,"ConverterToBaseModelNamedDatabase equals null");
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

  Future<Response<BaseTypeParameter,BaseException>> _baseDeleteListModelToNamedDatabaseTIPUsingListModelForFBDS(
      DeleteListModelToNamedDatabaseTIPDataSource<X> deleteListModelToNamedDatabaseTIPDataSource,
      List<T> listModel,
      List<T> listModelForFBDS)
  async {
    if(_converterToBaseListModelNamedDatabase == null) {
      return throw LocalException(thisClass,constDeveloper,"ConverterToBaseListModelNamedDatabase equals null");
    }
    BaseListModel<T> listModelForClone = BaseListModel<T>(_cloneListModel(listModel));
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
}