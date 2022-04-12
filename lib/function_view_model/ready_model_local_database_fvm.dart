import 'package:library_architecture_mvvm_modify/base_data_source/interface_data_source/delete_list_model_to_local_database_there_is_parameter_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_data_source/interface_data_source/delete_model_to_local_database_there_is_parameter_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_data_source/interface_data_source/get_list_model_from_local_database_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_data_source/interface_data_source/get_list_model_from_local_database_there_is_parameter_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_data_source/interface_data_source/get_model_from_local_database_there_is_parameter_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_data_source/interface_data_source/insert_list_model_to_local_database_there_is_parameter_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_data_source/interface_data_source/insert_model_to_local_database_there_is_parameter_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_data_source/interface_data_source/update_list_model_to_local_database_there_is_parameter_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_data_source/interface_data_source/update_model_to_local_database_there_is_parameter_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_exception/base_exception.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_list_model/base_list_model_domain.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_list_model/base_list_model_local_database.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_model_local_database.dart';
import 'package:library_architecture_mvvm_modify/base_type_parameter/base_type_parameter.dart';
import 'package:library_architecture_mvvm_modify/base_view_model/base_view_model.dart';
import 'package:library_architecture_mvvm_modify/base_view_model/enum_base_model_domain_vm.dart';
import 'package:library_architecture_mvvm_modify/response.dart';

/* USING TO VIEW_MODEL CLASSES */
class ReadyModelLocalDatabaseFVM
{
  static Future<Response<bool, BaseException>> callToMethodGetListModelFromLocalDatabaseAndUseTheSettersFVM(
      GetListModelFromLocalDatabaseDataSource getListModelFromLocalDatabaseDataSource,
      BaseListModelDomain baseListModelDomain
      ) async
  {
    var response = await getListModelFromLocalDatabaseDataSource.getListModelFromLocalDatabaseDataSource();
    if(response.isSuccessResponse) {
      baseListModelDomain.setListModelDomainFromBaseListModelDomain = response.getData.toBaseListModelDomain();
      return Response.success(true);
    } else {
      return Response.exception(response.getException);
    }
  }

  static Future<Response<bool, BaseException>> callToMethodGetListModelFromLocalDatabaseThereIsParameterAndUseTheSettersFVM(
      GetListModelFromLocalDatabaseThereIsParameterDataSource getListModelFromLocalDatabaseThereIsParameterDataSource,
      BaseListModelDomain baseListModelDomain,
      BaseTypeParameter baseTypeParameter
      ) async
  {
    var response = await getListModelFromLocalDatabaseThereIsParameterDataSource.getListModelFromLocalDatabaseThereIsParameterDataSource(
        baseTypeParameter
    );
    if(response.isSuccessResponse) {
      baseListModelDomain.setListModelDomainFromBaseListModelDomain = response.getData.toBaseListModelDomain();
      return Response.success(true);
    } else {
      return Response.exception(response.getException);
    }
  }

  static Future<Response<bool, BaseException>> callToMethodGetModelFromLocalDatabaseThereIsParameterAndUseTheSettersFVM(
      BaseViewModel baseViewModel,
      GetModelFromLocalDatabaseThereIsParameterDataSource getModelFromLocalDatabaseThereIsParameterDataSource,
      BaseTypeParameter baseTypeParameter
      ) async
  {
    var response = await getModelFromLocalDatabaseThereIsParameterDataSource.getModelFromLocalDatabaseThereIsParameterDataSource(
        baseTypeParameter
    );
    if(response.isSuccessResponse) {
      baseViewModel.setModel(
          response.getData.toBaseModelDomain(),
          EnumBaseModelDomainVM.getModelFromLocalDatabaseThereIsParameter
      );
      return Response.success(true);
    } else {
      return Response.exception(response.getException);
    }
  }
  
