import 'package:library_architecture_mvvm_modify/base_model/base_model.dart';

class Bool
    extends BaseModel
{
  bool isField;

  Bool.success(this.isField) : super.success(isField.toString());
  Bool.exception(super.exception) : isField = false,super.exception();
  Bool.successForFBDS() : isField = false,super.successForFBDS();
  Bool.exceptionForFBDS(super.exception) : isField = false,super.exceptionForFBDS();

  String get getOneParametersNamedForNamedWidgetOrView => isField.toString();
}