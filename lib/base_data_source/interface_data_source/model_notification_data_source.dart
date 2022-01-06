
import 'package:library_architecture_mvvm_modify/base_exception/local_exception.dart';
import 'package:library_architecture_mvvm_modify/response.dart';

abstract class ModelNotificationDataSource<T,Y> {
  Future<Response<bool,LocalException>> pushNotificationToZonedScheduleDataSource(T model);
  Future<Response<bool,LocalException>> pushNotificationToShowDataSource(T model);
  Future<Response<bool,LocalException>> cancelNotificationDataSource(Y type);
}