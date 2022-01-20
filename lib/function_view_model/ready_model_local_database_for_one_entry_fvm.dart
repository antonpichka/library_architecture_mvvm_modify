
import 'package:library_architecture_mvvm_modify/base_data_source/interface_data_source/model_local_database_for_one_entry_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_exception/base_exception.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_model_domain.dart';
import 'package:library_architecture_mvvm_modify/base_view_model/base_view_model.dart';
import 'package:library_architecture_mvvm_modify/base_view_model/enum_base_model_domain_vm.dart';
import 'package:library_architecture_mvvm_modify/response.dart';

/* USING TO VIEW_MODEL CLASSES */
class ReadyModelLocalDatabaseForOneEntryFVM
{
 static Future<Response<bool,BaseException>> callToMethodGetModelFromLocalDatabaseForOneEntryAndUseTheSettersFVM(
     BaseViewModel baseViewModel,
     ModelLocalDatabaseForOneEntryDataSource modelDataSource
     ) async
 {
   var response = await modelDataSource.getModelFromLocalDatabaseForOneEntryDataSource();
   if (response.isSuccessResponse) {
     baseViewModel.setModelDomain(
         response.getData.toBaseModelDomain(),
         EnumBaseModelDomainVM.getModelFromLocalDatabaseForOneEntry
     );
     return Response.success(true);
   } else {
     return Response.exception(response.getException);
   }
 }

 static Future<Response<bool,BaseException>> insertModelToLocalDatabaseForOneEntryThereIsParameterFVM(
     BaseViewModel baseViewModel, 
     ModelLocalDatabaseForOneEntryDataSource modelDataSource,
      ) async
 {
   var response = await modelDataSource
       .insertModelToLocalDatabaseForOneEntryThereIsParameterDataSource(baseViewModel
         .getModelDomain(EnumBaseModelDomainVM.insertModelToLocalDatabaseForOneEntryThereIsParameter)
         .toBaseModelLocalDatabase()
      );
   if(response.isSuccessResponse) {
     return Response.success(true);
   } else {
     return Response.exception(response.getException);
   }
 }

 static Future<Response<bool,BaseException>> insertModelToLocalDatabaseForOneEntryThereIsParameterFVMVariantTwo(
     BaseModelDomain baseModelDomain,
     ModelLocalDatabaseForOneEntryDataSource modelDataSource,
     ) async
 {
   var response = await modelDataSource
       .insertModelToLocalDatabaseForOneEntryThereIsParameterDataSource(baseModelDomain.toBaseModelLocalDatabase()
   );
   if(response.isSuccessResponse) {
     return Response.success(true);
   } else {
     return Response.exception(response.getException);
   }
 }

 static Future<Response<bool, BaseException>> deleteModelToLocalDatabaseForOneEntryFVM(
      ModelLocalDatabaseForOneEntryDataSource modelDataSource,
      ) async
 {
   var response = await modelDataSource.deleteModelToLocalDatabaseForOneEntryDataSource();
   if(response.isSuccessResponse) {
     return Response.success(true);
   } else {
     return Response.exception(response.getException);
   }
  }
}