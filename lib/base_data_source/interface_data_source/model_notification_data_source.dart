import 'package:library_architecture_mvvm_modify/base_exception/local_exception.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_model_domain.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_model_domain_notification.dart';
import 'package:library_architecture_mvvm_modify/response.dart';

abstract class ModelNotificationDataSource<T extends BaseModelDomainNotification,
                                          Y extends BaseModelDomain>
{
  Future<Response<bool,LocalException>> pushNotificationToZonedScheduleThereIsParameterDataSource(T model);
  Future<Response<bool,LocalException>> pushNotificationToShowThereIsParameterDataSource(T model);
  Future<Response<bool,LocalException>> cancelNotificationThereIsParameterDataSource(Y model);
}