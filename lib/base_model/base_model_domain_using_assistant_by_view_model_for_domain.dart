import 'package:library_architecture_mvvm_modify/base_model/base_model_assistant_by_view_model_for_domain.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_model_domain.dart';

abstract class BaseModelDomainUsingAssistantByViewModelForDomain<T extends BaseModelAssistantByViewModelForDomain>
    extends BaseModelDomain
{
  T modelAssistantByViewModelForDomain;

  BaseModelDomainUsingAssistantByViewModelForDomain(String uniqueId) : super(uniqueId);
}