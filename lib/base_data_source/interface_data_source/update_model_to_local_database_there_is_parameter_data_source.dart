
import 'package:library_architecture_mvvm_modify/base_exception/local_exception.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_model_local_database.dart';
import 'package:library_architecture_mvvm_modify/response.dart';

abstract class UpdateModelToLocalDatabaseThereIsParameterDataSource<T extends BaseModelLocalDatabase> {
  Future<Response<int,LocalException>> updateModelToLocalDatabaseThereIsParameterDataSource(T model);
}