
import 'package:library_architecture_mvvm_modify/base_data_source/notification_model_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_exception/local_exception.dart';
import 'package:library_architecture_mvvm_modify/base_response/response.dart';
import 'package:library_architecture_mvvm_modify/base_view_model/view_model_constants.dart';

class NotificationModelViewModel {
  static Future<Response<String,LocalException>> pushNotificationToZonedSchedule(
      NotificationModelDataSource notificationModelDataSource,
      dynamic model) async
  {
    try {
      var response = await notificationModelDataSource
          .pushNotificationToZonedSchedule(model);
      
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

  static Future<Response<String,LocalException>> pushNotificationToShow(
      NotificationModelDataSource notificationModelDataSource,
      dynamic model) async
  {
    try {
      var response = await notificationModelDataSource
          .pushNotificationToShow(model);

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

  static Future<Response<String,LocalException>> cancelNotification(
      NotificationModelDataSource notificationModelDataSource,
      dynamic model) async
  {
    try {
      var response = await notificationModelDataSource
          .cancelNotification(model);

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