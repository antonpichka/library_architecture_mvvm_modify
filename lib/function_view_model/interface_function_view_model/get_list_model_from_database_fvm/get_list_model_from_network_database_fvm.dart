
import 'package:library_architecture_mvvm_modify/base_exception/network_exception.dart';
import 'package:library_architecture_mvvm_modify/response.dart';

abstract class GetListModelFromNetworkDatabaseFVM {
  Future<Response<String,NetworkException>> callToMethodGetListModelFromNetworkDatabaseAndUseTheSettersFVM();
}