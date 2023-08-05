import 'package:library_architecture_mvvm_modify/base_model/base_model.dart';

base class Strings extends BaseModel {
  String? field;

  Strings.success(this.field) : super.success(field.toString());
  Strings.exception(super.exception) : super.exception();
}
