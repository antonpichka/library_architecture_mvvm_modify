import 'package:library_architecture_mvvm_modify/base_model/base_model.dart';

abstract class ModelAndEnumForWidgetSelection<T extends BaseModel,EnumForWidgetSelection extends Enum>
{
  ModelAndEnumForWidgetSelection();

  EnumForWidgetSelection enumForWidgetSelection(T model);
}