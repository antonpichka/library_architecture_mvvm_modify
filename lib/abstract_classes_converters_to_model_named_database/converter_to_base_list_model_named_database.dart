import 'package:library_architecture_mvvm_modify/base_model/base_list_model/base_list_model_domain.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_list_model/base_list_model_named_database.dart';

abstract class ConverterToBaseListModelNamedDatabase<T extends BaseListModelDomain,Y extends BaseListModelNamedDatabase>
{
  ConverterToBaseListModelNamedDatabase();

  Y toBaseListModelNamedDatabase(T listModelDomain);
}