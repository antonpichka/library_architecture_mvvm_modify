
import 'package:library_architecture_mvvm_modify/base_data_source/interface_data_source/delete_model_to_network_database_there_is_parameter_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_data_source/interface_data_source/get_list_model_from_network_database_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_data_source/interface_data_source/get_list_model_from_network_database_there_is_parameter_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_data_source/interface_data_source/get_model_from_network_database_there_is_parameter_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_data_source/interface_data_source/insert_model_to_network_database_there_is_parameter_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_data_source/interface_data_source/update_model_to_network_database_there_is_parameter_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_exception/base_exception.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_list_model/base_list_model_domain.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_model_domain.dart';
import 'package:library_architecture_mvvm_modify/base_type_parameter/base_type_parameter.dart';
import 'package:library_architecture_mvvm_modify/base_view_model/base_view_model.dart';
import 'package:library_architecture_mvvm_modify/base_view_model/enum_base_model_domain_vm.dart';
import 'package:library_architecture_mvvm_modify/response.dart';

/* USING TO VIEW_MODEL CLASSES */
class ReadyModelNetworkDatabaseFVM
{
 static Future<Response<bool,BaseException>> callToMethodGetListModelFromNetworkDatabaseAndUseTheSettersFVM(
      GetListModelFromNetworkDatabaseDataSource getListModelFromNetworkDatabaseDataSource,
      BaseListModelDomain baseListModelDomain
      ) async
  {
      var response = await getListModelFromNetworkDatabaseDataSource
          .getListModelFromNetworkDatabaseDataSource();
      if(response.isSuccessResponse) {
        baseListModelDomain.setListModelDomainFromBaseListModelDomain = response.getData.toBaseListModelDomain();
        return Response.success(true);
      } else {
        return Response.exception(response.getException);
      }
  }

  static Future<Response<bool, BaseException>> callToMethodGetListModelFromNetworkDatabaseThereIsParameterAndUseTheSettersFVM(
      GetListModelFromNetworkDatabaseThereIsParameterDataSource getListModelFromNetworkDatabaseThereIsParameterDataSource,
      BaseListModelDomain baseListModelDomain,
      BaseTypeParameter baseTypeParameter
      ) async
  {
      var response = await getListModelFromNetworkDatabaseThereIsParameterDataSource
          .getListModelFromNetworkDatabaseThereIsParameterDataSource(baseTypeParameter);
      if(response.isSuccessResponse) {
        baseListModelDomain.setListModelDomainFromBaseListModelDomain = response.getData.toBaseListModelDomain();
        return Response.success(true);
      } else {
        return Response.exception(response.getException);
      }
  }

  static Future<Response<bool, BaseException>> callToMethodGetModelFromNetworkDatabaseThereIsParameterAndUseTheSettersFVM(
      BaseViewModel baseViewModel,
      GetModelFromNetworkDatabaseThereIsParameterDataSource getModelFromNetworkDatabaseThereIsParameterDataSource,
      BaseTypeParameter baseTypeParameter
      ) async
  {
      var response = await getModelFromNetworkDatabaseThereIsParameterDataSource
          .getModelFromNetworkDatabaseThereIsParameterDataSource(baseTypeParameter);
      if(response.isSuccessResponse) {
        baseViewModel.setModelDomain(
            response.getData.toBaseModelDomain(),
            EnumBaseModelDomainVM.getModelFromNetworkDatabaseThereIsParameter
        );
        return Response.success(true);
      } else {
        return Response.exception(response.getException);
      }
  }

  static Future<Response<bool, BaseException>> insertModelToNetworkDatabaseThereIsParameterFVM(
      BaseViewModel baseViewModel,
      InsertModelToNetworkDatabaseThereIsParameterDataSource insertModelToNetworkDatabaseThereIsParameterDataSource,
      ) async
  {
      var response = await insertModelToNetworkDatabaseThereIsParameterDataSource
          .insertModelToNetworkDatabaseThereIsParameterDataSource(
          baseViewModel
              .getModelDomain(EnumBaseModelDomainVM.insertModelToNetworkDatabaseThereIsParameter)
              .toBaseModelNetworkDatabase()
      );
      if (response.isSuccessResponse) {
        return Response.success(true);
      } else {
        return Response.exception(response.getException);
      }
  }

