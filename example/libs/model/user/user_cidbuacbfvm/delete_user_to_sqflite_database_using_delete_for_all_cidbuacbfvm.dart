import 'package:library_architecture_mvvm_modify/abstract_classes_check_inputs_data_by_user_and_calculate_before_function_view_model/delete_model_to_named_database_there_is_parameter_cidbuacbfvm.dart';
import 'package:library_architecture_mvvm_modify/response_generic_bool_and_domain_exception.dart';
import '../user_domain.dart';

class DeleteUserToSqfliteDatabaseUsingDeleteForAllCIDBUACBFVM extends DeleteModelToNamedDatabaseThereIsParameterCIDBUACBFVM<UserDomain>  {
  @override
  ResponseGenericBoolAndDomainException deleteModelToNamedDatabaseThereIsParameterCIDBUACBFVM(UserDomain modelDomain, List<UserDomain> list) {
    return modelDomain.deleteUserToSqfliteDatabaseUsingDeleteForAllDeleteDataCIDBUACBFVM();
  }
}