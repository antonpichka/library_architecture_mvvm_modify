

import 'package:library_architecture_mvvm_modify/base_exception/base_exception.dart';
import 'package:library_architecture_mvvm_modify/base_list_model/network_list_model.dart';
import 'package:library_architecture_mvvm_modify/base_response/response.dart';

abstract class GetListModelFromNetworkDatabaseDataSource<
      Y extends NetworkListModel>
{
  Future<Response<Y,BaseException>> getListModelFromNetworkDatabase();
}