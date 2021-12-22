
import 'package:library_architecture_mvvm_modify/base_exception/local_exception.dart';
import 'package:library_architecture_mvvm_modify/base_response/response.dart';

abstract class NotificationModelDataSource<T> {
  Future<Response<bool,LocalException>> pushNotificationToZonedSchedule(T model);
  Future<Response<bool,LocalException>> pushNotificationToShow(T model);
  Future<Response<bool,LocalException>> cancelNotification(T model);
}