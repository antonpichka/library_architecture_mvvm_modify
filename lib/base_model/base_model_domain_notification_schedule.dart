import 'package:library_architecture_mvvm_modify/base_model/base_model_domain_notification.dart';

class BaseModelDomainNotificationSchedule extends BaseModelDomainNotification {
  int scheduledTime;

  set setScheduledTime(int scheduledTime) {
    this.scheduledTime = scheduledTime;
  }
}