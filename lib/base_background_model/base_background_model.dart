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
import 'package:library_architecture_mvvm_modify/base_model/base_list_model/base_list_model_domain.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_list_model/base_list_model_named_database.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_model_domain.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_model_named_database.dart';
import 'package:library_architecture_mvvm_modify/base_type_parameter/base_type_parameter.dart';
import 'package:library_architecture_mvvm_modify/base_type_parameter/bool_type_parameter.dart';
import 'package:library_architecture_mvvm_modify/response.dart';
import 'package:library_architecture_mvvm_modify/response_generic_bool_and_domain_exception.dart';

typedef ItemCreator<S> = S Function();

abstract class BaseBackgroundModel<T extends BaseModelDomain,Y extends BaseListModelDomain<T>,Z extends BaseModelNamedDatabase<T>,X extends BaseListModelNamedDatabase<Y,Z>>
{
  /* Init DataSource */
  final Object _dataSource;

  /* CTMND (Converter To Model Named Database */
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
  Future<Response<List<T>, BaseException>> getListModelFromNamedDatabase() {
    return _baseGetListModelFromNamedDatabase(
        _dataSource as GetListModelFromNamedDatabaseDataSource<X>);
  }

  @nonVirtual
  Future<Response<List<T>, BaseException>> setAndGetListModelFromNamedDatabaseThereIsParameter(BaseTypeParameter baseTypeParameter) {
    return _baseGetListModelFromNamedDatabaseThereIsParameter(
        _dataSource as GetListModelFromNamedDatabaseThereIsParameterDataSource<X>,
        baseTypeParameter);
  }

  @nonVirtual
  Future<Response<List<T>, BaseException>> getListModelFromNamedDatabaseThereIsParameter() {
    return _baseGetListModelFromNamedDatabaseThereIsParameter(
        _dataSource as GetListModelFromNamedDatabaseThereIsParameterDataSource<X>,
        BoolTypeParameter(true));
  }

  @nonVirtual
  Future<Response<T, BaseException>> setAndGetModelFromNamedDatabaseThereIsParameter(BaseTypeParameter baseTypeParameter) {
    return _baseGetModelFromNamedDatabaseThereIsParameter(
        _dataSource as GetModelFromNamedDatabaseThereIsParameterDataSource<Z>,
        baseTypeParameter
    );
  }

