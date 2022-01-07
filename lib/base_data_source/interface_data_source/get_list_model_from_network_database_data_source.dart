

import 'package:library_architecture_mvvm_modify/base_exception/base_exception.dart';
import 'package:library_architecture_mvvm_modify/base_list_model/base_list_network_model.dart';
import 'package:library_architecture_mvvm_modify/response.dart';

abstract class GetListModelFromNetworkDatabaseDataSource<
      Y extends BaseListNetworkModel>
{
  Future<Response<Y,BaseException>> getListModelFromNetworkDatabaseDataSource();
}