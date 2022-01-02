
import 'package:library_architecture_mvvm_modify/base_data_source/interface_data_source/sp_model_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_exception/base_exception.dart';
import 'package:library_architecture_mvvm_modify/base_exception/local_exception.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_local_model.dart';
import 'package:library_architecture_mvvm_modify/response.dart';
import 'package:library_architecture_mvvm_modify/base_view_model/constants_view_model.dart';

class ReadySPModelFVM {

 static Future<Response<String,LocalException>> callToMethodGetModelFromSPAndUseTheSetters(
      SPModelDataSource spDataSource,
      Function(BaseLocalModel localModel) function) async
 {
    try {
      Response<BaseLocalModel, LocalException> response = await spDataSource
          .getModelFromSPDataSource();
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
      BaseLocalModel localModel
      ) async {
    try {
      Response<bool,LocalException> response = await spDataSource.insertModelToSPThereIsParameterDataSource(
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
      Response<bool,LocalException> response = await spDataSource.deleteModelToSPDataSource();
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