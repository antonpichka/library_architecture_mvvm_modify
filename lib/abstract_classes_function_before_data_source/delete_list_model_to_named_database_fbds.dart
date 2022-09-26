import 'package:library_architecture_mvvm_modify/base_model/base_list_model/base_list_model.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_model.dart';
import 'package:library_architecture_mvvm_modify/response_generic_bool_and_domain_exception.dart';

abstract class DeleteListModelToNamedDatabaseFBDS<T extends BaseModel,Y extends BaseListModel<T>>
{
  DeleteListModelToNamedDatabaseFBDS();

  ResponseGenericBoolAndDomainException deleteListModelToNamedDatabase(
      Y listModel,
      List<T> listModelForCheck);
}