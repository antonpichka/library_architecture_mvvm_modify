
import 'package:library_architecture_mvvm_modify/base_exception/base_exception.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_model_network_database.dart';
import 'package:library_architecture_mvvm_modify/response.dart';

abstract class InsertModelToNetworkDatabaseThereIsParameterDataSource<T extends BaseModelNetworkDatabase> {
  Future<Response<bool,BaseException>> insertModelToNetworkDatabaseThereIsParameterDataSource(T model);
}