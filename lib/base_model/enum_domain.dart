import 'package:library_architecture_mvvm_modify/base_model/base_model_domain.dart';

enum DefaultEnumDomain {
  zero
}

class EnumDomain extends BaseModelDomain {
  Enum field;

  EnumDomain(this.field) : super('');

  static EnumDomain get getDefaultEnumDomain => EnumDomain(
      DefaultEnumDomain.zero
  );
}