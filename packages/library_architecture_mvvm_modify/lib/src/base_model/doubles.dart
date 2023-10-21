import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

@immutable
base class Doubles extends BaseModel {
  final double field;

  const Doubles(this.field) : super("$field");

  @override
  Doubles get getClone => Doubles(field);

  @override
  String toString() {
    return "$field";
  }
}
