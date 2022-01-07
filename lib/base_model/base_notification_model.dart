import 'package:library_architecture_mvvm_modify/base_model/base_domain_model.dart';

class BaseNotificationModel {
  BaseDomainModel baseDomainModel;
  String title;
  String body;

  set setBaseDomainModel(BaseDomainModel baseDomainModel) {
    this.baseDomainModel = baseDomainModel;
  }

  set setTitle(String title) {
    this.title = title;
  }

  set setBody(String body) {
    this.body = body;
  }

}