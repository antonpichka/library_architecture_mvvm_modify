import 'package:library_architecture_mvvm_modify/base_model/base_model.dart';
import 'package:flutter/foundation.dart';

class Bool
    extends BaseModel
{
  @protected
  bool isField;

  Bool.success(this.isField) : super.success(isField.toString());
  Bool.exception(super.exception) : isField = false,super.exception();
  Bool.successForFBDS() : isField = false,super.successForFBDS();
  Bool.exceptionForFBDS(super.exception) : isField = false,super.exceptionForFBDS();

  @nonVirtual
  bool get getParameterIsField => isField;
  String get getOneParametersNamedForNamedWidgetOrView => isField.toString();

  @nonVirtual
  set setParameterIsField(bool isField) => this.isField = isField;
}