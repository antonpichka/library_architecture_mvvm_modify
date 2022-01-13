
import 'package:library_architecture_mvvm_modify/base_data_source/interface_data_source/delete_model_to_local_database_there_is_parameter_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_data_source/interface_data_source/get_list_model_from_local_database_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_data_source/interface_data_source/get_list_model_from_local_database_there_is_parameter_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_data_source/interface_data_source/get_model_from_local_database_there_is_parameter_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_data_source/interface_data_source/insert_model_to_local_database_there_is_parameter_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_data_source/interface_data_source/update_model_to_local_database_there_is_parameter_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_exception/local_exception.dart';
import 'package:library_architecture_mvvm_modify/base_view_model/base_view_model.dart';
import 'package:library_architecture_mvvm_modify/base_view_model/enum_base_list_model_domain_object_operation_view_model.dart';
import 'package:library_architecture_mvvm_modify/base_view_model/enum_base_model_domain_object_operation_view_model.dart';
import 'package:library_architecture_mvvm_modify/base_view_model/enum_base_type_parameter_object_operation_view_model.dart';
import 'package:library_architecture_mvvm_modify/base_view_model/protected_base_view_model.dart';
import 'package:library_architecture_mvvm_modify/response.dart';

/* USING TO VIEW_MODEL CLASSES */
class ReadyModelLocalDatabaseFVM
{
  static Future<Response<bool, LocalException>> callToMethodGetListModelFromLocalDatabaseAndUseTheSettersFVM(
      GetListModelFromLocalDatabaseDataSource getListModelFromLocalDatabaseDataSource,
      ProtectedBaseViewModel protectedBaseViewModel
      ) async
  {
    var response = await getListModelFromLocalDatabaseDataSource
        .getListModelFromLocalDatabaseDataSource();
    if(response.isSuccessResponse) {
      protectedBaseViewModel
          .getBaseListModelDomain(EnumBaseListModelDomainObjectOperationViewModel.getListModelFromLocalDatabaseThereIsParameterAndNoThereIsParameter)
          .setListModelDomainFromBaseListModelDomain = response.getData.toBaseListModelDomain();
      return Response.success(true);
    } else {
      return Response.exception(response.getException);
    }
  }

  static Future<Response<bool, LocalException>> callToMethodGetListModelFromLocalDatabaseThereIsParameterAndUseTheSettersFVM(
      GetListModelFromLocalDatabaseThereIsParameterDataSource getListModelFromLocalDatabaseThereIsParameterDataSource,
      ProtectedBaseViewModel protectedBaseViewModel
      ) async
  {
    var response = await getListModelFromLocalDatabaseThereIsParameterDataSource
        .getListModelFromLocalDatabaseThereIsParameterDataSource(
        protectedBaseViewModel
            .getBaseTypeParameterForGetModelLNDatabaseAndGetListLNDatabase(EnumBaseTypeParameterObjectOperationViewModel.getListModelFromLocalDatabaseThereIsParameter)
      );
    if(response.isSuccessResponse) {
      protectedBaseViewModel
          .getBaseListModelDomain(EnumBaseListModelDomainObjectOperationViewModel.getListModelFromLocalDatabaseThereIsParameterAndNoThereIsParameter)
          .setListModelDomainFromBaseListModelDomain = response.getData.toBaseListModelDomain();
      return Response.success(true);
    } else {
      return Response.exception(response.getException);
    }
  }

  static Future<Response<bool, LocalException>> callToMethodGetModelFromLocalDatabaseThereIsParameterAndUseTheSettersFVM(
      BaseViewModel baseViewModel,
      GetModelFromLocalDatabaseThereIsParameterDataSource getModelFromLocalDatabaseThereIsParameterDataSource,
      ProtectedBaseViewModel protectedBaseViewModel
      ) async
  {
    var response = await getModelFromLocalDatabaseThereIsParameterDataSource
        .getModelFromLocalDatabaseThereIsParameterDataSource(
        protectedBaseViewModel.getBaseTypeParameterForGetModelLNDatabaseAndGetListLNDatabase(
            EnumBaseTypeParameterObjectOperationViewModel.getModelFromLocalDatabaseThereIsParameter
        )
    );
    if(response.isSuccessResponse) {
      baseViewModel.setModelDomain(
          response.getData.toBaseModelDomain(),
          EnumBaseModelDomainObjectOperationViewModel.getModelFromLocalDatabaseThereIsParameter
      );
      return Response.success(true);
    } else {
      return Response.exception(response.getException);
    }
  }


  static Future<Response<bool, LocalException>> insertModelToLocalDatabaseThereIsParameterFVM(
      BaseViewModel baseViewModel,
      InsertModelToLocalDatabaseThereIsParameterDataSource insertModelToLocalDatabaseThereIsParameterDataSource,
      ) async
  {
    var response = await insertModelToLocalDatabaseThereIsParameterDataSource
        .insertModelToLocalDatabaseThereIsParameterDataSource(
        baseViewModel
            .getModelDomain(EnumBaseModelDomainObjectOperationViewModel.insertModelToLocalDatabaseThereIsParameter)
            .toBaseModelLocalDatabase()
    );
    if (response.isSuccessResponse) {
      return Response.success(true);
    } else {
      return Response.exception(response.getException);
    }
  }


 static Future<Response<bool, LocalException>> updateModelToLocalDatabaseThereIsParameterFVM(
      BaseViewModel baseViewModel,
      UpdateModelToLocalDatabaseThereIsParameterDataSource updateModelToLocalDatabaseThereIsParameterDataSource,
      ) async
 {
    var response = await updateModelToLocalDatabaseThereIsParameterDataSource
        .updateModelToLocalDatabaseThereIsParameterDataSource(
        baseViewModel
            .getModelDomain(EnumBaseModelDomainObjectOperationViewModel.updateModelToLocalDatabaseThereIsParameter)
            .toBaseModelLocalDatabase()
      );
    if(response.isSuccessResponse) {
      return Response.success(true);
    } else {
      return Response.exception(response.getException);
    }
  }

 static Future<Response<bool, LocalException>> deleteModelToLocalDatabaseThereIsParameterFVM(
      BaseViewModel baseViewModel,
      DeleteModelToLocalDatabaseThereIsParameterDataSource deleteModelToLocalDatabaseThereIsParameterDataSource,
      ) async
 {
    var response =  await deleteModelToLocalDatabaseThereIsParameterDataSource
        .deleteModelToLocalDatabaseThereIsParameterDataSource(
        baseViewModel
            .getModelDomain(EnumBaseModelDomainObjectOperationViewModel.deleteModelToLocalDatabaseThereIsParameter)
            .toBaseModelLocalDatabase()
    );
    if(response.isSuccessResponse) {
      return Response.success(true);
    } else {
      return Response.exception(response.getException);
    }
  }
}