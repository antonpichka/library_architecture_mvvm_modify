import 'package:library_architecture_mvvm_modify/base_model/base_model.dart';

base class Doubles extends BaseModel {
  final double? field;

  Doubles.success(this.field) : super.success(field.toString());
  Doubles.exception(super.exception)
      : field = null,
        super.exception();
}
