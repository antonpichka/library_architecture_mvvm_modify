
import 'package:library_architecture_mvvm_modify/base_exception/local_exception.dart';
import 'package:library_architecture_mvvm_modify/response.dart';

abstract class NotificationModelFVM {
  Future<Response<String,LocalException>> pushNotificationToZonedScheduleFVM();
  Future<Response<String,LocalException>> pushNotificationToShowFVM();
  Future<Response<String,LocalException>> cancelNotificationFVM();
}