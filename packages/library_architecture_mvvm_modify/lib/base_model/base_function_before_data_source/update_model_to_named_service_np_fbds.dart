import 'package:library_architecture_mvvm_modify/utility/base_type_parameter/base_type_parameter.dart';

abstract class UpdateModelToNamedServiceNPFBDS
{
  UpdateModelToNamedServiceNPFBDS();

  X? updateModelToNamedServiceNP<X extends BaseTypeParameter,C extends BaseTypeParameter>(
      C? typeParameterForFBDS);
}