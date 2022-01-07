
import 'package:library_architecture_mvvm_modify/base_data_source/interface_data_source/model_notification_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_exception/local_exception.dart';
import 'package:library_architecture_mvvm_modify/base_view_model/base_view_model.dart';
import 'package:library_architecture_mvvm_modify/response.dart';
import 'package:library_architecture_mvvm_modify/base_view_model/constants_view_model.dart';

/* USING TO VIEW_MODEL CLASSES */
class ReadyModelNotificationFVM
{
  static Future<Response<String,LocalException>> pushNotificationToZonedScheduleThereIsParameterFVM(
      ModelNotificationDataSource notificationModelDataSource,
      dynamic model) async
  {
    try {
      var response = await notificationModelDataSource
          .pushNotificationToZonedScheduleThereIsParameterDataSource(model);
      
      if(response.isSuccessResponse) {
        if(response.getData) {
          return Response.success(CONST_SUCCESS);
        } else {
          return Response.exception(LocalException(
              CONST_LOCAL_NOT_OPERATION_INSERT_OR_UPDATE_OR_DELETE_OR_NOTIFICATION_FAILURE,
              CONST_LOCAL_NOT_OPERATION_INSERT_OR_UPDATE_OR_DELETE_OR_NOTIFICATION_FAILURE)
          );
        }
      } else {
        return Response.exception(response.getException);
      }
    } on Exception catch (e) {
      return Response.exception(LocalException(e.runtimeType.toString(),e.toString()));
    }
  }

  static Future<Response<String,LocalException>> pushNotificationToShowThereIsParameterFVM(
      ModelNotificationDataSource notificationModelDataSource,
      dynamic model) async
  {
    try {
      var response = await notificationModelDataSource
          .pushNotificationToShowThereIsParameterDataSource(model);

      if(response.isSuccessResponse) {
        if(response.getData) {
          return Response.success(CONST_SUCCESS);
        } else {
          return Response.exception(LocalException(
              CONST_LOCAL_NOT_OPERATION_INSERT_OR_UPDATE_OR_DELETE_OR_NOTIFICATION_FAILURE,
              CONST_LOCAL_NOT_OPERATION_INSERT_OR_UPDATE_OR_DELETE_OR_NOTIFICATION_FAILURE)
          );
        }
      } else {
        return Response.exception(response.getException);
      }
    } on Exception catch (e) {
      return Response.exception(LocalException(e.runtimeType.toString(),e.toString()));
    }
  }

  static Future<Response<String,LocalException>> cancelNotificationThereIsParameterFVM(
      BaseViewModel baseViewModel,
      ModelNotificationDataSource notificationModelDataSource) async
  {
    try {
      var response = await notificationModelDataSource
          .cancelNotificationThereIsParameterDataSource(
            baseViewModel.getBaseTypeParameterForCancelNotificationThereIsParameterFVM
       );
      if(response.isSuccessResponse) {
        if(response.getData) {
          return Response.success(CONST_SUCCESS);
        } else {
          return Response.exception(LocalException(
              CONST_LOCAL_NOT_OPERATION_INSERT_OR_UPDATE_OR_DELETE_OR_NOTIFICATION_FAILURE,
              CONST_LOCAL_NOT_OPERATION_INSERT_OR_UPDATE_OR_DELETE_OR_NOTIFICATION_FAILURE)
          );
        }
      } else {
        return Response.exception(response.getException);
      }
    } on Exception catch (e) {
      return Response.exception(LocalException(e.runtimeType.toString(),e.toString()));
    }
  }
}