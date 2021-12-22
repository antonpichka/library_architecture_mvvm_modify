
import 'package:library_architecture_mvvm_modify/base_exception/local_exception.dart';
import 'package:library_architecture_mvvm_modify/base_model/local_model.dart';
import 'package:library_architecture_mvvm_modify/base_response/response.dart';

abstract class DeleteModelToLocalDatabaseThereIsParameterDataSource<T extends LocalModel> {
  Future<Response<int,LocalException>> deleteModelToLocalDatabaseThereIsParameter(T model);
}