   static Future<Response<bool, BaseException>> insertModelToNetworkDatabaseThereIsParameterFVMVariantTwo(
       BaseModelDomain baseModelDomain,
       InsertModelToNetworkDatabaseThereIsParameterDataSource insertModelToNetworkDatabaseThereIsParameterDataSource,
       ) async
   {
     var response = await insertModelToNetworkDatabaseThereIsParameterDataSource
         .insertModelToNetworkDatabaseThereIsParameterDataSource(
         baseModelDomain.toBaseModelNetworkDatabase()
     );
     if (response.isSuccessResponse) {
       return Response.success(true);
     } else {
       return Response.exception(response.getException);
     }
   }

  static Future<Response<bool, BaseException>> updateModelToNetworkDatabaseThereIsParameterFVM(
      BaseViewModel baseViewModel,
      UpdateModelToNetworkDatabaseThereIsParameterDataSource updateModelToNetworkDatabaseThereIsParameterDataSource,
      ) async
  {
      var response = await updateModelToNetworkDatabaseThereIsParameterDataSource
          .updateModelToNetworkDatabaseThereIsParameterDataSource(
          baseViewModel
              .getModelDomain(EnumBaseModelDomainVM.updateModelToNetworkDatabaseThereIsParameter)
              .toBaseModelNetworkDatabase()
      );
      if(response.isSuccessResponse) {
        return Response.success(true);
      } else {
        return Response.exception(response.getException);
      }
  }

   static Future<Response<bool, BaseException>> updateModelToNetworkDatabaseThereIsParameterFVMVariantTwo(
       BaseModelDomain baseModelDomain,
       UpdateModelToNetworkDatabaseThereIsParameterDataSource updateModelToNetworkDatabaseThereIsParameterDataSource,
       ) async
   {
     var response = await updateModelToNetworkDatabaseThereIsParameterDataSource
         .updateModelToNetworkDatabaseThereIsParameterDataSource(
         baseModelDomain.toBaseModelNetworkDatabase()
     );
     if(response.isSuccessResponse) {
       return Response.success(true);
     } else {
       return Response.exception(response.getException);
     }
   }

  static Future<Response<bool, BaseException>> deleteModelToNetworkDatabaseThereIsParameterFVM(
      BaseViewModel baseViewModel,
      DeleteModelToNetworkDatabaseThereIsParameterDataSource deleteModelToNetworkDatabaseThereIsParameterDataSource,
      ) async
  {
      var response =  await deleteModelToNetworkDatabaseThereIsParameterDataSource
          .deleteModelToNetworkDatabaseThereIsParameterDataSource(
          baseViewModel
              .getModelDomain(EnumBaseModelDomainVM.deleteModelToNetworkDatabaseThereIsParameter)
              .toBaseModelNetworkDatabase()
      );
      if(response.isSuccessResponse) {
        return Response.success(true);
      } else {
        return Response.exception(response.getException);
      }
  }

 static Future<Response<bool, BaseException>> deleteModelToNetworkDatabaseThereIsParameterFVMVariantTwo(
     BaseModelDomain baseModelDomain,
     DeleteModelToNetworkDatabaseThereIsParameterDataSource deleteModelToNetworkDatabaseThereIsParameterDataSource,
     ) async
 {
   var response =  await deleteModelToNetworkDatabaseThereIsParameterDataSource
       .deleteModelToNetworkDatabaseThereIsParameterDataSource(
       baseModelDomain.toBaseModelNetworkDatabase()
   );
   if(response.isSuccessResponse) {
     return Response.success(true);
   } else {
     return Response.exception(response.getException);
   }
 }
}