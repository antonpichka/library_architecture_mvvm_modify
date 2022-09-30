import 'package:library_architecture_mvvm_modify/base_model/base_model.dart';

abstract class BaseModelForStream<EnumForWidgetSelection extends Enum>
    extends BaseModel
{
  BaseModelForStream(String uniqueId) : super(uniqueId);

  EnumForWidgetSelection get getEnumForWidgetSelection;
}