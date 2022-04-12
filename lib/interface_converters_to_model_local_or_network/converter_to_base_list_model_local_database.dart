import 'package:library_architecture_mvvm_modify/ability_to_clone.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_list_model/base_list_model_domain.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_list_model/base_list_model_local_database.dart';
import 'package:library_architecture_mvvm_modify/interface_converters_to_model_local_or_network/provider_base_list_model_domain_ctmlorn.dart';

abstract class ConverterToBaseListModelLocalDatabase<T extends BaseListModelDomain>
    implements ProviderBaseListModelDomainCTMLOrN<T>,AbilityToClone<ConverterToBaseListModelLocalDatabase>
{
  BaseListModelLocalDatabase toBaseListModelLocalDatabase();
}