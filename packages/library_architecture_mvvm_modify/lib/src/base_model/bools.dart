import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

@immutable
base class Bools extends BaseModel {
  final bool isField;

  const Bools(this.isField) : super("$isField");

  @override
  Bools get getClone => Bools(isField);

  @override
  String toString() {
    return "Bools(isField: $isField)";
  }
}
