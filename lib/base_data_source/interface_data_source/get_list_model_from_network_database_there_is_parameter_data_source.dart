

import 'package:library_architecture_mvvm_modify/base_exception/base_exception.dart';
import 'package:library_architecture_mvvm_modify/base_list_model/base_list_model_network_database.dart';
import 'package:library_architecture_mvvm_modify/base_type_parameter/base_type_parameter.dart';
import 'package:library_architecture_mvvm_modify/response.dart';

abstract class GetListModelFromNetworkDatabaseThereIsParameterDataSource<
    Y extends BaseListModelNetworkDatabase>
{
  Future<Response<Y,BaseException>> getListModelFromNetworkDatabaseThereIsParameterDataSource(BaseTypeParameter parameter);
}