import 'package:library_architecture_mvvm_modify/base_model/base_model.dart';

class Bool
    extends BaseModel {
  bool isField;

  Bool(this.isField) : super('');

  bool isNotFieldParameterIsField() {
    return !isField;
  }

  static Bool get getDefaultBool => Bool(false);
}