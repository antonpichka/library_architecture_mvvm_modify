import 'package:library_architecture_mvvm_modify/base_model/base_model.dart';
import 'package:flutter/foundation.dart';

class Bool
    extends BaseModel
{
  bool _isField;

  Bool.success(this._isField) : super.success(_isField.toString());
  Bool.exception(super.exception) : _isField = false,super.exception();
  Bool.successForFBDS() : _isField = false,super.successForFBDS();
  Bool.exceptionForFBDS(super.exception) : _isField = false,super.exceptionForFBDS();

  @nonVirtual
  bool get getParameterIsField => _isField;
  String get getOneParametersNamedForNamedWidgetOrView => _isField.toString();

  @nonVirtual
  set setParameterIsField(bool isField) => _isField = isField;
}