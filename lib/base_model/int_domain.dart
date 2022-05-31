import 'package:library_architecture_mvvm_modify/base_model/base_model_domain.dart';

class IntDomain extends BaseModelDomain {
  int field;

  IntDomain(this.field) : super('');

  static IntDomain get getDefaultIntDomain => IntDomain(
      0
  );
}