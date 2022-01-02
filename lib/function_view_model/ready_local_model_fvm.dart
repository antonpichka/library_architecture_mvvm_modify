
import 'package:library_architecture_mvvm_modify/base_data_source/interface_data_source/delete_model_to_local_database_there_is_parameter_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_data_source/interface_data_source/get_list_model_from_local_database_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_data_source/interface_data_source/get_list_model_from_local_database_there_is_parameter_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_data_source/interface_data_source/get_model_from_local_database_there_is_parameter_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_data_source/interface_data_source/insert_model_to_local_database_there_is_parameter_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_data_source/interface_data_source/update_model_to_local_database_there_is_parameter_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_exception/local_exception.dart';
import 'package:library_architecture_mvvm_modify/base_list_model/base_local_list_model.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_local_model.dart';
import 'package:library_architecture_mvvm_modify/response.dart';
import 'package:library_architecture_mvvm_modify/base_view_model/constants_view_model.dart';

class ReadyLocalModelFVM
{
  static Future<Response<String, LocalException>> callToMethodGetListModelFromLocalDatabaseAndUseTheSetters(
      GetListModelFromLocalDatabaseDataSource getListModelFromLocalDatabaseDataSource,
      Function(BaseLocalListModel) function
      ) async
  {
    try {
      var response = await getListModelFromLocalDatabaseDataSource.getListModelFromLocalDatabaseDataSource();
      if(response.isSuccessResponse) {
        function(response.getData);
        return Response.success(CONST_SUCCESS);
      } else {
        return Response.exception(response.getException);
      }
    } on Exception catch (e) {
      return Response.exception(LocalException(e.runtimeType.toString(),e.toString()));
    }
  }

  static Future<Response<String, LocalException>> callToMethodGetListModelFromLocalDatabaseThereIsParameterAndUseTheSetters(
      GetListModelFromLocalDatabaseThereIsParameterDataSource getListModelFromLocalDatabaseThereIsParameterDataSource,
      dynamic sorted,
      Function(BaseLocalListModel) function
      ) async
  {
    try {
      var response = await getListModelFromLocalDatabaseThereIsParameterDataSource.getListModelFromLocalDatabaseThereIsParameterDataSource(sorted);
      if(response.isSuccessResponse) {
        function(response.getData);
        return Response.success(CONST_SUCCESS);
      } else {
        return Response.exception(response.getException);
      }
    } on Exception catch (e) {
      return Response.exception(LocalException(e.runtimeType.toString(),e.toString()));
    }
  }

  static Future<Response<String, LocalException>> callToMethodGetModelFromLocalDatabaseThereIsParameterAndUseTheSetters(
      GetModelFromLocalDatabaseThereIsParameterDataSource getModelFromLocalDatabaseThereIsParameterDataSource,
      dynamic weGetTheElementOnIt,
      Function(BaseLocalModel) function
      ) async {
    try {
      var response = await getModelFromLocalDatabaseThereIsParameterDataSource
          .getModelFromLocalDatabaseThereIsParameterDataSource(weGetTheElementOnIt);
      if(response.isSuccessResponse) {
        function(response.getData);
        return Response.success(CONST_SUCCESS);
      } else {
        return Response.exception(response.getException);
      }
    } on Exception catch (e) {
      return Response.exception(LocalException(e.runtimeType.toString(),e.toString()));
    }
  }


  static Future<Response<String, LocalException>> insertModelToLocalDatabaseThereIsParameter(
      InsertModelToLocalDatabaseThereIsParameterDataSource insertModelToLocalDatabaseThereIsParameterDataSource,
      BaseLocalModel localModel
      ) async {
    try {
      var response = await insertModelToLocalDatabaseThereIsParameterDataSource.insertModelToLocalDatabaseThereIsParameterDataSource(
          localModel
      );

      if (response.isSuccessResponse) {
        int result = response.getData;
        if(result > 0) {
          return Response.success(CONST_SUCCESS);
        } else {
          return Response.exception(LocalException(
              CONST_LOCAL_NOT_OPERATION_INSERT_OR_UPDATE_OR_DELETE_OR_NOTIFICATION_FAILURE,
              CONST_LOCAL_NOT_OPERATION_INSERT_OR_UPDATE_OR_DELETE_OR_NOTIFICATION_FAILURE)
          );
        }
      } else {
        return Response.exception(response.getException);
      }

    } on Exception catch (e) {
      return Response.exception(LocalException(e.runtimeType.toString(),e.toString()));
    }
  }


 static Future<Response<String, LocalException>> updateModelToLocalDatabaseThereIsParameter(
      UpdateModelToLocalDatabaseThereIsParameterDataSource updateModelToLocalDatabaseThereIsParameterDataSource,
      BaseLocalModel localModel
      ) async {
    try {
      var response = await updateModelToLocalDatabaseThereIsParameterDataSource
          .updateModelToLocalDatabaseThereIsParameterDataSource(
         localModel
      );
      if(response.isSuccessResponse) {
        int result = response.getData;
        if(result > 0) {
          return Response.success(CONST_SUCCESS);
        } else {
          return Response.exception(LocalException(
              CONST_LOCAL_NOT_OPERATION_INSERT_OR_UPDATE_OR_DELETE_OR_NOTIFICATION_FAILURE,
              CONST_LOCAL_NOT_OPERATION_INSERT_OR_UPDATE_OR_DELETE_OR_NOTIFICATION_FAILURE));
        }
      } else {
        return Response.exception(response.getException);
      }
    } on Exception catch (e) {
      return Response.exception(LocalException(e.runtimeType.toString(),e.toString()));
    }
  }

 static Future<Response<String, LocalException>> deleteModelToLocalDatabaseThereIsParameter(
      DeleteModelToLocalDatabaseThereIsParameterDataSource deleteModelToLocalDatabaseThereIsParameterDataSource,
      BaseLocalModel localModel
      ) async {
    try {
      var response =  await deleteModelToLocalDatabaseThereIsParameterDataSource
          .deleteModelToLocalDatabaseThereIsParameterDataSource(
          localModel
      );
      if(response.isSuccessResponse) {
        int result = response.getData;
        if(result > 0) {
          return Response.success(CONST_SUCCESS);
        } else {
          return Response.exception(LocalException(
              CONST_LOCAL_NOT_OPERATION_INSERT_OR_UPDATE_OR_DELETE_OR_NOTIFICATION_FAILURE,
              CONST_LOCAL_NOT_OPERATION_INSERT_OR_UPDATE_OR_DELETE_OR_NOTIFICATION_FAILURE));
        }
      } else {
        return Response.exception(response.getException);
      }
    } on Exception catch (e) {
      return Response.exception(LocalException(e.runtimeType.toString(),e.toString()));
    }
  }
}