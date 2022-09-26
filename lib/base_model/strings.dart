import 'package:library_architecture_mvvm_modify/base_model/base_model.dart';

class Strings
    extends BaseModel
{
  String field;

  Strings(this.field) : super('');

  static Strings get getDefaultStrings => Strings("");
}