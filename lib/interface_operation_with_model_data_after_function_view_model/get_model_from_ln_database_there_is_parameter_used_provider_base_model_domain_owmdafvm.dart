
import 'package:library_architecture_mvvm_modify/ability_to_clone.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_model_domain.dart';
import 'package:library_architecture_mvvm_modify/interface_operation_with_model_data_after_function_view_model/provider_base_model_domain_owmdafvm.dart';

abstract class GetModelFromLNDatabaseThereIsParameterUsedProviderBaseModelDomainOWMDAFVM<T extends BaseModelDomain>
    implements ProviderBaseModelDomainOWMDAFVM<T>, AbilityToClone<GetModelFromLNDatabaseThereIsParameterUsedProviderBaseModelDomainOWMDAFVM>
{
  void callToMethodGetModelFromLNDatabaseThereIsParameterOWMDAFVM(bool isSuccess);
}