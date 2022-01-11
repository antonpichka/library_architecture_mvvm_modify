
import 'package:library_architecture_mvvm_modify/base_data_source/interface_data_source/delete_model_to_local_database_there_is_parameter_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_data_source/interface_data_source/get_list_model_from_local_database_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_data_source/interface_data_source/get_list_model_from_local_database_there_is_parameter_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_data_source/interface_data_source/get_model_from_local_database_there_is_parameter_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_data_source/interface_data_source/insert_model_to_local_database_there_is_parameter_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_data_source/interface_data_source/update_model_to_local_database_there_is_parameter_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_exception/local_exception.dart';
import 'package:library_architecture_mvvm_modify/base_list_model/base_list_model_domain.dart';
import 'package:library_architecture_mvvm_modify/base_list_model/base_list_model_local_database.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_model_local_database.dart';
import 'package:library_architecture_mvvm_modify/base_view_model/base_view_model.dart';
import 'package:library_architecture_mvvm_modify/response.dart';

/* USING TO VIEW_MODEL CLASSES */
class ReadyModelLocalDatabaseFVM
{
  static Future<Response<bool, LocalException>> callToMethodGetListModelFromLocalDatabaseAndUseTheSettersFVM(
      GetListModelFromLocalDatabaseDataSource getListModelFromLocalDatabaseDataSource,
      Function(BaseListModelLocalDatabase) function
      ) async
  {
    try {
      var response = await getListModelFromLocalDatabaseDataSource
          .getListModelFromLocalDatabaseDataSource();
      if(response.isSuccessResponse) {
        function(response.getData);
        return Response.success(true);
      } else {
        return Response.exception(response.getException);
      }
    } catch (e) {
      return Response.exception(LocalException(e.runtimeType.toString(),e.toString()));
    }
  }

  static Future<Response<bool, LocalException>> callToMethodGetListModelFromLocalDatabaseThereIsParameterAndUseTheSettersFVM(
      BaseViewModel baseViewModel,
      GetListModelFromLocalDatabaseThereIsParameterDataSource getListModelFromLocalDatabaseThereIsParameterDataSource,
      BaseListModelDomain listModelDomain,
      ) async
  {
    try {
      var response = await getListModelFromLocalDatabaseThereIsParameterDataSource
          .getListModelFromLocalDatabaseThereIsParameterDataSource(
          baseViewModel.getBaseTypeParameterForGetListModelFromLocalDatabaseThereIsParameterFVM
      );
      if(response.isSuccessResponse) {
        listModelDomain.setListModelLocalDatabaseFromBaseListModelLocalDatabase(response.getData);
        return Response.success(true);
      } else {
        return Response.exception(response.getException);
      }
    } catch (e) {
      return Response.exception(LocalException(e.runtimeType.toString(),e.toString()));
    }
  }

  static Future<Response<bool, LocalException>> callToMethodGetModelFromLocalDatabaseThereIsParameterAndUseTheSettersFVM(
      BaseViewModel baseViewModel,
      GetModelFromLocalDatabaseThereIsParameterDataSource getModelFromLocalDatabaseThereIsParameterDataSource,
      Function(BaseModelLocalDatabase) function
      ) async {
    try {
      var response = await getModelFromLocalDatabaseThereIsParameterDataSource
          .getModelFromLocalDatabaseThereIsParameterDataSource(
          baseViewModel.getBaseTypeParameterForGetModelFromLocalDatabaseThereIsParameterFVM
      );
      if(response.isSuccessResponse) {
        function(response.getData);
        return Response.success(true);
      } else {
        return Response.exception(response.getException);
      }
    } catch (e) {
      return Response.exception(LocalException(e.runtimeType.toString(),e.toString()));
    }
  }


  static Future<Response<String, LocalException>> insertModelToLocalDatabaseThereIsParameterFVM(
      BaseViewModel baseViewModel,
      InsertModelToLocalDatabaseThereIsParameterDataSource insertModelToLocalDatabaseThereIsParameterDataSource,
      ) async {
    try {
      var response = await insertModelToLocalDatabaseThereIsParameterDataSource
          .insertModelToLocalDatabaseThereIsParameterDataSource(
          baseViewModel.getModelDomain(operation).toModelLocalDatabase()
      );
      if (response.isSuccessResponse) {
        return Response.success(CONST_SUCCESS);
      } else {
        return Response.exception(response.getException);
      }
    } catch (e) {
      return Response.exception(LocalException(e.runtimeType.toString(),e.toString()));
    }
  }


 static Future<Response<String, LocalException>> updateModelToLocalDatabaseThereIsParameterFVM(
      UpdateModelToLocalDatabaseThereIsParameterDataSource updateModelToLocalDatabaseThereIsParameterDataSource,
      BaseModelLocalDatabase localModel
      ) async {
    try {
      var response = await updateModelToLocalDatabaseThereIsParameterDataSource
          .updateModelToLocalDatabaseThereIsParameterDataSource(
         localModel
      );
      if(response.isSuccessResponse) {
        return Response.success(CONST_SUCCESS);
      } else {
        return Response.exception(response.getException);
      }
    } catch (e) {
      return Response.exception(LocalException(e.runtimeType.toString(),e.toString()));
    }
  }

 static Future<Response<String, LocalException>> deleteModelToLocalDatabaseThereIsParameterFVM(
      DeleteModelToLocalDatabaseThereIsParameterDataSource deleteModelToLocalDatabaseThereIsParameterDataSource,
      BaseModelLocalDatabase localModel
      ) async {
    try {
      var response =  await deleteModelToLocalDatabaseThereIsParameterDataSource
          .deleteModelToLocalDatabaseThereIsParameterDataSource(
          localModel
      );
      if(response.isSuccessResponse) {
        return Response.success(CONST_SUCCESS);
      } else {
        return Response.exception(response.getException);
      }
    } catch (e) {
      return Response.exception(LocalException(e.runtimeType.toString(),e.toString()));
    }
  }
}