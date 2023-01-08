import 'package:library_architecture_mvvm_modify/utility/base_type_parameter/base_type_parameter.dart';

abstract class DeleteListModelToNamedServiceNPFBDS<X extends BaseTypeParameter,C extends BaseTypeParameter>
{
  DeleteListModelToNamedServiceNPFBDS();

  X? deleteListModelToNamedServiceNP(
      C? typeParameterForFBDS);
}