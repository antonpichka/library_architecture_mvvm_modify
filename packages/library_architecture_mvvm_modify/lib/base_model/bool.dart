import 'package:library_architecture_mvvm_modify/base_model/base_model.dart';

/// An example of the extends of the "BaseModel" class, named Bool
base class Bool extends BaseModel {
  bool? isField;

  Bool.success(this.isField) : super.success(isField.toString());
  Bool.exception(super.exception) : super.exception();
}
