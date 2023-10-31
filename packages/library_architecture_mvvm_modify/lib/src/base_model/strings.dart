import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

@immutable
base class Strings extends BaseModel {
  final String field;

  const Strings(this.field) : super(field);

  @override
  Strings get getClone => Strings(field);

  @override
  String toString() {
    return "Strings(field: $field)";
  }
}
