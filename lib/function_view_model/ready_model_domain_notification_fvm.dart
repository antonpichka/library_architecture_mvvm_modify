
import 'package:library_architecture_mvvm_modify/base_data_source/interface_data_source/model_domain_notification_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_exception/local_exception.dart';
import 'package:library_architecture_mvvm_modify/base_view_model/base_view_model.dart';
import 'package:library_architecture_mvvm_modify/base_view_model/enum_base_model_domain_object_operation_view_model.dart';
import 'package:library_architecture_mvvm_modify/response.dart';

/* USING TO VIEW_MODEL CLASSES */
class ReadyModelDomainNotificationFVM
{
  static Future<Response<bool,LocalException>> pushNotificationToZonedScheduleThereIsParameterFVM(
      BaseViewModel baseViewModel,
      ModelDomainNotificationDataSource notificationModelDataSource) async
  {
      var response = await notificationModelDataSource
          .pushNotificationToZonedScheduleThereIsParameterDataSource(
          baseViewModel
              .getModelDomain(EnumBaseModelDomainObjectOperationViewModel.pushNotificationToZonedScheduleThereIsParameter)
              .toBaseModelDomainNotification()
      );
      if(response.isSuccessResponse) {
        return Response.success(true);
      } else {
        return Response.exception(response.getException);
      }
  }

  static Future<Response<bool,LocalException>> pushNotificationToShowThereIsParameterFVM(
      BaseViewModel baseViewModel,
      ModelDomainNotificationDataSource notificationModelDataSource) async
  {
      var response = await notificationModelDataSource
          .pushNotificationToShowThereIsParameterDataSource(
          baseViewModel
              .getModelDomain(EnumBaseModelDomainObjectOperationViewModel.pushNotificationToShowThereIsParameter)
              .toBaseModelDomainNotification()
      );
      if(response.isSuccessResponse) {
        return Response.success(true);
      } else {
        return Response.exception(response.getException);
      }
  }

  static Future<Response<bool,LocalException>> cancelNotificationThereIsParameterFVM(
      BaseViewModel baseViewModel,
      ModelDomainNotificationDataSource notificationModelDataSource) async
  {
      var response = await notificationModelDataSource
          .cancelNotificationThereIsParameterDataSource(
          baseViewModel.getModelDomain(
              EnumBaseModelDomainObjectOperationViewModel.cancelNotificationThereIsParameter
          )
       );
      if(response.isSuccessResponse) {
        return Response.success(true);
      } else {
        return Response.exception(response.getException);
      }
  }
}