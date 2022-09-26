import 'package:library_architecture_mvvm_modify/base_model/base_model.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_model_named_database.dart';

abstract class ConverterToBaseModelNamedDatabase<T extends BaseModel,Y extends BaseModelNamedDatabase<T>>
{
  ConverterToBaseModelNamedDatabase();

  Y toBaseModelNamedDatabase(T model);
}