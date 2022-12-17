import 'package:library_architecture_mvvm_modify/base_model/base_model.dart';
import 'package:flutter/foundation.dart';

enum EnumsDefault {
  zero
}

class Enums
    extends BaseModel
{
  @protected
  Enum field;

  Enums.success(this.field) : super.success(field.toString());
  Enums.exception(super.exception) : field = EnumsDefault.zero,super.exception();
  Enums.successForFBDS() : field = EnumsDefault.zero,super.successForFBDS();
  Enums.exceptionForFBDS(super.exception) : field = EnumsDefault.zero,super.exceptionForFBDS();

  @nonVirtual
  Enum get getParameterField => field;
  String get getOneParametersNamedForNamedWidgetOrView => field.toString();

  @nonVirtual
  set setParameterField(Enum field) => this.field = field;
}