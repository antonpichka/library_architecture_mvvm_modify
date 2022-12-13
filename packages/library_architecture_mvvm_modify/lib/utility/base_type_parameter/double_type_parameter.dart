import 'package:library_architecture_mvvm_modify/utility/base_type_parameter/base_type_parameter.dart';

class DoubleTypeParameter
    extends BaseTypeParameter<double>
{
  DoubleTypeParameter.success(super.parameter) : super.success();
  DoubleTypeParameter.exception(super.exception) : super.exception();
  DoubleTypeParameter.successForFBDS() : super.successForFBDS();
  DoubleTypeParameter.exceptionForFBDS(super.exception) : super.exceptionForFBDS();
}