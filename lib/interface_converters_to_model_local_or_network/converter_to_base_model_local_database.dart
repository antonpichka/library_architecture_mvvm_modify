import 'package:library_architecture_mvvm_modify/ability_to_clone.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_model_domain.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_model_local_database.dart';
import 'package:library_architecture_mvvm_modify/interface_converters_to_model_local_or_network/provider_base_model_domain_ctmlorn.dart';

abstract class ConverterToBaseModelLocalDatabase <T extends BaseModelDomain>
    implements ProviderBaseModelDomainCTMLOrN<T>,AbilityToClone<ConverterToBaseModelLocalDatabase>
{
  BaseModelLocalDatabase toBaseModelLocalDatabase();
}