
import 'package:library_architecture_mvvm_modify/base_data_source/interface_data_source/delete_model_to_network_database_there_is_parameter_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_data_source/interface_data_source/get_list_model_from_network_database_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_data_source/interface_data_source/get_list_model_from_network_database_there_is_parameter_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_data_source/interface_data_source/get_model_from_network_database_there_is_parameter_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_data_source/interface_data_source/insert_model_to_network_database_there_is_parameter_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_data_source/interface_data_source/update_model_to_network_database_there_is_parameter_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_exception/base_exception.dart';
import 'package:library_architecture_mvvm_modify/base_exception/local_exception.dart';
import 'package:library_architecture_mvvm_modify/base_list_model/base_network_list_model.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_network_model.dart';
import 'package:library_architecture_mvvm_modify/response.dart';
import 'package:library_architecture_mvvm_modify/base_view_model/constants_view_model.dart';


class ReadyNetworkModelFVM
{
 static Future<Response<String,BaseException>> callToMethodGetListModelFromNetworkDatabaseAndUseTheSetters(
      GetListModelFromNetworkDatabaseDataSource getListModelFromNetworkDatabaseDataSource,
      Function(BaseNetworkListModel) function
      ) async
  {
    try {
      var response = await getListModelFromNetworkDatabaseDataSource
          .getListModelFromNetworkDatabaseDataSource();
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
      Function(BaseNetworkListModel) function
      ) async
  {
    try {
      var response = await getListModelFromNetworkDatabaseThereIsParameterDataSource
          .getListModelFromNetworkDatabaseThereIsParameterDataSource(sorted);
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
      Function(BaseNetworkModel) function
      ) async {
    try {
      var response = await getModelFromNetworkDatabaseThereIsParameterDataSource
          .getModelFromNetworkDatabaseThereIsParameterDataSource(weGetTheElementOnIt);
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
      BaseNetworkModel networkModel
      ) async {
    try {
      var response = await insertModelToNetworkDatabaseThereIsParameterDataSource
          .insertModelToNetworkDatabaseThereIsParameterDataSource(
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
      BaseNetworkModel networkModel
      ) async {
    try {
      var response = await updateModelToNetworkDatabaseThereIsParameterDataSource
          .updateModelToNetworkDatabaseThereIsParameterDataSource(
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
      BaseNetworkModel networkModel
      ) async {
    try {
      var response =  await deleteModelToNetworkDatabaseThereIsParameterDataSource
          .deleteModelToNetworkDatabaseThereIsParameterDataSource(
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