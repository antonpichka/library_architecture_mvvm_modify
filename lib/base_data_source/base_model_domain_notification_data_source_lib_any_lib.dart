import 'package:library_architecture_mvvm_modify/base_exception/local_exception.dart';
import 'package:library_architecture_mvvm_modify/response.dart';

abstract class BaseModelDomainNotificationDataSourceLibAnyLib {

  Future<Response<bool, LocalException>> baseCancelNotificationDataSource(
      Future<void> methodCancelNotification) async
  {
    try {
      await methodCancelNotification;
      return Response.success(true);
    } on Exception catch (e) {
      return Response.exception(LocalException(e.runtimeType.toString(),e.toString()));
    }
  }

  Future<Response<bool, LocalException>> basePushNotificationToShowDataSource(
      Future<void> methodPushNotificationToShow) async
  {
    try {
      await methodPushNotificationToShow;
      return Response.success(true);
    } on Exception catch (e) {
      return Response.exception(LocalException(e.runtimeType.toString(),e.toString()));
    }
  }

  Future<Response<bool, LocalException>> basePushNotificationToZonedScheduleDataSource(
      Future<void> methodPushNotificationToZonedSchedule) async
  {
    try {
      await methodPushNotificationToZonedSchedule;
      return Response.success(true);
    } on Exception catch (e) {
      return Response.exception(LocalException(e.runtimeType.toString(),e.toString()));
    }
  }

}