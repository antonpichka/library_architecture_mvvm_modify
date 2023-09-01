import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';

base class Doubles extends BaseModel {
  final double? field;

  Doubles.success(this.field) : super.success(field.toString());
  Doubles.exception(super.exception)
      : field = null,
        super.exception();

  @override
  Doubles get getCloneModel => Doubles.success(field);

  @override
  String toString() {
    return "$field";
  }
}