  static Future<Response<BaseTypeParameter, BaseException>> insertModelToLocalDatabaseThereIsParameterFVM(
      BaseModelLocalDatabase baseModelLocalDatabase,
      InsertModelToLocalDatabaseThereIsParameterDataSource insertModelToLocalDatabaseThereIsParameterDataSource,
      ) async
  {
    var response = await insertModelToLocalDatabaseThereIsParameterDataSource.insertModelToLocalDatabaseThereIsParameterDataSource(
        baseModelLocalDatabase
    );
    if (response.isSuccessResponse) {
      return Response.success(response.getData);
    } else {
      return Response.exception(response.getException);
    }
  }

  static Future<Response<BaseTypeParameter, BaseException>> insertListModelToLocalDatabaseThereIsParameterFVM(
      BaseListModelLocalDatabase baseListModelLocalDatabase,
      InsertListModelToLocalDatabaseThereIsParameterDataSource insertListModelToLocalDatabaseThereIsParameterDataSource,
      ) async
  {
    var response = await insertListModelToLocalDatabaseThereIsParameterDataSource.insertListModelToLocalDatabaseThereIsParameterDataSource(
        baseListModelLocalDatabase
    );
    if (response.isSuccessResponse) {
      return Response.success(response.getData);
    } else {
      return Response.exception(response.getException);
    }
  }
  
  static Future<Response<BaseTypeParameter, BaseException>> updateModelToLocalDatabaseThereIsParameterFVM(
      BaseModelLocalDatabase baseModelLocalDatabase,
      UpdateModelToLocalDatabaseThereIsParameterDataSource updateModelToLocalDatabaseThereIsParameterDataSource,
      ) async
  {
    var response = await updateModelToLocalDatabaseThereIsParameterDataSource.updateModelToLocalDatabaseThereIsParameterDataSource(
        baseModelLocalDatabase
    );
    if(response.isSuccessResponse) {
      return Response.success(response.getData);
    } else {
      return Response.exception(response.getException);
    }
  }

  static Future<Response<BaseTypeParameter, BaseException>> updateListModelToLocalDatabaseThereIsParameterFVM(
      BaseListModelLocalDatabase baseListModelLocalDatabase,
      UpdateListModelToLocalDatabaseThereIsParameterDataSource updateListModelToLocalDatabaseThereIsParameterDataSource,
      ) async
  {
    var response = await updateListModelToLocalDatabaseThereIsParameterDataSource.updateListModelToLocalDatabaseThereIsParameterDataSource(
        baseListModelLocalDatabase
    );
    if (response.isSuccessResponse) {
      return Response.success(response.getData);
    } else {
      return Response.exception(response.getException);
    }
  }

  static Future<Response<BaseTypeParameter, BaseException>> deleteModelToLocalDatabaseThereIsParameterFVM(
      BaseModelLocalDatabase baseModelLocalDatabase,
      DeleteModelToLocalDatabaseThereIsParameterDataSource deleteModelToLocalDatabaseThereIsParameterDataSource,
      ) async
  {
    var response =  await deleteModelToLocalDatabaseThereIsParameterDataSource.deleteModelToLocalDatabaseThereIsParameterDataSource(
        baseModelLocalDatabase
    );
    if(response.isSuccessResponse) {
      return Response.success(response.getData);
    } else {
      return Response.exception(response.getException);
    }
  }

  static Future<Response<BaseTypeParameter, BaseException>> deleteListModelToLocalDatabaseThereIsParameterFVM(
      BaseListModelLocalDatabase baseListModelLocalDatabase,
      DeleteListModelToLocalDatabaseThereIsParameterDataSource deleteListModelToLocalDatabaseThereIsParameterDataSource,
      ) async
  {
    var response = await deleteListModelToLocalDatabaseThereIsParameterDataSource.deleteListModelToLocalDatabaseThereIsParameterDataSource(
        baseListModelLocalDatabase
    );
    if (response.isSuccessResponse) {
      return Response.success(response.getData);
    } else {
      return Response.exception(response.getException);
    }
  }

}