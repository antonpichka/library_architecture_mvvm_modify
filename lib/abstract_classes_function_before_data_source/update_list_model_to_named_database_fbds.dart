import 'package:library_architecture_mvvm_modify/base_model/base_list_model/base_list_model.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_model.dart';
import 'package:library_architecture_mvvm_modify/response_generic_bool_and_domain_exception.dart';

abstract class UpdateListModelToNamedDatabaseFBDS<T extends BaseModel,Y extends BaseListModel<T>>
{
  UpdateListModelToNamedDatabaseFBDS();

  ResponseGenericBoolAndDomainException updateListModelToNamedDatabase(
      Y listModel,
      List<T> listModelForCheck);
}