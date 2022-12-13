import 'package:library_architecture_mvvm_modify/utility/base_type_parameter/base_type_parameter.dart';

class StringTypeParameter
    extends BaseTypeParameter<String>
{
  StringTypeParameter.success(super.parameter) : super.success();
  StringTypeParameter.exception(super.exception) : super.exception();
  StringTypeParameter.successForFBDS() : super.successForFBDS();
  StringTypeParameter.exceptionForFBDS(super.exception) : super.exceptionForFBDS();
}