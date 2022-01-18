import 'package:library_architecture_mvvm_modify/base_model/base_model_domain.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_model_domain_notification.dart';

abstract class BaseModelDomainExtForNotification extends BaseModelDomain {
  BaseModelDomainNotification toBaseModelDomainNotification();
}