
import 'package:library_architecture_mvvm_modify/base_data_source/interface_data_source/notification_model_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_exception/local_exception.dart';
import 'package:library_architecture_mvvm_modify/response.dart';
import 'package:library_architecture_mvvm_modify/base_view_model/constants_view_model.dart';

class ReadyNotificationModelFVM {
  static Future<Response<String,LocalException>> pushNotificationToZonedSchedule(
      NotificationModelDataSource notificationModelDataSource,
      dynamic model) async
  {
    try {
      var response = await notificationModelDataSource
          .pushNotificationToZonedScheduleDataSource(model);
      
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
          .pushNotificationToShowDataSource(model);

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
          .cancelNotificationDataSource(model);

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