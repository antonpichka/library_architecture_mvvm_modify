import 'package:library_architecture_mvvm_modify/base_data_source/interface_data_source/delete_list_model_to_network_database_there_is_parameter_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_data_source/interface_data_source/delete_model_to_network_database_there_is_parameter_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_data_source/interface_data_source/get_list_model_from_network_database_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_data_source/interface_data_source/get_list_model_from_network_database_data_source_and_delete_list_model_to_local_database_there_is_parameter_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_data_source/interface_data_source/get_list_model_from_network_database_data_source_and_delete_list_model_to_network_database_there_is_parameter_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_data_source/interface_data_source/get_list_model_from_network_database_data_source_and_insert_list_model_to_local_database_there_is_parameter_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_data_source/interface_data_source/get_list_model_from_network_database_data_source_and_insert_list_model_to_network_database_there_is_parameter_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_data_source/interface_data_source/get_list_model_from_network_database_data_source_and_update_list_model_to_local_database_there_is_parameter_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_data_source/interface_data_source/get_list_model_from_network_database_data_source_and_update_list_model_to_network_database_there_is_parameter_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_data_source/interface_data_source/get_list_model_from_network_database_there_is_parameter_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_data_source/interface_data_source/get_list_model_from_network_database_there_is_parameter_data_source_and_delete_list_model_to_local_database_there_is_parameter_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_data_source/interface_data_source/get_list_model_from_network_database_there_is_parameter_data_source_and_delete_list_model_to_network_database_there_is_parameter_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_data_source/interface_data_source/get_list_model_from_network_database_there_is_parameter_data_source_and_insert_list_model_to_local_database_there_is_parameter_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_data_source/interface_data_source/get_list_model_from_network_database_there_is_parameter_data_source_and_insert_list_model_to_network_database_there_is_parameter_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_data_source/interface_data_source/get_list_model_from_network_database_there_is_parameter_data_source_and_update_list_model_to_local_database_there_is_parameter_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_data_source/interface_data_source/get_list_model_from_network_database_there_is_parameter_data_source_and_update_list_model_to_network_database_there_is_parameter_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_data_source/interface_data_source/get_model_from_network_database_there_is_parameter_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_data_source/interface_data_source/get_model_from_network_database_there_is_parameter_data_source_and_delete_model_to_local_database_there_is_parameter_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_data_source/interface_data_source/get_model_from_network_database_there_is_parameter_data_source_and_delete_model_to_network_database_there_is_parameter_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_data_source/interface_data_source/get_model_from_network_database_there_is_parameter_data_source_and_insert_model_to_local_database_there_is_parameter_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_data_source/interface_data_source/get_model_from_network_database_there_is_parameter_data_source_and_insert_model_to_network_database_there_is_parameter_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_data_source/interface_data_source/get_model_from_network_database_there_is_parameter_data_source_and_update_model_to_local_database_there_is_parameter_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_data_source/interface_data_source/get_model_from_network_database_there_is_parameter_data_source_and_update_model_to_network_database_there_is_parameter_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_data_source/interface_data_source/insert_list_model_to_network_database_there_is_parameter_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_data_source/interface_data_source/insert_model_to_network_database_there_is_parameter_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_data_source/interface_data_source/update_list_model_to_network_database_there_is_parameter_data_source.dart';
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

 static Future<Response<bool, BaseException>> getListModelFromNetworkDatabaseFVMAndDeleteListModelToLocalDatabaseThereIsParameterFVM(
     GetListModelFromNetworkDatabaseDataSourceAndDeleteListModelToLocalDatabaseThereIsParameterDataSource get
     ) async
 {
   var response = await get
       .getListModelFromNetworkDatabaseDataSourceAndDeleteListModelToLocalDatabaseThereIsParameterDataSource();
   if(response.isSuccessResponse) {
     return Response.success(true);
   } else {
     return Response.exception(response.getException);
   }
 }

 static Future<Response<bool, BaseException>> getListModelFromNetworkDatabaseFVMAndDeleteListModelToNetworkDatabaseThereIsParameterFVM(
     GetListModelFromNetworkDatabaseDataSourceAndDeleteListModelToNetworkDatabaseThereIsParameterDataSource get
     ) async
 {
   var response = await get
       .getListModelFromNetworkDatabaseDataSourceAndDeleteListModelToNetworkDatabaseThereIsParameterDataSource();
   if(response.isSuccessResponse) {
     return Response.success(true);
   } else {
     return Response.exception(response.getException);
   }
 }

 static Future<Response<bool, BaseException>> getListModelFromNetworkDatabaseFVMAndInsertListModelToLocalDatabaseThereIsParameterFVM(
     GetListModelFromNetworkDatabaseDataSourceAndInsertListModelToLocalDatabaseThereIsParameterDataSource get
     ) async
 {
   var response = await get
       .getListModelFromNetworkDatabaseDataSourceAndInsertListModelToLocalDatabaseThereIsParameterDataSource();
   if(response.isSuccessResponse) {
     return Response.success(true);
   } else {
     return Response.exception(response.getException);
   }
 }

 static Future<Response<bool, BaseException>> getListModelFromNetworkDatabaseFVMAndInsertListModelToNetworkDatabaseThereIsParameterFVM(
     GetListModelFromNetworkDatabaseDataSourceAndInsertListModelToNetworkDatabaseThereIsParameterDataSource get
     ) async
 {
   var response = await get
       .getListModelFromNetworkDatabaseDataSourceAndInsertListModelToNetworkDatabaseThereIsParameterDataSource();
   if(response.isSuccessResponse) {
     return Response.success(true);
   } else {
     return Response.exception(response.getException);
   }
 }

 static Future<Response<bool, BaseException>> getListModelFromNetworkDatabaseFVMAndUpdateListModelToLocalDatabaseThereIsParameterFVM(
     GetListModelFromNetworkDatabaseDataSourceAndUpdateListModelToLocalDatabaseThereIsParameterDataSource get
     ) async
 {
   var response = await get
       .getListModelFromNetworkDatabaseDataSourceAndUpdateListModelToLocalDatabaseThereIsParameterDataSource();
   if(response.isSuccessResponse) {
     return Response.success(true);
   } else {
     return Response.exception(response.getException);
   }
 }

 static Future<Response<bool, BaseException>> getListModelFromNetworkDatabaseFVMAndUpdateListModelToNetworkDatabaseThereIsParameterFVM(
     GetListModelFromNetworkDatabaseDataSourceAndUpdateListModelToNetworkDatabaseThereIsParameterDataSource get
     ) async
 {
   var response = await get
       .getListModelFromNetworkDatabaseDataSourceAndUpdateListModelToNetworkDatabaseThereIsParameterDataSource();
   if(response.isSuccessResponse) {
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

 static Future<Response<bool, BaseException>> getListModelFromNetworkDatabaseThereIsParameterFVMAndDeleteListModelToLocalDatabaseThereIsParameterFVM(
     GetListModelFromNetworkDatabaseThereIsParameterDataSourceAndDeleteListModelToLocalDatabaseThereIsParameterDataSource get,
     BaseTypeParameter parameter
     ) async
 {
   var response = await get
       .getListModelFromNetworkDatabaseThereIsParameterDataSourceAndDeleteListModelToLocalDatabaseThereIsParameterDataSource(parameter);
   if(response.isSuccessResponse) {
     return Response.success(true);
   } else {
     return Response.exception(response.getException);
   }
 }

 static Future<Response<bool, BaseException>> getListModelFromNetworkDatabaseThereIsParameterFVMAndDeleteListModelToNetworkDatabaseThereIsParameterFVM(
     GetListModelFromNetworkDatabaseThereIsParameterDataSourceAndDeleteListModelToNetworkDatabaseThereIsParameterDataSource get,
     BaseTypeParameter parameter
     ) async
 {
   var response = await get
       .getListModelFromNetworkDatabaseThereIsParameterDataSourceAndDeleteListModelToNetworkDatabaseThereIsParameterDataSource(parameter);
   if(response.isSuccessResponse) {
     return Response.success(true);
   } else {
     return Response.exception(response.getException);
   }
 }

 static Future<Response<bool, BaseException>> getListModelFromNetworkDatabaseThereIsParameterFVMAndInsertListModelToLocalDatabaseThereIsParameterFVM(
     GetListModelFromNetworkDatabaseThereIsParameterDataSourceAndInsertListModelToLocalDatabaseThereIsParameterDataSource get,
     BaseTypeParameter parameter
     ) async
 {
   var response = await get
       .getListModelFromNetworkDatabaseThereIsParameterDataSourceAndInsertListModelToLocalDatabaseThereIsParameterDataSource(parameter);
   if(response.isSuccessResponse) {
     return Response.success(true);
   } else {
     return Response.exception(response.getException);
   }
 }

 static Future<Response<bool, BaseException>> getListModelFromNetworkDatabaseThereIsParameterFVMAndInsertListModelToNetworkDatabaseThereIsParameterFVM(
     GetListModelFromNetworkDatabaseThereIsParameterDataSourceAndInsertListModelToNetworkDatabaseThereIsParameterDataSource get,
     BaseTypeParameter parameter
     ) async
 {
   var response = await get
       .getListModelFromNetworkDatabaseThereIsParameterDataSourceAndInsertListModelToNetworkDatabaseThereIsParameterDataSource(parameter);
   if(response.isSuccessResponse) {
     return Response.success(true);
   } else {
     return Response.exception(response.getException);
   }
 }

 static Future<Response<bool, BaseException>> getListModelFromNetworkDatabaseThereIsParameterFVMAndUpdateListModelToLocalDatabaseThereIsParameterFVM(
     GetListModelFromNetworkDatabaseThereIsParameterDataSourceAndUpdateListModelToLocalDatabaseThereIsParameterDataSource get,
     BaseTypeParameter parameter
     ) async
 {
   var response = await get
       .getListModelFromNetworkDatabaseThereIsParameterDataSourceAndUpdateListModelToLocalDatabaseThereIsParameterDataSource(parameter);
   if(response.isSuccessResponse) {
     return Response.success(true);
   } else {
     return Response.exception(response.getException);
   }
 }

 static Future<Response<bool, BaseException>> getListModelFromNetworkDatabaseThereIsParameterFVMAndUpdateListModelToNetworkDatabaseThereIsParameterFVM(
     GetListModelFromNetworkDatabaseThereIsParameterDataSourceAndUpdateListModelToNetworkDatabaseThereIsParameterDataSource get,
     BaseTypeParameter parameter
     ) async
 {
   var response = await get
       .getListModelFromNetworkDatabaseThereIsParameterDataSourceAndUpdateListModelToNetworkDatabaseThereIsParameterDataSource(parameter);
   if(response.isSuccessResponse) {
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
        baseViewModel.setModel(
            response.getData.toBaseModelDomain(),
            EnumBaseModelDomainVM.getModelFromNetworkDatabaseThereIsParameter
        );
        return Response.success(true);
      } else {
        return Response.exception(response.getException);
      }
  }

 static Future<Response<bool, BaseException>> getModelFromNetworkDatabaseThereIsParameterFVMAndDeleteModelToLocalDatabaseThereIsParameterFVM(
     GetModelFromNetworkDatabaseThereIsParameterDataSourceAndDeleteModelToLocalDatabaseThereIsParameterDataSource get,
     BaseTypeParameter parameter
     ) async
 {
   var response = await get
       .getModelFromNetworkDatabaseThereIsParameterDataSourceAndDeleteModelToLocalDatabaseThereIsParameterDataSource(parameter);
   if(response.isSuccessResponse) {
     return Response.success(true);
   } else {
     return Response.exception(response.getException);
   }
 }

 static Future<Response<bool, BaseException>> getModelFromNetworkDatabaseThereIsParameterFVMAndDeleteModelToNetworkDatabaseThereIsParameterFVM(
     GetModelFromNetworkDatabaseThereIsParameterDataSourceAndDeleteModelToNetworkDatabaseThereIsParameterDataSource get,
     BaseTypeParameter parameter
     ) async
 {
   var response = await get
       .getModelFromNetworkDatabaseThereIsParameterDataSourceAndDeleteModelToNetworkDatabaseThereIsParameterDataSource(parameter);
   if(response.isSuccessResponse) {
     return Response.success(true);
   } else {
     return Response.exception(response.getException);
   }
 }

 static Future<Response<bool, BaseException>> getModelFromNetworkDatabaseThereIsParameterFVMAndInsertModelToLocalDatabaseThereIsParameterFVM(
     GetModelFromNetworkDatabaseThereIsParameterDataSourceAndInsertModelToLocalDatabaseThereIsParameterDataSource get,
     BaseTypeParameter parameter
     ) async
 {
   var response = await get
       .getModelFromNetworkDatabaseThereIsParameterDataSourceAndInsertModelToLocalDatabaseThereIsParameterDataSource(parameter);
   if(response.isSuccessResponse) {
     return Response.success(true);
   } else {
     return Response.exception(response.getException);
   }
 }

 static Future<Response<bool, BaseException>> getModelFromNetworkDatabaseThereIsParameterFVMAndInsertModelToNetworkDatabaseThereIsParameterFVM(
     GetModelFromNetworkDatabaseThereIsParameterDataSourceAndInsertModelToNetworkDatabaseThereIsParameterDataSource get,
     BaseTypeParameter parameter
     ) async
 {
   var response = await get
       .getModelFromNetworkDatabaseThereIsParameterDataSourceAndInsertModelToNetworkDatabaseThereIsParameterDataSource(parameter);
   if(response.isSuccessResponse) {
     return Response.success(true);
   } else {
     return Response.exception(response.getException);
   }
 }

 static Future<Response<bool, BaseException>> getModelFromNetworkDatabaseThereIsParameterFVMAndUpdateModelToLocalDatabaseThereIsParameterFVM(
     GetModelFromNetworkDatabaseThereIsParameterDataSourceAndUpdateModelToLocalDatabaseThereIsParameterDataSource get,
     BaseTypeParameter parameter
     ) async
 {
   var response = await get
       .getModelFromNetworkDatabaseThereIsParameterDataSourceAndUpdateModelToLocalDatabaseThereIsParameterDataSource(parameter);
   if(response.isSuccessResponse) {
     return Response.success(true);
   } else {
     return Response.exception(response.getException);
   }
 }

 static Future<Response<bool, BaseException>> getModelFromNetworkDatabaseThereIsParameterFVMAndUpdateModelToNetworkDatabaseThereIsParameterFVM(
     GetModelFromNetworkDatabaseThereIsParameterDataSourceAndUpdateModelToNetworkDatabaseThereIsParameterDataSource get,
     BaseTypeParameter parameter
     ) async
 {
   var response = await get
       .getModelFromNetworkDatabaseThereIsParameterDataSourceAndUpdateModelToNetworkDatabaseThereIsParameterDataSource(parameter);
   if(response.isSuccessResponse) {
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
              .getModel(EnumBaseModelDomainVM.insertModelToNetworkDatabaseThereIsParameter)
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

 static Future<Response<bool, BaseException>> insertListModelToNetworkDatabaseThereIsParameterFVM(
     BaseListModelDomain baseListModelDomain,
     InsertListModelToNetworkDatabaseThereIsParameterDataSource insertListModelToNetworkDatabaseThereIsParameterDataSource,
     ) async
 {
   var response = await insertListModelToNetworkDatabaseThereIsParameterDataSource
       .insertListModelToNetworkDatabaseThereIsParameterDataSource(
       baseListModelDomain.toBaseListModelNetworkDatabase()
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
              .getModel(EnumBaseModelDomainVM.updateModelToNetworkDatabaseThereIsParameter)
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

 static Future<Response<bool, BaseException>> updateListModelToNetworkDatabaseThereIsParameterFVM(
     BaseListModelDomain baseListModelDomain,
     UpdateListModelToNetworkDatabaseThereIsParameterDataSource updateListModelToNetworkDatabaseThereIsParameterDataSource,
     ) async
 {
   var response = await updateListModelToNetworkDatabaseThereIsParameterDataSource
       .updateListModelToNetworkDatabaseThereIsParameterDataSource(
       baseListModelDomain.toBaseListModelNetworkDatabase()
   );
   if (response.isSuccessResponse) {
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
           .getModel(EnumBaseModelDomainVM.deleteModelToNetworkDatabaseThereIsParameter)
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

 static Future<Response<bool, BaseException>> deleteListModelToNetworkDatabaseThereIsParameterFVM(
     BaseListModelDomain baseListModelDomain,
     DeleteListModelToNetworkDatabaseThereIsParameterDataSource deleteListModelToNetworkDatabaseThereIsParameterDataSource,
     ) async
 {
   var response = await deleteListModelToNetworkDatabaseThereIsParameterDataSource
       .deleteListModelToNetworkDatabaseThereIsParameterDataSource(
       baseListModelDomain.toBaseListModelNetworkDatabase()
   );
   if (response.isSuccessResponse) {
     return Response.success(true);
   } else {
     return Response.exception(response.getException);
   }
 }
 
}