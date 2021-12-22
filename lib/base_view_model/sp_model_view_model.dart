
import 'package:library_architecture_mvvm_modify/base_data_source/sp_model_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_exception/base_exception.dart';
import 'package:library_architecture_mvvm_modify/base_exception/local_exception.dart';
import 'package:library_architecture_mvvm_modify/base_model/local_model.dart';
import 'package:library_architecture_mvvm_modify/base_response/response.dart';
import 'package:library_architecture_mvvm_modify/base_view_model/view_model_constants.dart';

class SPModelViewModel {

 static Future<Response<String,LocalException>> callToMethodGetModelFromSPAndUseTheSetters(
      SPModelDataSource spDataSource,
      Function(LocalModel localModel) function) async {
    try {
      Response<LocalModel, LocalException> response = await spDataSource
          .getModelFromSP();
      if (response.isSuccessResponse) {
        function(response.getData);
        return Response.success(CONST_SUCCESS);
      } else {
        return Response.exception(response.getException);
      }
    } on Exception catch (e) {
      return Response.exception(LocalException(e.runtimeType.toString(),e.toString()));
    }
  }

 static Future<Response<String,BaseException>> insertModelToSPThereIsParameter(
      SPModelDataSource spDataSource,
      LocalModel localModel
      ) async {
    try {
      Response<bool,LocalException> response = await spDataSource.insertModelToSPThereIsParameter(
        localModel
      );
      if(response.isSuccessResponse) {
        return Response.success(CONST_SUCCESS);
      } else {
        return Response.exception(response.getException);
      }
    } on Exception catch (e) {
      return Response.exception(LocalException(e.runtimeType.toString(),e.toString()));
    }
  }

 static Future<Response<String, BaseException>> deleteModelToSP(
      SPModelDataSource spDataSource,
      ) async {
    try {
      Response<bool,LocalException> response = await spDataSource.deleteModelToSP();
      if(response.isSuccessResponse) {
        return Response.success(CONST_SUCCESS);
      } else {
        return Response.exception(response.getException);
      }
    } on Exception catch (e) {
      return Response.exception(LocalException(e.runtimeType.toString(),e.toString()));
    }
  }

}