import 'package:library_architecture_mvvm_modify/utility/base_type_parameter/base_type_parameter.dart';

class EnumTypeParameter
    extends BaseTypeParameter<Enum>
{
  EnumTypeParameter.success(super.parameter) : super.success();
  EnumTypeParameter.exception(super.exception) : super.exception();
  EnumTypeParameter.successForFBDS() : super.successForFBDS();
  EnumTypeParameter.exceptionForFBDS(super.exception) : super.exceptionForFBDS();
}