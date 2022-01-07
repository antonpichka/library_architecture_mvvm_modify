import 'package:library_architecture_mvvm_modify/base_exception/local_exception.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_domain_model.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_notification_model.dart';
import 'package:library_architecture_mvvm_modify/response.dart';

abstract class ModelNotificationDataSource<T extends BaseNotificationModel,
                                          Y extends BaseDomainModel>
{
  Future<Response<bool,LocalException>> pushNotificationToZonedScheduleThereIsParameterDataSource(T model);
  Future<Response<bool,LocalException>> pushNotificationToShowThereIsParameterDataSource(T model);
  Future<Response<bool,LocalException>> cancelNotificationThereIsParameterDataSource(Y model);
}