  @nonVirtual
  Future<Response<T, BaseException>> getModelFromNamedDatabaseThereIsParameter() {
    return _baseGetModelFromNamedDatabaseThereIsParameter(
        _dataSource as GetModelFromNamedDatabaseThereIsParameterDataSource<Z>,
        BoolTypeParameter(true)
    );
  }

  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> setAndInsertModelToNamedDatabaseThereIsParameter(T newModelDomain) {
    return _baseInsertModelToNamedDatabaseThereIsParameter(
        _dataSource as InsertModelToNamedDatabaseThereIsParameterDataSource<Z>, 
        newModelDomain,
        List.empty());
  }

  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> insertModelToNamedDatabaseThereIsParameter() {
    return _baseInsertModelToNamedDatabaseThereIsParameter(
        _dataSource as InsertModelToNamedDatabaseThereIsParameterDataSource<Z>,
        BaseModelDomain(""),
        List.empty());
  }

  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> setAndInsertModelToNamedDatabaseThereIsParameterAndSetListForFBDS(T newModelDomain, List<T> newListModeDomainForFBDS) {
    return _baseInsertModelToNamedDatabaseThereIsParameter(
        _dataSource as InsertModelToNamedDatabaseThereIsParameterDataSource<Z>,
        newModelDomain,
        newListModeDomainForFBDS);
  }

  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> setAndInsertListModelToNamedDatabaseThereIsParameter(List<T> newListModelDomain) {
    return _baseInsertListModelToNamedDatabaseThereIsParameter(
        _dataSource as InsertListModelToNamedDatabaseThereIsParameterDataSource<X>,
        newListModelDomain,
        List.empty());
  }

  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> insertListModelToNamedDatabaseThereIsParameter() {
    return _baseInsertListModelToNamedDatabaseThereIsParameter(
        _dataSource as InsertListModelToNamedDatabaseThereIsParameterDataSource<X>,
        List.empty(),
        List.empty());
  }

  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> setAndInsertListModelToNamedDatabaseThereIsParameterAndSetListForFBDS(List<T> newListModelDomain, List<T> newListModeDomainForFBDS) {
    return _baseInsertListModelToNamedDatabaseThereIsParameter(
        _dataSource as InsertListModelToNamedDatabaseThereIsParameterDataSource<X>,
        newListModelDomain,
        newListModeDomainForFBDS);
  }

  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> setAndUpdateModelToNamedDatabaseThereIsParameter(T newModelDomain) {
    return _baseUpdateModelToNamedDatabaseThereIsParameter(
        _dataSource as UpdateModelToNamedDatabaseThereIsParameterDataSource<Z>,
        newModelDomain,
        List.empty()
    );
  }

  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> updateModelToNamedDatabaseThereIsParameter() {
    return _baseUpdateModelToNamedDatabaseThereIsParameter(
        _dataSource as UpdateModelToNamedDatabaseThereIsParameterDataSource<Z>,
        BaseModelDomain(""),
        List.empty()
    );
  }

  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> setAndUpdateModelToNamedDatabaseThereIsParameterAndSetListForFBDS(T newModelDomain,List<T> newListModeDomainForFBDS) {
    return _baseUpdateModelToNamedDatabaseThereIsParameter(
        _dataSource as UpdateModelToNamedDatabaseThereIsParameterDataSource<Z>,
        newModelDomain,
        newListModeDomainForFBDS
    );
  }

  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> setAndUpdateListModelToNamedDatabaseThereIsParameter(List<T> newListModelDomain) {
    return _baseUpdateListModelToNamedDatabaseThereIsParameter(
        _dataSource as UpdateListModelToNamedDatabaseThereIsParameterDataSource<X>,
        newListModelDomain,
        List.empty()
    );
  }

  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> updateListModelToNamedDatabaseThereIsParameter() {
    return _baseUpdateListModelToNamedDatabaseThereIsParameter(
        _dataSource as UpdateListModelToNamedDatabaseThereIsParameterDataSource<X>,
        List.empty(),
        List.empty()
    );
  }

  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> setAndUpdateListModelToNamedDatabaseThereIsParameterAndSetListForFBDS(List<T> newListModelDomain,List<T> newListModeDomainForFBDS) {
    return _baseUpdateListModelToNamedDatabaseThereIsParameter(
        _dataSource as UpdateListModelToNamedDatabaseThereIsParameterDataSource<X>,
        newListModelDomain,
        newListModeDomainForFBDS
    );
  }

  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> setAndDeleteModelToNamedDatabaseThereIsParameter(T newModelDomain) {
    return _baseDeleteModelToNamedDatabaseThereIsParameter(
        _dataSource as DeleteModelToNamedDatabaseThereIsParameterDataSource<Z>, 
        newModelDomain, 
        List.empty()
    );
  }

  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> deleteModelToNamedDatabaseThereIsParameter() {
    return _baseDeleteModelToNamedDatabaseThereIsParameter(
        _dataSource as DeleteModelToNamedDatabaseThereIsParameterDataSource<Z>, 
        BaseModelDomain(""),
        List.empty()
    );
  }

  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> setAndDeleteModelToNamedDatabaseThereIsParameterAndSetListForFBDS(T newModelDomain,List<T> newListModeDomainForFBDS) {
    return _baseDeleteModelToNamedDatabaseThereIsParameter(
        _dataSource as DeleteModelToNamedDatabaseThereIsParameterDataSource<Z>,
        newModelDomain,
        newListModeDomainForFBDS
    );
  }

  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> setAndDeleteListModelToNamedDatabaseThereIsParameter(List<T> newListModelDomain) {
    return _baseDeleteListModelToNamedDatabaseThereIsParameter(
        _dataSource as DeleteListModelToNamedDatabaseThereIsParameterDataSource<X>,
        newListModelDomain,
        List.empty()
    );
  }

  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> deleteListModelToNamedDatabaseThereIsParameter() {
    return _baseDeleteListModelToNamedDatabaseThereIsParameter(
        _dataSource as DeleteListModelToNamedDatabaseThereIsParameterDataSource<X>,
        List.empty(),
        List.empty()
    );
  }

  @nonVirtual
  Future<Response<BaseTypeParameter, BaseException>> setAndDeleteListModelToNamedDatabaseThereIsParameterAndSetListForFBDS(List<T> newListModelDomain, List<T> newListModeDomainForFBDS) {
    return _baseDeleteListModelToNamedDatabaseThereIsParameter(
        _dataSource as DeleteListModelToNamedDatabaseThereIsParameterDataSource<X>,
        newListModelDomain,
        newListModeDomainForFBDS
    );
  }
  
