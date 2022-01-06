
import 'package:library_architecture_mvvm_modify/base_exception/base_exception.dart';
import 'package:library_architecture_mvvm_modify/base_exception/local_exception.dart';
import 'package:library_architecture_mvvm_modify/response.dart';

abstract class ModelSPFVM {
  Future<Response<String,LocalException>> callToMethodGetModelFromSPAndUseTheSettersFVM();
  Future<Response<String,BaseException>> insertModelToSPThereIsParameterFVM();
  Future<Response<String,BaseException>> deleteModelToSPFVM();
}