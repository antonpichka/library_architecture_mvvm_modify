
import 'package:library_architecture_mvvm_modify/base_data_source/interface_data_source/model_domain_notification_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_exception/local_exception.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_model_domain.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_model_domain_notification.dart';
import 'package:library_architecture_mvvm_modify/response.dart';
import 'package:library_architecture_mvvm_modify/base_view_model/constants_view_model.dart';

/* USING TO VIEW_MODEL CLASSES */
class ReadyModelDomainNotificationFVM
{
  static Future<Response<String,LocalException>> pushNotificationToZonedScheduleThereIsParameterFVM(
      ModelDomainNotificationDataSource notificationModelDataSource,
      BaseModelDomainNotification model) async
  {
    try {
      var response = await notificationModelDataSource
          .pushNotificationToZonedScheduleThereIsParameterDataSource(model);
      if(response.isSuccessResponse) {
        return Response.success(CONST_SUCCESS);
      } else {
        return Response.exception(response.getException);
      }
    } catch (e) {
      return Response.exception(LocalException(e.runtimeType.toString(),e.toString()));
    }
  }

  static Future<Response<String,LocalException>> pushNotificationToShowThereIsParameterFVM(
      ModelDomainNotificationDataSource notificationModelDataSource,
      BaseModelDomainNotification model) async
  {
    try {
      var response = await notificationModelDataSource
          .pushNotificationToShowThereIsParameterDataSource(model);
      if(response.isSuccessResponse) {
        return Response.success(CONST_SUCCESS);
      } else {
        return Response.exception(response.getException);
      }
    } catch (e) {
      return Response.exception(LocalException(e.runtimeType.toString(),e.toString()));
    }
  }

  static Future<Response<String,LocalException>> cancelNotificationThereIsParameterFVM(
      ModelDomainNotificationDataSource notificationModelDataSource,
      BaseModelDomain model) async
  {
    try {
      var response = await notificationModelDataSource
          .cancelNotificationThereIsParameterDataSource(
            model
       );
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