
import 'package:library_architecture_mvvm_modify/base_exception/local_exception.dart';
import 'package:library_architecture_mvvm_modify/base_model/local_model.dart';
import 'package:library_architecture_mvvm_modify/base_response/response.dart';

abstract class SPModelDataSource<T extends LocalModel> {
  Future<Response<bool,LocalException>> insertModelToSPThereIsParameter(T model);
  Future<Response<T,LocalException>> getModelFromSP();
  Future<Response<bool,LocalException>> deleteModelToSP();
}