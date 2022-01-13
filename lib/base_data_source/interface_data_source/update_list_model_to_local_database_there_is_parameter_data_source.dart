import 'package:library_architecture_mvvm_modify/base_exception/local_exception.dart';
import 'package:library_architecture_mvvm_modify/base_list_model/base_list_model_local_database.dart';
import 'package:library_architecture_mvvm_modify/response.dart';

abstract class UpdateListModelToLocalDatabaseThereIsParameterDataSource<T extends BaseListModelLocalDatabase> {
  Future<Response<int,LocalException>> updateListModelToLocalDatabaseThereIsParameterDataSource(T model);
}