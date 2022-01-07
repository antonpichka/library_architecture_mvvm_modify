import 'package:library_architecture_mvvm_modify/base_model/base_notification_model.dart';

class BaseNotificationScheduleModel extends BaseNotificationModel {
  int scheduledTime;

  set setScheduledTime(int scheduledTime) {
    this.scheduledTime = scheduledTime;
  }
}