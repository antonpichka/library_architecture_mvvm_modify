import 'package:library_architecture_mvvm_modify/utility/base_type_parameter/base_type_parameter.dart';

abstract class DeleteModelToNamedServiceNPFBDS<X extends BaseTypeParameter,C extends BaseTypeParameter>
{
  DeleteModelToNamedServiceNPFBDS();

  X? deleteModelToNamedServiceNP(
      C? typeParameterForFBDS);
}