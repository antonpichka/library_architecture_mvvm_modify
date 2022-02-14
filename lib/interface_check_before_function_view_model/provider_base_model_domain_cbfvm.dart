import 'package:library_architecture_mvvm_modify/base_model/base_model_domain.dart';

abstract class ProviderBaseModelDomainCBFVM<T extends BaseModelDomain> {
  set setBaseModelDomain(T baseModel);
  T get getBaseModelDomain;
}