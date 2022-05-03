import 'package:library_architecture_mvvm_modify/ability_to_clone.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_list_model/base_list_model_domain.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_list_model/base_list_model_named_database.dart';
import 'package:library_architecture_mvvm_modify/interface_converters_to_named_model/provider_base_list_model_domain_ctmlorn.dart';

abstract class ConverterToBaseListModelNamedDatabase<T extends BaseListModelDomain>
    implements ProviderBaseListModelDomainCTMLOrN<T>,AbilityToClone<ConverterToBaseListModelNamedDatabase>
{
  BaseListModelNamedDatabase toBaseListModelNamedDatabase();
}