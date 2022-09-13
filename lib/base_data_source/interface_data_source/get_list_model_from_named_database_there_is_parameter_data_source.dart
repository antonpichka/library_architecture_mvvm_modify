import 'package:library_architecture_mvvm_modify/base_exception/base_exception.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_list_model/base_list_model_named_database.dart';
import 'package:library_architecture_mvvm_modify/base_type_parameter/base_type_parameter.dart';
import 'package:library_architecture_mvvm_modify/response.dart';

abstract class GetListModelFromNamedDatabaseThereIsParameterDataSource<Y extends BaseListModelNamedDatabase,U extends BaseTypeParameter> {
  Future<Response<Y,BaseException>> getListModelFromNamedDatabaseThereIsParameterDataSource(U parameter);
}