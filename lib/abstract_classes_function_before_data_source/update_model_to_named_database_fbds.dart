import 'package:library_architecture_mvvm_modify/base_model/base_model_domain.dart';
import 'package:library_architecture_mvvm_modify/response_generic_bool_and_domain_exception.dart';

///  it is recommended to inherit these classes and not implementation.
///  Better more specialized classes than 1 generic
///
///  Example:
/// class DeleteUserToSqfliteDatabaseUsingDeleteForAllDeleteDataCIDBUACBFVM extends DeleteModelToNamedDatabaseThereIsParameterCIDBUACBFVM<UserDomain>  {
///    @override
///     ResponseGenericBoolAndDomainException deleteModelToNamedDatabaseThereIsParameterCIDBUACBFVM(UserDomain modelDomain, List<UserDomain> list) {
///       return modelDomain.deleteUserToSqfliteDatabaseUsingDeleteForAllDeleteDataCIDBUACBFVM();
///     }
///   }
///
abstract class UpdateModelToNamedDatabaseFBDS<T extends BaseModelDomain>
{
  UpdateModelToNamedDatabaseFBDS();

  ResponseGenericBoolAndDomainException updateModelToNamedDatabaseFBDS(T modelDomain,List<T> list);
}