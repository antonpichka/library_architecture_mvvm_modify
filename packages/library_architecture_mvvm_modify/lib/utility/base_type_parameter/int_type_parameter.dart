import 'package:library_architecture_mvvm_modify/utility/base_type_parameter/base_type_parameter.dart';

class IntTypeParameter
    extends BaseTypeParameter<int>
{
  IntTypeParameter.success(super.parameter) : super.success();
  IntTypeParameter.exception(super.exception) : super.exception();
  IntTypeParameter.successForFBDS() : super.successForFBDS();
  IntTypeParameter.exceptionForFBDS(super.exception) : super.exceptionForFBDS();
}
