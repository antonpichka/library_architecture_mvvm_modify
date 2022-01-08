
import 'package:library_architecture_mvvm_modify/base_exception/base_exception.dart';
import 'package:library_architecture_mvvm_modify/base_exception/local_exception.dart';
import 'package:library_architecture_mvvm_modify/response.dart';

abstract class ModelLocalDatabaseForOneEntryFVM {
  Future<Response<String,LocalException>> callToMethodGetModelFromLocalDatabaseForOneEntryAndUseTheSettersFVM();
  Future<Response<String,BaseException>> insertModelToLocalDatabaseForOneEntryThereIsParameterFVM();
  Future<Response<String,BaseException>> deleteModelToLocalDatabaseForOneEntryFVM();
}