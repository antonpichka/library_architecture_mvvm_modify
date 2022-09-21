import 'package:library_architecture_mvvm_modify/base_model/base_list_model/base_list_model_domain.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_model_domain.dart';
import 'package:library_architecture_mvvm_modify/response_generic_bool_and_domain_exception.dart';

abstract class InsertListModelToNamedDatabaseFBDS<T extends BaseModelDomain,Y extends BaseListModelDomain<T>>
{
  InsertListModelToNamedDatabaseFBDS();

  ResponseGenericBoolAndDomainException insertListModelToNamedDatabase(Y listModelDomain, List<T> listModelDomainForCheck);
}