
import 'package:library_architecture_mvvm_modify/base_data_source/delete_model_to_network_database_there_is_parameter_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_data_source/get_list_model_from_network_database_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_data_source/get_list_model_from_network_database_there_is_parameter_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_data_source/get_model_from_network_database_there_is_parameter_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_data_source/insert_model_to_network_database_there_is_parameter_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_data_source/update_model_to_network_database_there_is_parameter_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_exception/base_exception.dart';
import 'package:library_architecture_mvvm_modify/base_exception/local_exception.dart';
import 'package:library_architecture_mvvm_modify/base_list_model/network_list_model.dart';
import 'package:library_architecture_mvvm_modify/base_model/network_model.dart';
import 'package:library_architecture_mvvm_modify/base_response/response.dart';
import 'package:library_architecture_mvvm_modify/base_view_model/view_model_constants.dart';


class NetworkModelViewModel
{
 static Future<Response<String,BaseException>> callToMethodGetListModelFromNetworkDatabaseAndUseTheSetters(
      GetListModelFromNetworkDatabaseDataSource getListModelFromNetworkDatabaseDataSource,
      Function(NetworkListModel) function
      ) async
  {
    try {
      var response = await getListModelFromNetworkDatabaseDataSource
          .getListModelFromNetworkDatabase();
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

  static Future<Response<String, BaseException>> callToMethodGetListModelFromNetworkDatabaseThereIsParameterAndUseTheSetters(
      GetListModelFromNetworkDatabaseThereIsParameterDataSource getListModelFromNetworkDatabaseThereIsParameterDataSource,
      dynamic sorted,
      Function(NetworkListModel) function
      ) async
  {
    try {
      var response = await getListModelFromNetworkDatabaseThereIsParameterDataSource
          .getListModelFromNetworkDatabaseThereIsParameter(sorted);
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

  static Future<Response<String, BaseException>> callToMethodGetModelFromNetworkDatabaseThereIsParameterAndUseTheSetters(
      GetModelFromNetworkDatabaseThereIsParameterDataSource getModelFromNetworkDatabaseThereIsParameterDataSource,
      dynamic weGetTheElementOnIt,
      Function(NetworkModel) function
      ) async {
    try {
      var response = await getModelFromNetworkDatabaseThereIsParameterDataSource
          .getModelFromNetworkDatabaseThereIsParameter(weGetTheElementOnIt);
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


  static Future<Response<String, BaseException>> insertModelToNetworkDatabaseThereIsParameter(
      InsertModelToNetworkDatabaseThereIsParameterDataSource insertModelToNetworkDatabaseThereIsParameterDataSource,
      NetworkModel networkModel
      ) async {
    try {
      var response = await insertModelToNetworkDatabaseThereIsParameterDataSource
          .insertModelToNetworkDatabaseThereIsParameter(
          networkModel
      );
      if (response.isSuccessResponse) {
        if(response.getData) {
          return Response.success(CONST_SUCCESS);
        } else {
          return Response.exception(LocalException(
              CONST_NETWORK_NOT_OPERATION_INSERT_OR_UPDATE_OR_DELETE_FAILURE,
              CONST_NETWORK_NOT_OPERATION_INSERT_OR_UPDATE_OR_DELETE_FAILURE));
        }
      } else {
        return Response.exception(response.getException);
      }
    } on Exception catch (e) {
      return Response.exception(LocalException(e.runtimeType.toString(),e.toString()));
    }
  }


  static Future<Response<String, BaseException>> updateModelToNetworkDatabaseThereIsParameter(
      UpdateModelToNetworkDatabaseThereIsParameterDataSource updateModelToNetworkDatabaseThereIsParameterDataSource,
      NetworkModel networkModel
      ) async {
    try {
      var response = await updateModelToNetworkDatabaseThereIsParameterDataSource
          .updateModelToNetworkDatabaseThereIsParameter(
          networkModel
      );
      if(response.isSuccessResponse) {
        if(response.getData) {
          return Response.success(CONST_SUCCESS);
        } else {
          return Response.exception(LocalException(
              CONST_NETWORK_NOT_OPERATION_INSERT_OR_UPDATE_OR_DELETE_FAILURE,
              CONST_NETWORK_NOT_OPERATION_INSERT_OR_UPDATE_OR_DELETE_FAILURE));
        }
      } else {
        return Response.exception(response.getException);
      }
    } on Exception catch (e) {
      return Response.exception(LocalException(e.runtimeType.toString(),e.toString()));
    }
  }

  static Future<Response<String, BaseException>> deleteModelToNetworkDatabaseThereIsParameter(
      DeleteModelToNetworkDatabaseThereIsParameterDataSource deleteModelToNetworkDatabaseThereIsParameterDataSource,
      NetworkModel networkModel
      ) async {
    try {
      var response =  await deleteModelToNetworkDatabaseThereIsParameterDataSource
          .deleteModelToNetworkDatabaseThereIsParameter(
          networkModel
      );
      if(response.isSuccessResponse) {
        if(response.getData) {
          return Response.success(CONST_SUCCESS);
        } else {
          return Response.exception(LocalException(
              CONST_NETWORK_NOT_OPERATION_INSERT_OR_UPDATE_OR_DELETE_FAILURE,
              CONST_NETWORK_NOT_OPERATION_INSERT_OR_UPDATE_OR_DELETE_FAILURE));
        }
      } else {
        return Response.exception(response.getException);
      }
    } on Exception catch (e) {
      return Response.exception(LocalException(e.runtimeType.toString(),e.toString()));
    }
  }
}