import 'package:library_architecture_mvvm_modify/base_data_source/interface_data_source/delete_list_model_to_network_database_there_is_parameter_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_data_source/interface_data_source/delete_model_to_network_database_there_is_parameter_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_data_source/interface_data_source/get_list_model_from_network_database_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_data_source/interface_data_source/get_list_model_from_network_database_there_is_parameter_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_data_source/interface_data_source/get_model_from_network_database_there_is_parameter_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_data_source/interface_data_source/insert_list_model_to_network_database_there_is_parameter_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_data_source/interface_data_source/insert_model_to_network_database_there_is_parameter_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_data_source/interface_data_source/update_list_model_to_network_database_there_is_parameter_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_data_source/interface_data_source/update_model_to_network_database_there_is_parameter_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_exception/base_exception.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_list_model/base_list_model_domain.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_list_model/base_list_model_network_database.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_model_network_database.dart';
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
   var response = await getListModelFromNetworkDatabaseDataSource.getListModelFromNetworkDatabaseDataSource();
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
    var response = await getListModelFromNetworkDatabaseThereIsParameterDataSource.getListModelFromNetworkDatabaseThereIsParameterDataSource(baseTypeParameter);
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
      var response = await getModelFromNetworkDatabaseThereIsParameterDataSource.getModelFromNetworkDatabaseThereIsParameterDataSource(baseTypeParameter);
      if(response.isSuccessResponse) {
        baseViewModel.setModel(
            response.getData.toBaseModelDomain(),
            EnumBaseModelDomainVM.getModelFromNetworkDatabaseThereIsParameter
        );
        return Response.success(true);
      } else {
        return Response.exception(response.getException);
      }
  }
  
  static Future<Response<BaseTypeParameter, BaseException>> insertModelToNetworkDatabaseThereIsParameterFVM(
       BaseModelNetworkDatabase baseModelNetworkDatabase,
       InsertModelToNetworkDatabaseThereIsParameterDataSource insertModelToNetworkDatabaseThereIsParameterDataSource,
       ) async
   {
     var response = await insertModelToNetworkDatabaseThereIsParameterDataSource.insertModelToNetworkDatabaseThereIsParameterDataSource(
         baseModelNetworkDatabase
     );
     if (response.isSuccessResponse) {
       return Response.success(response.getData);
     } else {
       return Response.exception(response.getException);
     }
   }

 static Future<Response<BaseTypeParameter, BaseException>> insertListModelToNetworkDatabaseThereIsParameterFVM(
     BaseListModelNetworkDatabase baseListModelNetworkDatabase,
     InsertListModelToNetworkDatabaseThereIsParameterDataSource insertListModelToNetworkDatabaseThereIsParameterDataSource,
     ) async
 {
   var response = await insertListModelToNetworkDatabaseThereIsParameterDataSource.insertListModelToNetworkDatabaseThereIsParameterDataSource(
       baseListModelNetworkDatabase
   );
   if (response.isSuccessResponse) {
     return Response.success(response.getData);
   } else {
     return Response.exception(response.getException);
   }
 }

 static Future<Response<BaseTypeParameter, BaseException>> updateModelToNetworkDatabaseThereIsParameterFVM(
     BaseModelNetworkDatabase baseModelNetworkDatabase,
     UpdateModelToNetworkDatabaseThereIsParameterDataSource updateModelToNetworkDatabaseThereIsParameterDataSource,
     ) async
 {
   var response = await updateModelToNetworkDatabaseThereIsParameterDataSource.updateModelToNetworkDatabaseThereIsParameterDataSource(
       baseModelNetworkDatabase
   );
   if(response.isSuccessResponse) {
     return Response.success(response.getData);
   } else {
     return Response.exception(response.getException);
   }
 }

 static Future<Response<BaseTypeParameter, BaseException>> updateListModelToNetworkDatabaseThereIsParameterFVM(
     BaseListModelNetworkDatabase baseListModelNetworkDatabase,
     UpdateListModelToNetworkDatabaseThereIsParameterDataSource updateListModelToNetworkDatabaseThereIsParameterDataSource,
     ) async
 {
   var response = await updateListModelToNetworkDatabaseThereIsParameterDataSource.updateListModelToNetworkDatabaseThereIsParameterDataSource(
       baseListModelNetworkDatabase
   );
   if (response.isSuccessResponse) {
     return Response.success(response.getData);
   } else {
     return Response.exception(response.getException);
   }
 }

 static Future<Response<BaseTypeParameter, BaseException>> deleteModelToNetworkDatabaseThereIsParameterFVM(
     BaseModelNetworkDatabase baseModelNetworkDatabase,
     DeleteModelToNetworkDatabaseThereIsParameterDataSource deleteModelToNetworkDatabaseThereIsParameterDataSource,
     ) async
 {
   var response =  await deleteModelToNetworkDatabaseThereIsParameterDataSource.deleteModelToNetworkDatabaseThereIsParameterDataSource(
       baseModelNetworkDatabase
   );
   if(response.isSuccessResponse) {
     return Response.success(response.getData);
   } else {
     return Response.exception(response.getException);
   }
 }

 static Future<Response<BaseTypeParameter, BaseException>> deleteListModelToNetworkDatabaseThereIsParameterFVM(
     BaseListModelNetworkDatabase baseListModelNetworkDatabase,
     DeleteListModelToNetworkDatabaseThereIsParameterDataSource deleteListModelToNetworkDatabaseThereIsParameterDataSource,
     ) async
 {
   var response = await deleteListModelToNetworkDatabaseThereIsParameterDataSource.deleteListModelToNetworkDatabaseThereIsParameterDataSource(
       baseListModelNetworkDatabase
   );
   if (response.isSuccessResponse) {
     return Response.success(response.getData);
   } else {
     return Response.exception(response.getException);
   }
 }
 
}