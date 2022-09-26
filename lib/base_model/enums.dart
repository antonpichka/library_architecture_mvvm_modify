import 'package:library_architecture_mvvm_modify/base_model/base_model.dart';

enum EnumsDefault {
  zero
}

class Enums extends BaseModel {
  Enum field;

  Enums(this.field) : super('');

  static Enums get getDefaultEnums => Enums(EnumsDefault.zero);
}