  /// End DataSource **/
  ///
  Future<Response<List<T>,BaseException>> _baseGetListModelFromNamedDatabase(
      GetListModelFromNamedDatabaseDataSource<X> getListModelFromNamedDatabaseDataSource)
  async {
    Response<X,BaseException> response = await getListModelFromNamedDatabaseDataSource
        .getListModelFromNamedDatabaseDataSource();
    if(response.isSuccessResponse) {
      Y baseListModelDomain = response.getData.toBaseListModelDomain();
      return Response.success(baseListModelDomain.getListModelDomain);
    } else {
      return Response.exception(response.getException);
    }
  }

  Future<Response<List<T>,BaseException>> _baseGetListModelFromNamedDatabaseThereIsParameter(
      GetListModelFromNamedDatabaseThereIsParameterDataSource<X> getListModelFromNamedDatabaseThereIsParameterDataSource,
      BaseTypeParameter baseTypeParameter)
  async {
    Response<X,BaseException> response = await getListModelFromNamedDatabaseThereIsParameterDataSource
        .getListModelFromNamedDatabaseThereIsParameterDataSource(baseTypeParameter);
    if(response.isSuccessResponse) {
      Y baseListModelDomain = response.getData.toBaseListModelDomain();
      return Response.success(baseListModelDomain.getListModelDomain);
    } else {
      return Response.exception(response.getException);
    }
  }

  Future<Response<T,BaseException>> _baseGetModelFromNamedDatabaseThereIsParameter(
      GetModelFromNamedDatabaseThereIsParameterDataSource<Z> getModelFromNamedDatabaseThereIsParameterDataSource,
      BaseTypeParameter baseTypeParameter)
  async {
    Response<Z,BaseException> response = await getModelFromNamedDatabaseThereIsParameterDataSource
        .getModelFromNamedDatabaseThereIsParameterDataSource(baseTypeParameter);
    if(response.isSuccessResponse) {
      T modelDomain = response.getData.toBaseModelDomain();
      return Response.success(modelDomain);
    } else {
      return Response.exception(response.getException);
    }
  }

  Future<Response<BaseTypeParameter,BaseException>> _baseInsertModelToNamedDatabaseThereIsParameter(
      InsertModelToNamedDatabaseThereIsParameterDataSource<Z> insertModelToNamedDatabaseThereIsParameterDataSource,
      BaseModelDomain newModelDomain,
      List<BaseModelDomain> newListModeDomainForFBDS)
  async {
    if(_converterToBaseModelNamedDatabase == null) {
      return throw Exception("ConverterToBaseModelNamedDatabase null");
    }
    T modelDomain = cloneModel(newModelDomain);
    if(_insertModelToNamedDatabaseFBDS == null) {
      return await insertModelToNamedDatabaseThereIsParameterDataSource
          .insertModelToNamedDatabaseThereIsParameterDataSource(_converterToBaseModelNamedDatabase.toBaseModelNamedDatabase(modelDomain));
    }
    List<T> listModelDomainForFBDS = _cloneListModel(newListModeDomainForFBDS);
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
      List<BaseModelDomain> newListModeDomain,
      List<BaseModelDomain> newListModeDomainForFBDS)
  async {
    if(_converterToBaseListModelNamedDatabase == null) {
      return throw Exception("ConverterToBaseListModelNamedDatabase null");
    }
    BaseListModelDomain<T> listModelDomain = BaseListModelDomain<T>(_cloneListModel(newListModeDomain));
    if(_insertListModelToNamedDatabaseFBDS == null) {
      return await insertListModelToNamedDatabaseThereIsParameterDataSource
          .insertListModelToNamedDatabaseThereIsParameterDataSource(_converterToBaseListModelNamedDatabase.toBaseListModelNamedDatabase(listModelDomain));
    }
    List<T> listModelDomainForFBDS = _cloneListModel(newListModeDomainForFBDS);
    ResponseGenericBoolAndDomainException response = _insertListModelToNamedDatabaseFBDS
        .insertListModelToNamedDatabaseFBDS(listModelDomain,listModelDomainForFBDS);
    if(response.isSuccessResponse) {
      return await insertListModelToNamedDatabaseThereIsParameterDataSource
          .insertListModelToNamedDatabaseThereIsParameterDataSource(_converterToBaseListModelNamedDatabase.toBaseListModelNamedDatabase(listModelDomain));
    } else {
      return Response.exception(response.getException);
    }
  }

