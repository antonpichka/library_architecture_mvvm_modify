
import 'package:library_architecture_mvvm_modify/base_exception/local_exception.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_local_model.dart';
import 'package:library_architecture_mvvm_modify/response.dart';

abstract class DeleteModelToLocalDatabaseThereIsParameterDataSource<T extends BaseLocalModel> {
  Future<Response<int,LocalException>> deleteModelToLocalDatabaseThereIsParameterDataSource(T model);
}