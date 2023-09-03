import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';

base class Strings extends BaseModel {
  final String field;

  Strings(this.field) : super(field.toString());

  @override
  Strings get getCloneModel => Strings(field);

  @override
  String toString() {
    return field;
  }
}
