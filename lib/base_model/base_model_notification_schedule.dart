import 'package:library_architecture_mvvm_modify/base_model/base_model_notification.dart';

class BaseModelNotificationSchedule extends BaseModelNotification {
  int scheduledTime;

  set setScheduledTime(int scheduledTime) {
    this.scheduledTime = scheduledTime;
  }
}