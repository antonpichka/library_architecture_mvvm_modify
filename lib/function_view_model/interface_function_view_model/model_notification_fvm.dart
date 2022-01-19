
import 'package:library_architecture_mvvm_modify/base_exception/base_exception.dart';
import 'package:library_architecture_mvvm_modify/response.dart';

abstract class ModelNotificationFVM {
  Future<Response<bool,BaseException>> pushNotificationToZonedScheduleThereIsParameterFVM();
  Future<Response<bool,BaseException>> pushNotificationToShowThereIsParameterFVM();
  Future<Response<bool,BaseException>> cancelNotificationThereIsParameterFVM();
}