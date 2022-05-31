import 'package:library_architecture_mvvm_modify/base_model/base_model_domain.dart';

class BoolDomain extends BaseModelDomain {
  bool field;

  BoolDomain(this.field) : super('');

  @override
  BoolDomain cloneObject() {
    return BoolDomain(field);
  }

  static BoolDomain get getDefaultBoolDomain => BoolDomain(
      false
  );
}