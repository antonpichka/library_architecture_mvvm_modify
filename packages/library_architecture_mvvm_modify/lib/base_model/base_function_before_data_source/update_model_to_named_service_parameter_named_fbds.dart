import 'package:library_architecture_mvvm_modify/utility/base_type_parameter/base_type_parameter.dart';

abstract class UpdateModelToNamedServiceParameterNamedFBDS
{
  UpdateModelToNamedServiceParameterNamedFBDS();

  Z? updateModelToNamedServiceParameterNamed<Z extends BaseTypeParameter,X extends BaseTypeParameter,C extends BaseTypeParameter>(
      X? typeParameter,
      C? typeParameterForFBDS);
}