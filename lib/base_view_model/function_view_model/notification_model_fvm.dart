
import 'package:library_architecture_mvvm_modify/base_exception/local_exception.dart';
import 'package:library_architecture_mvvm_modify/base_response/response.dart';

abstract class NotificationModelFVM {
  Future<Response<String,LocalException>> pushNotificationToZonedSchedule();
  Future<Response<String,LocalException>> pushNotificationToShow();
  Future<Response<String,LocalException>> cancelNotification();
}