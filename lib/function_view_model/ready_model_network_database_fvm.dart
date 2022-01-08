
import 'package:library_architecture_mvvm_modify/base_data_source/interface_data_source/delete_model_to_network_database_there_is_parameter_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_data_source/interface_data_source/get_list_model_from_network_database_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_data_source/interface_data_source/get_list_model_from_network_database_there_is_parameter_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_data_source/interface_data_source/get_model_from_network_database_there_is_parameter_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_data_source/interface_data_source/insert_model_to_network_database_there_is_parameter_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_data_source/interface_data_source/update_model_to_network_database_there_is_parameter_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_exception/base_exception.dart';
import 'package:library_architecture_mvvm_modify/base_exception/local_exception.dart';
import 'package:library_architecture_mvvm_modify/base_list_model/base_list_model_network_database.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_model_network_database.dart';
import 'package:library_architecture_mvvm_modify/base_view_model/base_view_model.dart';
import 'package:library_architecture_mvvm_modify/base_view_model/constants_view_model.dart';
import 'package:library_architecture_mvvm_modify/response.dart';

/* USING TO VIEW_MODEL CLASSES */
class ReadyModelNetworkDatabaseFVM
{
 static Future<Response<String,BaseException>> callToMethodGetListModelFromNetworkDatabaseAndUseTheSettersFVM(
      GetListModelFromNetworkDatabaseDataSource getListModelFromNetworkDatabaseDataSource,
      Function(BaseListModelNetworkDatabase) function
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

  static Future<Response<String, BaseException>> callToMethodGetListModelFromNetworkDatabaseThereIsParameterAndUseTheSettersFVM(
      BaseViewModel baseViewModel,
      GetListModelFromNetworkDatabaseThereIsParameterDataSource getListModelFromNetworkDatabaseThereIsParameterDataSource,
      Function(BaseListModelNetworkDatabase) function
      ) async
  {
    try {
      var response = await getListModelFromNetworkDatabaseThereIsParameterDataSource
          .getListModelFromNetworkDatabaseThereIsParameterDataSource(
          baseViewModel.getBaseTypeParameterForGetListModelFromNetworkDatabaseThereIsParameterFVM);
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

  static Future<Response<String, BaseException>> callToMethodGetModelFromNetworkDatabaseThereIsParameterAndUseTheSettersFVM(
      BaseViewModel baseViewModel,
      GetModelFromNetworkDatabaseThereIsParameterDataSource getModelFromNetworkDatabaseThereIsParameterDataSource,
      Function(BaseModelNetworkDatabase) function
      ) async {
    try {
      var response = await getModelFromNetworkDatabaseThereIsParameterDataSource
          .getModelFromNetworkDatabaseThereIsParameterDataSource(
          baseViewModel.getBaseTypeParameterForGetModelFromNetworkDatabaseThereIsParameterFVM);
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


  static Future<Response<String, BaseException>> insertModelToNetworkDatabaseThereIsParameterFVM(
      InsertModelToNetworkDatabaseThereIsParameterDataSource insertModelToNetworkDatabaseThereIsParameterDataSource,
      BaseModelNetworkDatabase networkModel
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


  static Future<Response<String, BaseException>> updateModelToNetworkDatabaseThereIsParameterFVM(
      UpdateModelToNetworkDatabaseThereIsParameterDataSource updateModelToNetworkDatabaseThereIsParameterDataSource,
      BaseModelNetworkDatabase networkModel
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

  static Future<Response<String, BaseException>> deleteModelToNetworkDatabaseThereIsParameterFVM(
      DeleteModelToNetworkDatabaseThereIsParameterDataSource deleteModelToNetworkDatabaseThereIsParameterDataSource,
      BaseModelNetworkDatabase networkModel
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