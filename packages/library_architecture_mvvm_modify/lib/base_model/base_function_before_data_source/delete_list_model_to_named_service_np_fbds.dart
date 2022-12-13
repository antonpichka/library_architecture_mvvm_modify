import 'package:library_architecture_mvvm_modify/utility/base_type_parameter/base_type_parameter.dart';

abstract class DeleteListModelToNamedServiceNPFBDS
{
  DeleteListModelToNamedServiceNPFBDS();

  X? deleteListModelToNamedServiceNP<X extends BaseTypeParameter,C extends BaseTypeParameter>(
      C? typeParameterForFBDS);
}