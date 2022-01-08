
import 'package:library_architecture_mvvm_modify/base_exception/local_exception.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_model_local_database.dart';
import 'package:library_architecture_mvvm_modify/response.dart';

abstract class ModelLocalDatabaseForOneEntryDataSource<T extends BaseModelLocalDatabase> {
  Future<Response<bool,LocalException>> insertModelToLocalDatabaseForOneEntryThereIsParameterDataSource(T model);
  Future<Response<T,LocalException>> getModelFromLocalDatabaseForOneEntryDataSource();
  Future<Response<bool,LocalException>> deleteModelToLocalDatabaseForOneEntryDataSource();
}