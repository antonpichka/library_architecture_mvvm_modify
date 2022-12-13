import 'package:library_architecture_mvvm_modify/base_model/base_model.dart';
import 'package:flutter/foundation.dart';

class Double
    extends BaseModel
{
  double _field;

  Double.success(this._field) : super.success(_field.toString());
  Double.exception(super.exception) : _field = 0.0,super.exception();
  Double.successForFBDS() : _field = 0.0,super.successForFBDS();
  Double.exceptionForFBDS(super.exception) : _field = 0.0,super.exceptionForFBDS();

  @nonVirtual
  double get getParameterField => _field;
  String get getOneParametersNamedForNamedWidgetOrView => _field.toString();

  @nonVirtual
  set setParameterField(double field) => _field = field;
  void setOneParametersNamedForNamedWidgetOrView() =>  _field = (_field + 1);
  void setTwoParametersNamedForNamedWidgetOrView() =>  _field = (_field - 1);
}