import 'package:library_architecture_mvvm_modify/base_model/base_model_domain.dart';

class BaseModelDomainNotification {
  BaseModelDomain baseDomainModel;
  String title;
  String body;

  set setBaseDomainModel(BaseModelDomain baseDomainModel) {
    this.baseDomainModel = baseDomainModel;
  }

  set setTitle(String title) {
    this.title = title;
  }

  set setBody(String body) {
    this.body = body;
  }

}