
import 'package:library_architecture_mvvm_modify/base_exception/base_exception.dart';
import 'package:library_architecture_mvvm_modify/base_exception/local_exception.dart';
import 'package:library_architecture_mvvm_modify/response.dart';

abstract class SPModelFVM {
  Future<Response<String,LocalException>> callToMethodGetModelFromSPAndUseTheSetters();
  Future<Response<String,BaseException>> insertModelToSPThereIsParameter();
  Future<Response<String,BaseException>> deleteModelToSP();
}