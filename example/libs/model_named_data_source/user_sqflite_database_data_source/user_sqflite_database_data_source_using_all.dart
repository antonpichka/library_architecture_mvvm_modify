import 'package:library_architecture_mvvm_modify/base_data_source/interface_data_source/data_source.dart';
import 'package:library_architecture_mvvm_modify/base_exception/base_exception.dart';
import 'package:library_architecture_mvvm_modify/base_type_parameter/base_type_parameter.dart';
import 'package:library_architecture_mvvm_modify/response.dart';
import '../../model/user/list_user_sqflite_database.dart';
import '../../model/user/user_sqflite_database.dart';

class UserSqfliteDatabaseDataSourceUsingAll implements DataSource<UserSqfliteDatabase,ListUserSqfliteDatabase>{
  static final UserSqfliteDatabaseDataSourceUsingAll db = UserSqfliteDatabaseDataSourceUsingAll._();

  UserSqfliteDatabaseDataSourceUsingAll._();

  @override
  Future<Response<BaseTypeParameter, BaseException>> deleteListModelToNamedDatabaseThereIsParameterDataSource(ListUserSqfliteDatabase model) {
    // TODO: implement deleteListModelToNamedDatabaseThereIsParameterDataSource
    throw UnimplementedError();
  }

  @override
  Future<Response<BaseTypeParameter, BaseException>> deleteModelToNamedDatabaseThereIsParameterDataSource(UserSqfliteDatabase model) {
    // TODO: implement deleteModelToNamedDatabaseThereIsParameterDataSource
    throw UnimplementedError();
  }

  @override
  Future<Response<ListUserSqfliteDatabase, BaseException>> getListModelFromNamedDatabaseDataSource() {
    // TODO: implement getListModelFromNamedDatabaseDataSource
    throw UnimplementedError();
  }

  @override
  Future<Response<ListUserSqfliteDatabase, BaseException>> getListModelFromNamedDatabaseThereIsParameterDataSource(BaseTypeParameter parameter) {
    // TODO: implement getListModelFromNamedDatabaseThereIsParameterDataSource
    throw UnimplementedError();
  }

  @override
  Future<Response<UserSqfliteDatabase, BaseException>> getModelFromNamedDatabaseThereIsParameterDataSource(BaseTypeParameter parameter) {
    // TODO: implement getModelFromNamedDatabaseThereIsParameterDataSource
    throw UnimplementedError();
  }

  @override
  Future<Response<BaseTypeParameter, BaseException>> insertListModelToNamedDatabaseThereIsParameterDataSource(ListUserSqfliteDatabase model) {
    // TODO: implement insertListModelToNamedDatabaseThereIsParameterDataSource
    throw UnimplementedError();
  }

  @override
  Future<Response<BaseTypeParameter, BaseException>> insertModelToNamedDatabaseThereIsParameterDataSource(UserSqfliteDatabase model) {
    // TODO: implement insertModelToNamedDatabaseThereIsParameterDataSource
    throw UnimplementedError();
  }

  @override
  Future<Response<BaseTypeParameter, BaseException>> updateListModelToNamedDatabaseThereIsParameterDataSource(ListUserSqfliteDatabase model) {
    // TODO: implement updateListModelToNamedDatabaseThereIsParameterDataSource
    throw UnimplementedError();
  }

  @override
  Future<Response<BaseTypeParameter, BaseException>> updateModelToNamedDatabaseThereIsParameterDataSource(UserSqfliteDatabase model) {
    // TODO: implement updateModelToNamedDatabaseThereIsParameterDataSource
    throw UnimplementedError();
  }

}