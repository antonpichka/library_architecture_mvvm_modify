import 'package:library_architecture_mvvm_modify/base_model/base_list_model/base_list_model_domain.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_model_domain.dart';
import 'package:library_architecture_mvvm_modify/interface_check_before_function_view_model/provider_base_list_model_domain_cbfvm.dart';
import 'package:library_architecture_mvvm_modify/response_generic_bool_and_domain_exception.dart';

abstract class InsertListModelToLNDatabaseThereIsParameterUsedProviderBaseListModelDomainCBFVM<T extends BaseListModelDomain>
    implements ProviderBaseListModelDomainCBFVM<T>
{
  ResponseGenericBoolAndDomainException insertListModelToLNDatabaseThereIsParameterCBFVM(List<BaseModelDomain> list);
}