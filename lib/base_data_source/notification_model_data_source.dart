
import 'package:library_architecture_mvvm_modify/base_exception/local_exception.dart';
import 'package:library_architecture_mvvm_modify/base_response/response.dart';

abstract class NotificationModelDataSource<T,Y> {
  Future<Response<bool,LocalException>> pushNotificationToZonedSchedule(T model);
  Future<Response<bool,LocalException>> pushNotificationToShow(T model);
  Future<Response<bool,LocalException>> cancelNotification(Y type);
}