import 'package:library_architecture_mvvm_modify/base_data_source/interface_data_source/delete_list_model_to_named_database_there_is_parameter_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_data_source/interface_data_source/delete_model_to_named_database_there_is_parameter_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_data_source/interface_data_source/get_list_model_from_named_database_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_data_source/interface_data_source/get_list_model_from_named_database_there_is_parameter_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_data_source/interface_data_source/get_model_from_named_database_there_is_parameter_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_data_source/interface_data_source/insert_list_model_to_named_database_there_is_parameter_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_data_source/interface_data_source/insert_model_to_named_database_there_is_parameter_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_data_source/interface_data_source/update_list_model_to_named_database_there_is_parameter_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_data_source/interface_data_source/update_model_to_named_database_there_is_parameter_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_exception/base_exception.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_list_model/base_list_model_domain.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_list_model/base_list_model_named_database.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_model_named_database.dart';
import 'package:library_architecture_mvvm_modify/base_type_parameter/base_type_parameter.dart';
import 'package:library_architecture_mvvm_modify/base_view_model/base_view_model.dart';
import 'package:library_architecture_mvvm_modify/base_view_model/enum_base_model_domain_vm.dart';
import 'package:library_architecture_mvvm_modify/response.dart';

/* USING TO VIEW_MODEL CLASSES */
class ReadyModelNamedDatabaseFVM
{
  static Future<Response<bool, BaseException>> callToMethodGetListModelFromNamedDatabaseAndUseTheSettersFVM(
      GetListModelFromNamedDatabaseDataSource getListModelFromNamedDatabaseDataSource,
      BaseListModelDomain baseListModelDomain
      ) async
  {
    var response = await getListModelFromNamedDatabaseDataSource.getListModelFromNamedDatabaseDataSource();
    if(response.isSuccessResponse) {
      baseListModelDomain.setListModelDomainFromBaseListModelDomain = response.getData.toBaseListModelDomain();
      return Response.success(true);
    } else {
      return Response.exception(response.getException);
    }
  }

  static Future<Response<bool, BaseException>> callToMethodGetListModelFromNamedDatabaseThereIsParameterAndUseTheSettersFVM(
      GetListModelFromNamedDatabaseThereIsParameterDataSource getListModelFromNamedDatabaseThereIsParameterDataSource,
      BaseListModelDomain baseListModelDomain,
      BaseTypeParameter baseTypeParameter
      ) async
  {
    var response = await getListModelFromNamedDatabaseThereIsParameterDataSource.getListModelFromNamedDatabaseThereIsParameterDataSource(
        baseTypeParameter
    );
    if(response.isSuccessResponse) {
      baseListModelDomain.setListModelDomainFromBaseListModelDomain = response.getData.toBaseListModelDomain();
      return Response.success(true);
    } else {
      return Response.exception(response.getException);
    }
  }

  static Future<Response<bool, BaseException>> callToMethodGetModelFromNamedDatabaseThereIsParameterAndUseTheSettersFVM(
      BaseViewModel baseViewModel,
      GetModelFromNamedDatabaseThereIsParameterDataSource getModelFromNamedDatabaseThereIsParameterDataSource,
      BaseTypeParameter baseTypeParameter
      ) async
  {
    var response = await getModelFromNamedDatabaseThereIsParameterDataSource.getModelFromNamedDatabaseThereIsParameterDataSource(
        baseTypeParameter
    );
    if(response.isSuccessResponse) {
      baseViewModel.setModel(
          response.getData.toBaseModelDomain(),
          EnumBaseModelDomainVM.getModelFromNamedDatabaseThereIsParameter
      );
      return Response.success(true);
    } else {
      return Response.exception(response.getException);
    }
  }
  
