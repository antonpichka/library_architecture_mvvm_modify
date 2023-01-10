import 'package:library_architecture_mvvm_modify/base_model/base_model.dart';

class Strings
    extends BaseModel
{
  String field;

  Strings.success(this.field) : super.success(field.toString());
  Strings.exception(super.exception) : field = "",super.exception();
  Strings.successForFBDS() : field = "",super.successForFBDS();
  Strings.exceptionForFBDS(super.exception) : field = "",super.exceptionForFBDS();

  String get getOneParametersNamedForNamed => field.toString();
}