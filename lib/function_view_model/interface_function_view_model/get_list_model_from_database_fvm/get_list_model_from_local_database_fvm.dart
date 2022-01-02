

import 'package:library_architecture_mvvm_modify/base_exception/local_exception.dart';
import 'package:library_architecture_mvvm_modify/response.dart';

abstract class GetListModelFromLocalDatabaseFVM {
  Future<Response<String,LocalException>> callToMethodGetListModelFromLocalDatabaseAndUseTheSetters();
}