import 'package:library_architecture_mvvm_modify/base_model/base_model.dart';

base class Ints extends BaseModel {
  final int? field;

  Ints.success(this.field) : super.success(field.toString());
  Ints.exception(super.exception)
      : field = null,
        super.exception();

  @override
  Ints get getCloneModel => Ints.success(field);
}
