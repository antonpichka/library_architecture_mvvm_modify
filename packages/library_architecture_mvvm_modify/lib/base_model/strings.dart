import 'package:library_architecture_mvvm_modify/base_model/base_model.dart';
import 'package:flutter/foundation.dart';

class Strings
    extends BaseModel
{
  @protected
  String field;

  Strings.success(this.field) : super.success(field.toString());
  Strings.exception(super.exception) : field = "",super.exception();
  Strings.successForFBDS() : field = "",super.successForFBDS();
  Strings.exceptionForFBDS(super.exception) : field = "",super.exceptionForFBDS();

  @nonVirtual
  String get getParameterField => field;
  String get getOneParametersNamedForNamedWidgetOrView => field.toString();

  @nonVirtual
  set setParameterField(String field) => this.field = field;
}