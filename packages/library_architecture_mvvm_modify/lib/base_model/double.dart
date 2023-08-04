import 'package:library_architecture_mvvm_modify/base_model/base_model.dart';

/// An example of the extends of the "BaseModel" class, named Double
base class Double extends BaseModel {
  double? field;

  Double.success(this.field) : super.success(field.toString());
  Double.exception(super.exception) : super.exception();
}