  static Future<Response<BaseTypeParameter, BaseException>> insertModelToNamedDatabaseThereIsParameterFVM(
      BaseModelNamedDatabase baseModelNamedDatabase,
      InsertModelToNamedDatabaseThereIsParameterDataSource insertModelToNamedDatabaseThereIsParameterDataSource,
      ) async
  {
    var response = await insertModelToNamedDatabaseThereIsParameterDataSource.insertModelToNamedDatabaseThereIsParameterDataSource(
        baseModelNamedDatabase
    );
    if (response.isSuccessResponse) {
      return Response.success(response.getData);
    } else {
      return Response.exception(response.getException);
    }
  }

  static Future<Response<BaseTypeParameter, BaseException>> insertListModelToNamedDatabaseThereIsParameterFVM(
      BaseListModelNamedDatabase baseListModelNamedDatabase,
      InsertListModelToNamedDatabaseThereIsParameterDataSource insertListModelToNamedDatabaseThereIsParameterDataSource,
      ) async
  {
    var response = await insertListModelToNamedDatabaseThereIsParameterDataSource.insertListModelToNamedDatabaseThereIsParameterDataSource(
        baseListModelNamedDatabase
    );
    if (response.isSuccessResponse) {
      return Response.success(response.getData);
    } else {
      return Response.exception(response.getException);
    }
  }
  
  static Future<Response<BaseTypeParameter, BaseException>> updateModelToNamedDatabaseThereIsParameterFVM(
      BaseModelNamedDatabase baseModelNamedDatabase,
      UpdateModelToNamedDatabaseThereIsParameterDataSource updateModelToNamedDatabaseThereIsParameterDataSource,
      ) async
  {
    var response = await updateModelToNamedDatabaseThereIsParameterDataSource.updateModelToNamedDatabaseThereIsParameterDataSource(
        baseModelNamedDatabase
    );
    if(response.isSuccessResponse) {
      return Response.success(response.getData);
    } else {
      return Response.exception(response.getException);
    }
  }

  static Future<Response<BaseTypeParameter, BaseException>> updateListModelToNamedDatabaseThereIsParameterFVM(
      BaseListModelNamedDatabase baseListModelNamedDatabase,
      UpdateListModelToNamedDatabaseThereIsParameterDataSource updateListModelToNamedDatabaseThereIsParameterDataSource,
      ) async
  {
    var response = await updateListModelToNamedDatabaseThereIsParameterDataSource.updateListModelToNamedDatabaseThereIsParameterDataSource(
        baseListModelNamedDatabase
    );
    if (response.isSuccessResponse) {
      return Response.success(response.getData);
    } else {
      return Response.exception(response.getException);
    }
  }

  static Future<Response<BaseTypeParameter, BaseException>> deleteModelToNamedDatabaseThereIsParameterFVM(
      BaseModelNamedDatabase baseModelNamedDatabase,
      DeleteModelToNamedDatabaseThereIsParameterDataSource deleteModelToNamedDatabaseThereIsParameterDataSource,
      ) async
  {
    var response =  await deleteModelToNamedDatabaseThereIsParameterDataSource.deleteModelToNamedDatabaseThereIsParameterDataSource(
        baseModelNamedDatabase
    );
    if(response.isSuccessResponse) {
      return Response.success(response.getData);
    } else {
      return Response.exception(response.getException);
    }
  }

  static Future<Response<BaseTypeParameter, BaseException>> deleteListModelToNamedDatabaseThereIsParameterFVM(
      BaseListModelNamedDatabase baseListModelNamedDatabase,
      DeleteListModelToNamedDatabaseThereIsParameterDataSource deleteListModelToNamedDatabaseThereIsParameterDataSource,
      ) async
  {
    var response = await deleteListModelToNamedDatabaseThereIsParameterDataSource.deleteListModelToNamedDatabaseThereIsParameterDataSource(
        baseListModelNamedDatabase
    );
    if (response.isSuccessResponse) {
      return Response.success(response.getData);
    } else {
      return Response.exception(response.getException);
    }
  }

}