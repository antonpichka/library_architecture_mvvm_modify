
import 'package:library_architecture_mvvm_modify/base_exception/base_exception.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_network_model.dart';
import 'package:library_architecture_mvvm_modify/response.dart';

abstract class DeleteModelToNetworkDatabaseThereIsParameterDataSource<T extends BaseNetworkModel> {
  Future<Response<bool,BaseException>> deleteModelToNetworkDatabaseThereIsParameterDataSource(T model);
}