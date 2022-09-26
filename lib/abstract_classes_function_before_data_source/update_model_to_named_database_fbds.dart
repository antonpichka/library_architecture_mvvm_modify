import 'package:library_architecture_mvvm_modify/base_model/base_model.dart';
import 'package:library_architecture_mvvm_modify/response_generic_bool_and_domain_exception.dart';

abstract class UpdateModelToNamedDatabaseFBDS<T extends BaseModel>
{
  UpdateModelToNamedDatabaseFBDS();

  ResponseGenericBoolAndDomainException updateModelToNamedDatabase(
      T model,
      List<T> listModelForCheck);
}