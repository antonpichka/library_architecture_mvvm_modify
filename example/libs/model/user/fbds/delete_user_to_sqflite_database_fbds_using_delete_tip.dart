import 'package:library_architecture_mvvm_modify/abstract_classes_function_before_data_source/delete_model_to_named_database_fbds.dart';
import 'package:library_architecture_mvvm_modify/response_generic_bool_and_domain_exception.dart';
import '../user.dart';

class DeleteUserToSqfliteDatabaseFBDSUsingDeleteTIP
    extends DeleteModelToNamedDatabaseFBDS<User>
{
  @override
  ResponseGenericBoolAndDomainException deleteModelToNamedDatabase(
      User model,
      List<User> listModelForCheck)
  {
    return model.deleteUserToSqfliteDatabaseFBDSUsingDeleteTIP();
  }
}