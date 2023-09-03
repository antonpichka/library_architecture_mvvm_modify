import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

@immutable
base class Ints extends BaseModel {
  final int field;

  const Ints(this.field) : super("$field");

  @override
  Ints get getCloneModel => Ints(field);

  @override
  String toString() {
    return "$field";
  }
}
