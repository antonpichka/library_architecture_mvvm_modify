import 'package:library_architecture_mvvm_modify/ability_to_clone.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_list_model/base_list_model_domain.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_model_domain.dart';
import 'package:library_architecture_mvvm_modify/interface_check_inputs_data_by_user_and_calculate_before_function_view_model/provider_base_list_model_domain_cidbuacbfvm.dart';
import 'package:library_architecture_mvvm_modify/response_generic_bool_and_domain_exception.dart';

abstract class DeleteListModelToLNDatabaseThereIsParameterUsedProviderBaseListModelDomainCIDBUACBFVM<T extends BaseListModelDomain>
    implements ProviderBaseListModelDomainCIDBUACBFVM<T>,AbilityToClone<DeleteListModelToLNDatabaseThereIsParameterUsedProviderBaseListModelDomainCIDBUACBFVM>
{
  ResponseGenericBoolAndDomainException deleteListModelToLNDatabaseThereIsParameterCIDBUACBFVM(List<BaseModelDomain> list);
}