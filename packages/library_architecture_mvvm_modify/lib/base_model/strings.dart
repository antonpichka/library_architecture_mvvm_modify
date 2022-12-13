import 'package:library_architecture_mvvm_modify/base_model/base_model.dart';
import 'package:flutter/foundation.dart';

class Strings
    extends BaseModel
{
  String _field;

  Strings.success(this._field) : super.success(_field.toString());
  Strings.exception(super.exception) : _field = "",super.exception();
  Strings.successForFBDS() : _field = "",super.successForFBDS();
  Strings.exceptionForFBDS(super.exception) : _field = "",super.exceptionForFBDS();

  @nonVirtual
  String get getParameterField => _field;
  String get getOneParametersNamedForNamedWidgetOrView => _field.toString();

  @nonVirtual
  set setParameterField(String field) => _field = field;
}