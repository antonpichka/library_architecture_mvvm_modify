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
import 'package:library_architecture_mvvm_modify/base_model/base_list_model/base_list_model_named_database.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_model_named_database.dart';
import 'package:library_architecture_mvvm_modify/base_type_parameter/base_type_parameter.dart';
import 'package:library_architecture_mvvm_modify/response.dart';

class BaseRepository<T extends BaseModelNamedDatabase,Y extends BaseListModelNamedDatabase<T>>
    implements
        InsertModelToNamedDatabaseThereIsParameterDataSource<T>,
        UpdateModelToNamedDatabaseThereIsParameterDataSource<T>,
        DeleteModelToNamedDatabaseThereIsParameterDataSource<T>,
        InsertListModelToNamedDatabaseThereIsParameterDataSource<Y>,
        UpdateListModelToNamedDatabaseThereIsParameterDataSource<Y>,
        DeleteListModelToNamedDatabaseThereIsParameterDataSource<Y>,
        GetListModelFromNamedDatabaseDataSource<Y>,
        GetListModelFromNamedDatabaseThereIsParameterDataSource<Y>,
        GetModelFromNamedDatabaseThereIsParameterDataSource<T>
{
  final InsertModelToNamedDatabaseThereIsParameterDataSource<T> _insertModelToNamedDatabaseThereIsParameterDataSource;
  final UpdateModelToNamedDatabaseThereIsParameterDataSource<T> _updateModelToNamedDatabaseThereIsParameterDataSource;
  final DeleteModelToNamedDatabaseThereIsParameterDataSource<T> _deleteModelToNamedDatabaseThereIsParameterDataSource;
  final InsertListModelToNamedDatabaseThereIsParameterDataSource<Y> _insertListModelToNamedDatabaseThereIsParameterDataSource;
  final UpdateListModelToNamedDatabaseThereIsParameterDataSource<Y> _updateListModelToNamedDatabaseThereIsParameterDataSource;
  final DeleteListModelToNamedDatabaseThereIsParameterDataSource<Y> _deleteListModelToNamedDatabaseThereIsParameterDataSource;
  final GetListModelFromNamedDatabaseDataSource<Y> _getListModelFromNamedDatabaseDataSource;
  final GetListModelFromNamedDatabaseThereIsParameterDataSource<Y> _getListModelFromNamedDatabaseThereIsParameterDataSource;
  final GetModelFromNamedDatabaseThereIsParameterDataSource<T> _getModelFromNamedDatabaseThereIsParameterDataSource;

  BaseRepository(
      this._insertModelToNamedDatabaseThereIsParameterDataSource,
      this._updateModelToNamedDatabaseThereIsParameterDataSource,
      this._deleteModelToNamedDatabaseThereIsParameterDataSource,
      this._insertListModelToNamedDatabaseThereIsParameterDataSource,
      this._updateListModelToNamedDatabaseThereIsParameterDataSource,
      this._deleteListModelToNamedDatabaseThereIsParameterDataSource,
      this._getListModelFromNamedDatabaseDataSource,
      this._getListModelFromNamedDatabaseThereIsParameterDataSource,
      this._getModelFromNamedDatabaseThereIsParameterDataSource);

  @override
  Future<Response<Y, BaseException>> getListModelFromNamedDatabaseDataSource() {
    return _getListModelFromNamedDatabaseDataSource.getListModelFromNamedDatabaseDataSource();
  }

  @override
  Future<Response<Y, BaseException>> getListModelFromNamedDatabaseThereIsParameterDataSource(BaseTypeParameter parameter) {
    return _getListModelFromNamedDatabaseThereIsParameterDataSource.getListModelFromNamedDatabaseThereIsParameterDataSource(parameter);
  }

  @override
  Future<Response<T, BaseException>> getModelFromNamedDatabaseThereIsParameterDataSource(BaseTypeParameter parameter) {
    return _getModelFromNamedDatabaseThereIsParameterDataSource.getModelFromNamedDatabaseThereIsParameterDataSource(parameter);
  }

  @override
  Future<Response<BaseTypeParameter, BaseException>> insertModelToNamedDatabaseThereIsParameterDataSource(T model) {
    return _insertModelToNamedDatabaseThereIsParameterDataSource.insertModelToNamedDatabaseThereIsParameterDataSource(model);
  }

  @override
  Future<Response<BaseTypeParameter, BaseException>> insertListModelToNamedDatabaseThereIsParameterDataSource(Y model) {
    return _insertListModelToNamedDatabaseThereIsParameterDataSource.insertListModelToNamedDatabaseThereIsParameterDataSource(model);
  }

  @override
  Future<Response<BaseTypeParameter, BaseException>> updateModelToNamedDatabaseThereIsParameterDataSource(T model) {
    return _updateModelToNamedDatabaseThereIsParameterDataSource.updateModelToNamedDatabaseThereIsParameterDataSource(model);
  }

  @override
  Future<Response<BaseTypeParameter, BaseException>> updateListModelToNamedDatabaseThereIsParameterDataSource(Y model) {
    return _updateListModelToNamedDatabaseThereIsParameterDataSource.updateListModelToNamedDatabaseThereIsParameterDataSource(model);
  }

  @override
  Future<Response<BaseTypeParameter, BaseException>> deleteModelToNamedDatabaseThereIsParameterDataSource(T model) {
    return _deleteModelToNamedDatabaseThereIsParameterDataSource.deleteModelToNamedDatabaseThereIsParameterDataSource(model);
  }

  @override
  Future<Response<BaseTypeParameter, BaseException>> deleteListModelToNamedDatabaseThereIsParameterDataSource(Y model) {
    return _deleteListModelToNamedDatabaseThereIsParameterDataSource.deleteListModelToNamedDatabaseThereIsParameterDataSource(model);
  }

}