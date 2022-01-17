
import 'package:library_architecture_mvvm_modify/base_exception/base_exception.dart';
import 'package:library_architecture_mvvm_modify/response.dart';

abstract class ModelDomainNotificationFVM {
  Future<Response<bool,BaseException>> pushNotificationToZonedScheduleFVM();
  Future<Response<bool,BaseException>> pushNotificationToShowFVM();
  Future<Response<bool,BaseException>> cancelNotificationFVM();
}