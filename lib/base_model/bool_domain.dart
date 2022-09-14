import 'package:library_architecture_mvvm_modify/base_model/base_model_domain.dart';

class BoolDomain extends BaseModelDomain {
  bool isField;

  BoolDomain(this.isField) : super('');

  bool isNotFieldParameterIsField() {
    return !isField;
  }

  static BoolDomain get getDefaultBoolDomain => BoolDomain(
      false
  );
}