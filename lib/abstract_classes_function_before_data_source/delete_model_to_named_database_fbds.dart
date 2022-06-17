import 'package:library_architecture_mvvm_modify/base_model/base_model_domain.dart';
import 'package:library_architecture_mvvm_modify/response_generic_bool_and_domain_exception.dart';

abstract class DeleteModelToNamedDatabaseFBDS<T extends BaseModelDomain>
{
  DeleteModelToNamedDatabaseFBDS();

  ResponseGenericBoolAndDomainException deleteModelToNamedDatabaseFBDS(T modelDomain, List<T> list);
}