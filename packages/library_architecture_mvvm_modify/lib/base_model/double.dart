import 'package:library_architecture_mvvm_modify/base_model/base_model.dart';

/// An example of the extends of the "BaseModel" class, named Double
class Double extends BaseModel {
  double field;

  Double.success(this.field) : super.success(field.toString());
  Double.exception(super.exception) : field = 0.0,super.exception();
  Double.successForFBDS() : field = 0.0,super.successForFBDS();
  Double.exceptionForFBDS(super.exception) : field = 0.0,super.exceptionForFBDS();

  String get getOneParametersNamedForNamed => field.toString();

  void setOneParametersNamedForNamed() =>  field = (field + 1);
  void setTwoParametersNamedForNamed() =>  field = (field - 1);
}