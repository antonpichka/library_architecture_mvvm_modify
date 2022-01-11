
import 'package:library_architecture_mvvm_modify/base_data_source/interface_data_source/model_local_database_for_one_entry_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_exception/base_exception.dart';
import 'package:library_architecture_mvvm_modify/base_exception/local_exception.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_model_local_database.dart';
import 'package:library_architecture_mvvm_modify/base_view_model/base_view_model.dart';
import 'package:library_architecture_mvvm_modify/response.dart';

/* USING TO VIEW_MODEL CLASSES */
class ReadyModelLocalDatabaseForOneEntryFVM
{
 static Future<Response<String,LocalException>> callToMethodGetModelFromLocalDatabaseForOneEntryAndUseTheSettersFVM(
     BaseViewModel baseViewModel,
     ModelLocalDatabaseForOneEntryDataSource modelDataSource
     ) async
 {
    try {
      var response = await modelDataSource
          .getModelFromLocalDatabaseForOneEntryDataSource();
      if (response.isSuccessResponse) {
        baseViewModel.setModelDomain(response.getData.toModelDomain(), operation);
        return Response.success(CONST_SUCCESS);
      } else {
        return Response.exception(response.getException);
      }
    } catch (e) {
      return Response.exception(LocalException(e.runtimeType.toString(),e.toString()));
    }
  }

 static Future<Response<String,BaseException>> insertModelToLocalDatabaseForOneEntryThereIsParameterFVM(
     BaseViewModel baseViewModel, 
     ModelLocalDatabaseForOneEntryDataSource modelDataSource,
      ) async {
    try {
      var response = await modelDataSource
          .insertModelToLocalDatabaseForOneEntryThereIsParameterDataSource(
          baseViewModel
              .getModelDomain(operation)
              .toModelLocalDatabase());
      if(response.isSuccessResponse) {
        return Response.success(CONST_SUCCESS);
      } else {
        return Response.exception(response.getException);
      }
    } catch (e) {
      return Response.exception(LocalException(e.runtimeType.toString(),e.toString()));
    }
  }

 static Future<Response<String, BaseException>> deleteModelToLocalDatabaseForOneEntryFVM(
      ModelLocalDatabaseForOneEntryDataSource modelDataSource,
      ) async {
    try {
      var response = await modelDataSource
          .deleteModelToLocalDatabaseForOneEntryDataSource();
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