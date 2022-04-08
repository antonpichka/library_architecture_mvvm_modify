import 'package:library_architecture_mvvm_modify/base_model/base_assistant_for_model_domain.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_model_domain.dart';

abstract class BaseModelDomainUsingAssistantForModelDomain<T extends BaseAssistantForModelDomain>
    extends BaseModelDomain
{
  final T assistantForModelDomain;

  BaseModelDomainUsingAssistantForModelDomain(String uniqueId, this.assistantForModelDomain) : super(uniqueId);
}