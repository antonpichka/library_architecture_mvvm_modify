
import 'package:library_architecture_mvvm_modify/base_exception/local_exception.dart';
import 'package:library_architecture_mvvm_modify/base_type_parameter/base_type_parameter.dart';
import 'package:library_architecture_mvvm_modify/response.dart';

abstract class ModelNotificationDataSource<T,
                                           Y extends BaseTypeParameter> {
  Future<Response<bool,LocalException>> pushNotificationToZonedScheduleThereIsParameterDataSource(T model);
  Future<Response<bool,LocalException>> pushNotificationToShowThereIsParameterDataSource(T model);
  Future<Response<bool,LocalException>> cancelNotificationThereIsParameterDataSource(Y type);
}