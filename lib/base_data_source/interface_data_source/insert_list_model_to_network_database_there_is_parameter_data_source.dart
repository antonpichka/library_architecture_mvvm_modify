import 'package:library_architecture_mvvm_modify/base_exception/base_exception.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_list_model/base_list_model_network_database.dart';
import 'package:library_architecture_mvvm_modify/response.dart';

abstract class InsertListModelToNetworkDatabaseThereIsParameterDataSource<T extends BaseListModelNetworkDatabase> {
  Future<Response<bool,BaseException>> insertListModelToNetworkDatabaseThereIsParameterDataSource(T model);
}