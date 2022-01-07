
import 'package:library_architecture_mvvm_modify/base_exception/base_exception.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_network_model.dart';
import 'package:library_architecture_mvvm_modify/base_type_parameter/base_type_parameter.dart';
import 'package:library_architecture_mvvm_modify/response.dart';

abstract class GetModelFromNetworkDatabaseThereIsParameterDataSource<
      T extends BaseNetworkModel>
{
      Future<Response<T,BaseException>> getModelFromNetworkDatabaseThereIsParameterDataSource(BaseTypeParameter parameter);
}