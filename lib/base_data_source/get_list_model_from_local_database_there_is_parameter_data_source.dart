
import 'package:library_architecture_mvvm_modify/base_exception/local_exception.dart';
import 'package:library_architecture_mvvm_modify/base_list_model/local_list_model.dart';
import 'package:library_architecture_mvvm_modify/base_response/response.dart';

abstract class GetListModelFromLocalDatabaseThereIsParameterDataSource<
              Y extends LocalListModel,
              Z>
{
  Future<Response<Y,LocalException>> getListModelFromLocalDatabaseThereIsParameter(Z parameter);
}