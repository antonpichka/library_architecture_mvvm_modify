import 'package:library_architecture_mvvm_modify/base_model/base_model.dart';
import 'package:flutter/foundation.dart';

class Double
    extends BaseModel
{
  @protected
  double field;

  Double.success(this.field) : super.success(field.toString());
  Double.exception(super.exception) : field = 0.0,super.exception();
  Double.successForFBDS() : field = 0.0,super.successForFBDS();
  Double.exceptionForFBDS(super.exception) : field = 0.0,super.exceptionForFBDS();

  @nonVirtual
  double get getParameterField => field;
  String get getOneParametersNamedForNamedWidgetOrView => field.toString();

  @nonVirtual
  set setParameterField(double field) => this.field = field;
  void setOneParametersNamedForNamedWidgetOrView() =>  field = (field + 1);
  void setTwoParametersNamedForNamedWidgetOrView() =>  field = (field - 1);
}