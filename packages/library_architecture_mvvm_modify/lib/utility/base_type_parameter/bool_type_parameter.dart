import 'package:library_architecture_mvvm_modify/utility/base_type_parameter/base_type_parameter.dart';

class BoolTypeParameter
    extends BaseTypeParameter<bool>
{
  BoolTypeParameter.success(super.parameter) : super.success();
  BoolTypeParameter.exception(super.exception) : super.exception();
  BoolTypeParameter.successForFBDS() : super.successForFBDS();
  BoolTypeParameter.exceptionForFBDS(super.exception) : super.exceptionForFBDS();
}