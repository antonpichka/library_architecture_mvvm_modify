import 'package:library_architecture_mvvm_modify/base_model/base_list_model/base_list_model_domain.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_list_model/base_list_model_named_database.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_model_domain.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_model_named_database.dart';

abstract class ConverterToBaseListModelNamedDatabase<T extends BaseListModelDomain<BaseModelDomain>,Y extends BaseListModelNamedDatabase<T,BaseModelNamedDatabase>>
{
  ConverterToBaseListModelNamedDatabase();

  Y toBaseListModelNamedDatabase(T listModelDomain);
}