  Future<Response<BaseTypeParameter,BaseException>> _baseUpdateModelToNamedDatabaseThereIsParameter(
      UpdateModelToNamedDatabaseThereIsParameterDataSource<Z> updateModelToNamedDatabaseThereIsParameterDataSource,
      BaseModelDomain newModelDomain,
      List<BaseModelDomain> newListModeDomainForFBDS)
  async {
    if(_converterToBaseModelNamedDatabase == null) {
      return throw Exception("ConverterToBaseModelNamedDatabase null");
    }
    T modelDomain = cloneModel(newModelDomain);
    if(_updateModelToNamedDatabaseFBDS == null) {
      return await updateModelToNamedDatabaseThereIsParameterDataSource
          .updateModelToNamedDatabaseThereIsParameterDataSource(_converterToBaseModelNamedDatabase.toBaseModelNamedDatabase(modelDomain));
    }
    List<T> listModelDomainForFBDS = _cloneListModel(newListModeDomainForFBDS);
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
      List<BaseModelDomain> newListModelDomain,
      List<BaseModelDomain> newListModeDomainForFBDS)
  async {
    if(_converterToBaseListModelNamedDatabase == null) {
      return throw Exception("ConverterToBaseListModelNamedDatabase null");
    }
    BaseListModelDomain<T> listModelDomain = BaseListModelDomain<T>(_cloneListModel(newListModelDomain));
    if(_updateListModelToNamedDatabaseFBDS == null) {
      return await updateListModelToNamedDatabaseThereIsParameterDataSource
          .updateListModelToNamedDatabaseThereIsParameterDataSource(_converterToBaseListModelNamedDatabase.toBaseListModelNamedDatabase(listModelDomain));
    }
    List<T> listModelDomainForFBDS = _cloneListModel(newListModeDomainForFBDS);
    ResponseGenericBoolAndDomainException response = _updateListModelToNamedDatabaseFBDS
        .updateListModelToNamedDatabaseFBDS(listModelDomain,listModelDomainForFBDS);
    if(response.isSuccessResponse) {
      return await updateListModelToNamedDatabaseThereIsParameterDataSource
          .updateListModelToNamedDatabaseThereIsParameterDataSource(_converterToBaseListModelNamedDatabase.toBaseListModelNamedDatabase(listModelDomain));
    } else {
      return Response.exception(response.getException);
    }
  }

  Future<Response<BaseTypeParameter,BaseException>> _baseDeleteModelToNamedDatabaseThereIsParameter(
      DeleteModelToNamedDatabaseThereIsParameterDataSource<Z> deleteModelToNamedDatabaseThereIsParameterDataSource,
      BaseModelDomain newModelDomain,
      List<BaseModelDomain> newListModeDomainForFBDS)
  async {
    if(_converterToBaseModelNamedDatabase == null) {
      return throw Exception("ConverterToBaseModelNamedDatabase null");
    }
    T modelDomain = cloneModel(newModelDomain);
    if(_deleteModelToNamedDatabaseFBDS == null) {
      return await deleteModelToNamedDatabaseThereIsParameterDataSource
          .deleteModelToNamedDatabaseThereIsParameterDataSource(_converterToBaseModelNamedDatabase.toBaseModelNamedDatabase(modelDomain));
    }
    List<T> listModelDomainForFBDS = _cloneListModel(newListModeDomainForFBDS);
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
      List<BaseModelDomain> newListModelDomain,
      List<BaseModelDomain> newListModeDomainForFBDS)
  async {
    if(_converterToBaseListModelNamedDatabase == null) {
      return throw Exception("ConverterToBaseListModelNamedDatabase null");
    }
    BaseListModelDomain<T> listModelDomain = BaseListModelDomain<T>(_cloneListModel(newListModelDomain));
    if(_deleteListModelToNamedDatabaseFBDS == null) {
      return await deleteListModelToNamedDatabaseThereIsParameterDataSource
          .deleteListModelToNamedDatabaseThereIsParameterDataSource(_converterToBaseListModelNamedDatabase.toBaseListModelNamedDatabase(listModelDomain));
    }
    List<T> listModelDomainForFBDS = _cloneListModel(newListModeDomainForFBDS);
    ResponseGenericBoolAndDomainException response = _deleteListModelToNamedDatabaseFBDS
        .deleteListModelToNamedDatabaseFBDS(listModelDomain,listModelDomainForFBDS);
    if(response.isSuccessResponse) {
      return await deleteListModelToNamedDatabaseThereIsParameterDataSource
          .deleteListModelToNamedDatabaseThereIsParameterDataSource(_converterToBaseListModelNamedDatabase.toBaseListModelNamedDatabase(listModelDomain));
    } else {
      return Response.exception(response.getException);
    }
  }
}