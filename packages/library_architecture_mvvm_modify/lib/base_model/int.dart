import 'package:library_architecture_mvvm_modify/base_model/base_model.dart';
import 'package:flutter/foundation.dart';

class Int
    extends BaseModel
{
  @protected
  int field;

  Int.success(this.field) : super.success(field.toString());
  Int.exception(super.exception) : field = 0,super.exception();
  Int.successForFBDS() : field = 0,super.successForFBDS();
  Int.exceptionForFBDS(super.exception) : field = 0,super.exceptionForFBDS();

  @nonVirtual
  int get getParameterField => field;
  String get getOneParametersNamedForNamedWidgetOrView => field.toString();

  @nonVirtual
  set setParameterField(int field) => this.field = field;
  void setOneParametersNamedForNamedWidgetOrView() =>  field = (field + 1);
  void setTwoParametersNamedForNamedWidgetOrView() =>  field = (field - 1);
}