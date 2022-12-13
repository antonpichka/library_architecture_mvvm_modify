import 'package:library_architecture_mvvm_modify/base_model/base_model.dart';
import 'package:flutter/foundation.dart';

class Int
    extends BaseModel
{
  int _field;

  Int.success(this._field) : super.success(_field.toString());
  Int.exception(super.exception) : _field = 0,super.exception();
  Int.successForFBDS() : _field = 0,super.successForFBDS();
  Int.exceptionForFBDS(super.exception) : _field = 0,super.exceptionForFBDS();

  @nonVirtual
  int get getParameterField => _field;
  String get getOneParametersNamedForNamedWidgetOrView => _field.toString();

  @nonVirtual
  set setParameterField(int field) => _field = field;
  void setOneParametersNamedForNamedWidgetOrView() =>  _field = (_field + 1);
  void setTwoParametersNamedForNamedWidgetOrView() =>  _field = (_field - 1);
}