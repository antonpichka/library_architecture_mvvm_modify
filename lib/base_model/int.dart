import 'package:library_architecture_mvvm_modify/base_model/base_model.dart';

class Int
    extends BaseModel
{
  int field;

  Int(this.field) : super('');

  static Int get getDefaultInt => Int(0);
}