import 'package:library_architecture_mvvm_modify/base_model/base_model.dart';

/// An example of the extends of the "BaseModel" class, named Int
base class Int extends BaseModel {
  int field;

  Int.success(this.field) : super.success(field.toString());
  Int.exception(super.exception)
      : field = 0,
        super.exception();
  Int.successForFBDS()
      : field = 0,
        super.successForFBDS();
  Int.exceptionForFBDS(super.exception)
      : field = 0,
        super.exceptionForFBDS();

  String get getOneParametersNamedForNamed => field.toString();

  void setOneParametersNamedForNamed() => field = (field + 1);
  void setTwoParametersNamedForNamed() => field = (field - 1);
}
