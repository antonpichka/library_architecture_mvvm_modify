import 'package:library_architecture_mvvm_modify/base_model/base_model.dart';

base class Ints extends BaseModel {
  int? field;

  Ints.success(this.field) : super.success(field.toString());
  Ints.exception(super.exception) : super.exception();
}
