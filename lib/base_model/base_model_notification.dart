import 'package:library_architecture_mvvm_modify/base_model/base_model_domain.dart';

abstract class BaseModelNotification<T extends BaseModelDomain> {
  T baseModelDomain;
  String title;
  String body;

  BaseModelNotification(this.baseModelDomain,this.title,this.body);

  set setBaseModelDomain(BaseModelDomain baseDomainModel) {
    baseModelDomain = baseDomainModel;
  }

  set setTitle(String title) {
    this.title = title;
  }

  set setBody(String body) {
    this.body = body;
  }

}