
import 'package:library_architecture_mvvm_modify/base_exception/base_exception.dart';
import 'package:library_architecture_mvvm_modify/response.dart';

abstract class ModelLocalDatabaseForOneEntryFVM {
  Future<Response<bool,BaseException>>  callToMethodGetModelFromLocalDatabaseForOneEntryAndUseTheSettersFVM();
  Future<Response<bool,BaseException>>  insertModelToLocalDatabaseForOneEntryThereIsParameterFVM();
  Future<Response<bool,BaseException>>  deleteModelToLocalDatabaseForOneEntryFVM();
}