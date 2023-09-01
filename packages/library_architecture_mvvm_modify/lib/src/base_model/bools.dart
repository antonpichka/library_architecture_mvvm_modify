import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';

base class Bools extends BaseModel {
  final bool? isField;

  Bools.success(this.isField) : super.success(isField.toString());
  Bools.exception(super.exception)
      : isField = null,
        super.exception();

  @override
  Bools get getCloneModel => Bools.success(isField);

  @override
  String toString() {
    return "$isField";
  }
}
