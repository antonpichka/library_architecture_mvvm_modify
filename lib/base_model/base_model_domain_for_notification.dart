import 'package:library_architecture_mvvm_modify/base_model/base_model_domain.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_model_notification.dart';

abstract class BaseModelDomainForNotification extends BaseModelDomain {
  BaseModelDomainForNotification(String uniqueId) : super(uniqueId);

  BaseModelNotification toBaseModelNotification();
}