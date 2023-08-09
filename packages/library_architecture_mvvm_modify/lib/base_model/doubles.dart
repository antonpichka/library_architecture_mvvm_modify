import 'package:library_architecture_mvvm_modify/base_model/base_model.dart';

base class Doubles extends BaseModel {
  double? field;

  Doubles.success(this.field) : super.success(field.toString());
  Doubles.exception(super.exception) : super.exception();
}
