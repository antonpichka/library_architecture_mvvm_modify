import 'package:library_architecture_mvvm_modify/base_model/base_list_model/base_list_model_domain.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_model_domain.dart';
import 'package:library_architecture_mvvm_modify/response_generic_bool_and_domain_exception.dart';

abstract class DeleteListModelToNamedDatabaseFBDS<T extends BaseModelDomain,Y extends BaseListModelDomain>
{
  DeleteListModelToNamedDatabaseFBDS();

  ResponseGenericBoolAndDomainException deleteListModelToNamedDatabaseFBDS(Y listModelDomain, List<T> list);
}