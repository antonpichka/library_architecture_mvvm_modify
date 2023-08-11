import 'package:library_architecture_mvvm_modify/base_model/base_model.dart';

base class Bools extends BaseModel {
  final bool? isField;

  Bools.success(this.isField) : super.success(isField.toString());
  Bools.exception(super.exception)
      : isField = null,
        super.exception();
}
