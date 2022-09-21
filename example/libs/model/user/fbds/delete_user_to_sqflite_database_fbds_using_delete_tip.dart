import 'package:library_architecture_mvvm_modify/abstract_classes_function_before_data_source/delete_model_to_named_database_fbds.dart';
import 'package:library_architecture_mvvm_modify/response_generic_bool_and_domain_exception.dart';
import '../user_domain.dart';

class DeleteUserToSqfliteDatabaseFBDSUsingDeleteTIP
    extends DeleteModelToNamedDatabaseFBDS<UserDomain>
{
  @override
  ResponseGenericBoolAndDomainException deleteModelToNamedDatabase(
      UserDomain modelDomain, List<UserDomain> list)
  {
    return modelDomain.deleteUserToSqfliteDatabaseFBDSUsingDeleteTIP();
  }
}