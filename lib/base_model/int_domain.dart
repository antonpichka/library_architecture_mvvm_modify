import 'package:library_architecture_mvvm_modify/base_model/base_model_domain.dart';

class IntDomain extends BaseModelDomain<IntDomain> {
  int field;

  IntDomain(this.field) : super('');

  @override
  IntDomain cloneObject() {
    return IntDomain(field);
  }

  static IntDomain get getDefaultIntDomain => IntDomain(
      0
  );
}