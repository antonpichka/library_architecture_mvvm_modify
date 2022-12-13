import 'package:library_architecture_mvvm_modify/base_model/base_model.dart';
import 'package:flutter/foundation.dart';

enum EnumsDefault {
  zero
}

class Enums
    extends BaseModel
{
  Enum _field;

  Enums.success(this._field) : super.success(_field.toString());
  Enums.exception(super.exception) : _field = EnumsDefault.zero,super.exception();
  Enums.successForFBDS() : _field = EnumsDefault.zero,super.successForFBDS();
  Enums.exceptionForFBDS(super.exception) : _field = EnumsDefault.zero,super.exceptionForFBDS();

  @nonVirtual
  Enum get getParameterField => _field;
  String get getOneParametersNamedForNamedWidgetOrView => _field.toString();

  @nonVirtual
  set setParameterField(Enum field) => _field = field;
}