

import 'package:library_architecture_mvvm_modify/base_exception/base_exception.dart';
import 'package:library_architecture_mvvm_modify/base_list_model/network_list_model.dart';
import 'package:library_architecture_mvvm_modify/base_response/response.dart';

abstract class GetListModelFromNetworkDatabaseThereIsParameterDataSource<
    Y extends NetworkListModel,
    Z>
{
  Future<Response<Y,BaseException>> getListModelFromNetworkDatabaseThereIsParameter(Z parameter);
}