import 'package:library_architecture_mvvm_modify/base_exception/base_exception.dart';
import 'package:library_architecture_mvvm_modify/response.dart';

abstract class GetListModelFromNamedDatabaseFVM {
  Future<Response<bool,BaseException>> callToMethodGetListModelFromNamedDatabaseAndUseTheSettersFVM();
}